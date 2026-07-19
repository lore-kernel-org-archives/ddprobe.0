Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528D715E97
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 05:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784439514; cv=none; b=KcheAagPKyEBAxsStU0QK42KOCQliYgCUv4BBOjjmkvTeHSmnCCOt6CUVxzm6Ka7WHKGeMI420Q/EzaaqI5xjWuOEcJeJhOOMET9tghKYfytBpekEFVu7bsxsnZosdR9K8yR+RrMy9i0cxiVU+qtUwGTi4SxRCCbdpzK22vUxe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784439514; c=relaxed/simple;
	bh=8T9B8gEeytBlOi5ySEGD25A+Q67VMoGnYB6QbDf5MXQ=;
	h=To:Subject:From:Message-Id:Date; b=toydE6z5eQc3udgKYQsnMMTvKVjR47Iw5l+PGonXrtCcqy+DEoDDPnEvM3LOMYn+iIA5HBES6lof2TpWU3NkH/WkwytKyciIhncMcGR14aa/WkdiVLpGpQ/NnAKcdtyqTM4fj/mnI/CMiBCfj1IBBN3SDLi9E/i7z40YdF6JTYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cEatwHpZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cEatwHpZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1844C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 05:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784439513;
	bh=8T9B8gEeytBlOi5ySEGD25A+Q67VMoGnYB6QbDf5MXQ=;
	h=To:Subject:From:Date:From;
	b=cEatwHpZjAyfRZUhHJ37ONct4YjXs5ts/gwk1pZF8K/J1nI9jCLYN5NdNVemF8SzP
	 AaiDvCFkvTR2cntfBEOFA6sNV40XmN6RwNC02x0zvAI7sIQloQeq3tSb9xlfz98bOF
	 HDWlfGUeLKgFZ3wkxYhHXK+Lmgb2Qjrc3WZDLwmskCoiGXOBMWvOdoZ6gELpa20osp
	 sHjvmHiLvarQg1Ojq91AG+siJ/0HYDpRxHNKWOz+jPNtI6IjSQb4f8880XHstDv66u
	 mhm7AQITsuBJl0sPnUetuTmC9gg1sixFdxnD3lMPpFxO4Q5qmqF4wW8fXNy3X/mPcZ
	 JTX1GzxWUCXTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0567C44512
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 05:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178443951368.840.4402713647658153160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48e6dab072cf11755e921512e52c343cbb5862081cbc1e22b3650879c7249c0a
Date: Sun, 19 Jul 2026 05:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784439513
