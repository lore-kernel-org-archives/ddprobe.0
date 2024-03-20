Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D51CF6A8A6
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 18:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710959896; cv=none; b=cp5648goe59iT/fG6E/MvsmN4hvWzBR4GFUA4HP/o5IplUIEfkPf/Hx3qkyDkNok9YrQq9wwR1j3/+R+mIMvTeEML8KE2NXwfN1dfYJx/KKtouzk8U4Op5h2zELQxI1yhEQ6FD2K6Jr0aFpe4jFngCVeDmcTgD8XAMYPK/SBwgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710959896; c=relaxed/simple;
	bh=ljufz24Yx6NWpjOIxfkw+MsvTEzNop25qFRa0RMpswI=;
	h=To:Subject:From:Message-Id:Date; b=ZI/0Ce/srULU+viXA8jD2TKCaxd4mNzxi4mSJXUUVnSzLhV7rj718jPVW7BRsuKSUUd72zfw5Vvnnp+tLM935Y5ii4iIP2CO/50NzgFURTX6XOyu/JngwQJl9KIcLpg1m3AKkfUWQH9qombCKk6eo/k9C9QXLhb0SYlWVDPM/QQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WDTX83QL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WDTX83QL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70289C433F1
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 18:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710959896;
	bh=ljufz24Yx6NWpjOIxfkw+MsvTEzNop25qFRa0RMpswI=;
	h=To:Subject:From:Date:From;
	b=WDTX83QL04Z0g5vCqSS5uAmjnsZsBC3Om64r4zp1aFsyFx7QHZsU93u4S+nvTOP6I
	 Hly8bmnbpj26OVs/Z+eiaH+AATVXFjK5cB3rVxRZQOTcGtqdGzCOR5TEBtxlzlvNtV
	 nvoyMEGQxi1pyZkdUXr0MlJDRfbsX+POPMMEOI9eMJK5x53VKaU1a8lnBaGWgxE4qj
	 wC0oRuICMIpTK7/U0uc1xEls5Ey6PIYyAc/41/b9yKiEQT9f+7t0DTLdoPQdt+wR1l
	 hbUmSDyd5r9lGZK4qXETtf/DlJgnQj6NTgz2zsczccus2/ndnlX87u5R2H176JCBys
	 24T2fzjheHWSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63ACFC6FD1F
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 18:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171095989637.18173.8636339910995831455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a193530a76953c297204787897e8e7bc07929da1cb9af20cbdb9835e55d15f1a
Date: Wed, 20 Mar 2024 18:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710959896
