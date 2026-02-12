Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7371957E8
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770900894; cv=none; b=mwZcbAIc1Pt5LPOPbPzYCT/Jlnpj2TcwoeHVuaU4lzuzIdyA9KFilL+mV6o0rCCoI+w61XcY3p9BywEhMuNj170/eri0r/GFMA8xU6s54/y6YkGYBUte4bzke6blDhSzyKBGj9CLp2MGhGT73nSY2Ofiye7TTWtXQJSz7loRZe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770900894; c=relaxed/simple;
	bh=iwmFYEM+kwTKAuwRag+5EjvdyGE2hu/Ny73DRZ+hU6I=;
	h=To:Subject:From:Message-Id:Date; b=bsK/cIMbvB4x1CBJ2l87VbZSKLPjZM0NtnJ5bwJcOgEltn1tmddGBJenRX6EVfOVExiSVsIjp1vP0rIRTXbvaW4GVUHPdqVAyos+n+5MEaLP7vgRbg7+xfTfoSB8h+Wn+JzaukQAtGJVg6HI7Y4SWDHPj7fxLKY+mvwApZEcJAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sDUZjNUv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sDUZjNUv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D5AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770900893;
	bh=iwmFYEM+kwTKAuwRag+5EjvdyGE2hu/Ny73DRZ+hU6I=;
	h=To:Subject:From:Date:From;
	b=sDUZjNUvWYpMLeyAdZfEb9es5pX22tuEgACQ+SgZYUoCkIjdqOrL1SGvhbBuhqAq7
	 ivf2nVGat9QJ2N4fl6sBMPeWIC+8Yk0P9ibioa3/XrnbW7dqsP1y97ZAZXF2eunBZZ
	 q5wvLNvgKI6BrrSoxoRimubLVHBz+nq4gg1BHnwHrZ1YmZ64ZCzdHrIXpCOFI44x2U
	 NpnCFyKffm/QBHy7xflPumHJzP1pBdWmuf1ko/Kc4xGffMC40uT9mKkc5XNFm5w0ra
	 gP8WcVR/RLCRS7ZkTDmC987HAogGofBZiReCxRhtFzwTEW3vq+QoCzIv3D0Bh8iZVo
	 bbH2HpgcyXvrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD35EB491D
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177090089362.10074.18315666095953012354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab33af5092602fbf38d7a611f95a1f6aac7689f678361d3c04900caccf30b949
Date: Thu, 12 Feb 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770900893
