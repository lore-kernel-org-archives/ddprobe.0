Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D01A299AAA
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767528834; cv=none; b=j4cTyKNmxvpG/9zEjBcwCpOMM3v4Int66lgpVIuIcRT3PvXEFhkedGLxAU52KfHc/BHBdG0IJCl+PIlCmop6N2qN+Jg5NrvqfMVbMFxWcoUJlCqGL7tuHPKkVGG340cNBSNL68FiipZ3m65eXfcw3C0J4dqWv5SBZ89GMGs9aNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767528834; c=relaxed/simple;
	bh=4h9ytnsAJmiap/1X130EwqOcTPhxQrMUlkJEwu1tVVI=;
	h=To:Subject:From:Message-Id:Date; b=OKwgqVT2b3DbqkQoo3AI8UhHIRCOIUon0I4AeEJ6nMUmj+wrTQ5wQSbhKTv+UtbZLOjfzcTvdo4gkRF6JZREWqVAB06d8d/F0fPUH9KSbYaFLfcVciZcqC6ZhwVqaBbNJhfRUZfZOEBGZHtjyH2PZXu/0FmyzZZ2Vg/itsXQnoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AVfUNRUl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AVfUNRUl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2232C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767528833;
	bh=4h9ytnsAJmiap/1X130EwqOcTPhxQrMUlkJEwu1tVVI=;
	h=To:Subject:From:Date:From;
	b=AVfUNRUlDnyQyAgqmb+YNe0pS68QGVJRkOMi69usvTikaGqvbthWxMuTwfkOJsYf+
	 g5bG0x3EayvMWuR5Qog5bJxRtHnKF0FSzpecYlxJhCGp0G8hAwOZh/Rn7WrSxLo7+0
	 wAJK5vuW/Nmw4DQtu7OTLmMmBmM34NNPtxMyl1t9OG0lNks8w38ZXvrUBNW1kpMwMu
	 gsYqS4UqCgpM0tAL59VmR8k/gmdiWk2nKS/LrpYXfSpXtimojqRjLSrUqphBhyCb0a
	 ANULYZJJBliSc71bV5ELTViyyNBIq9Y+nBAVFVkDNUNCtbHsw08LFWclkfjvbpy5kz
	 ngjUncLyhX19w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C6FC2A062
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176752883357.31065.11593174580045863823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3681c74b5bca0856f433b4a2d712bcd300beffb3117de3f32eb8fe8240333962
Date: Sun, 04 Jan 2026 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767528833
