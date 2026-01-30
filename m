Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208B723D7C2
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769732634; cv=none; b=bqWsn8vVfi9dEk8B+1eJT2zTPb/ziO47XAzmBYrr2rV30aAkbr/ZiQW/aSwkwtMpneksr+Hzw2AlRy3GL2wua6xr5H1WjTA/+BHmp7X4VpDJoU2GwTUelNJwQYgmvJJu9Rkf8nhzK7osXIy5FIft6DrVwlzyq5gmvM22qbWmxMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769732634; c=relaxed/simple;
	bh=7t9qmb+HdmGjH3/KtgzmpbEitJEzFsFZDu/atTYV7T0=;
	h=To:Subject:From:Message-Id:Date; b=qa3xkwYV6cV+otReFt9hQ7f7lQVI+ANhBUuejDsPv6QGIx8S9POL67R/cMl6IHGFAljmqh9z+cJfYalZS0F0YtHbyfm+dPgpE5IpNrZy2LPSk91Eo3ONTq3yAUM7yPE6ufae2/vH/Kw/Ov3f2eZ8lsm/n8hfmHgTEGqiVQ0Y4PM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l2GkZojo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l2GkZojo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD6AC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769732633;
	bh=7t9qmb+HdmGjH3/KtgzmpbEitJEzFsFZDu/atTYV7T0=;
	h=To:Subject:From:Date:From;
	b=l2GkZojowAbgYmTLieXpCx0UZWj198BedV74+jmuuJ0CO93ESuOYdPYRuUtz0NYFp
	 U6zcV0e5J8h/sshwrajRvMnU0weRY6aI99W5LMkRKEdKsX7bNZEndizEgUuV1BysEp
	 7jkYWdzhoTD+zg+eEFcJiBFkmJxK4Jx6kk5kolpoBrCD6hIlVcbszdyo8494TLzPjA
	 NFEdToKBT3kyn/ItTHUCQj8es+r5HFT2gkCPVX5fsRK+Or7HiH+xqFqKUQmoHZU/RT
	 fZggHLDWTmlhaJhTr04IZj2seComnSAae2iNlRU8nmv+PVPlBOSx0xdvxX7ux87JDP
	 lmjwTXLsJfuIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D0A5D73EAA
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176973263358.28320.3501424005247046580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 800141a83c6540e1b73afeb2a855036763136c3fdd62d0682890ef62635fd4b2
Date: Fri, 30 Jan 2026 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769732633
