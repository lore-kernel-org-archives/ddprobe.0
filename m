Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30DED31A572
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 09:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780304674; cv=none; b=Y5YXZJr769Yd5fJS37KdCa7EjYgCkDKnVp9JSq+DH/RbcCLkcFd0uLC/xpGFmjWZTzKIvazD74dm26mu9GwXgAQQMSawZ78tRd1CE0J53BQcA/qpjPYoP5yys3+PhLdq5d9LTRn9KYUtdiX46Qnq/OuHIVA+ZlKKSlr9LrPX/mM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780304674; c=relaxed/simple;
	bh=DUgSANZcJ4n55KvC0AnQDocr0fH6maDMLMpraALnHVk=;
	h=To:Subject:From:Message-Id:Date; b=OdVd5P532F/5cMj1H+FVg47s9naSpnYJNse1Ey+eZ7EVXMGDKBK79ha0oQDgrtpAud9wopY8gKV/vBNpXi5h8iVx6gLYwqRdElflGw53YaFmxdTuCFUjL18/JoPEJu0Za6rhxFIDvJ+uOi7zyIg6tS1Bds9gVPXHOwM1bdEjhow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kDREYRhP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kDREYRhP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF71C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 09:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780304673;
	bh=DUgSANZcJ4n55KvC0AnQDocr0fH6maDMLMpraALnHVk=;
	h=To:Subject:From:Date:From;
	b=kDREYRhPuEufohvDb5I0UhrYi5iF5U8RNUatIwe7sZHkH7wLOwUTcN6fCANeElRI0
	 HSQLxqNfages7h6ocn+CHULgGv4YKepeBl+BpFQxh9IRsACfgQRIcIZPmmyW7TCfDp
	 Vfa1dyX2XIj856NuzeVeSuTmj/AVuM1rr/ZulEOU30Lfv/0pzTk3z4OG6mXgxAwlMg
	 /x1T4uF2jUT620iMirvr+BamltcoNLFbjPbWq2awmtIkH6QSEjgVCNOIX6JvqPF0Uu
	 MJrN6qjWtgfXFsl2BNBt8LiXwRinvdLZeK6RRfbi1vKKqdAjRAuHlTcMGKFl4i/clh
	 0U6Zmd2Vae21g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE8ACD6E56
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 09:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178030467369.18640.18080848920134411905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1610b3368c0259cf9f5d65aa0730f8e75a5c904171c5ce352757a9d06de45775
Date: Mon, 01 Jun 2026 09:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780304673
