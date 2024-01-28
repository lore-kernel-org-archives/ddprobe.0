Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E35543C47A
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706470697; cv=none; b=mYuu6uKQ2MNAKeOdiW9cOWUPs+N8K1kuLVu6K4wbUjnjyxkk1uPS3HYvX7mv4fXibApb18eRVoXUJA3DFzcWChn288Taz9zIdB5NMDlDAn/rNwOlGM2p5dA9IBKLQuFyIcFFnZ9RZbf24fAujbKy+At1Fw7dSvjvtXFzBG0KlvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706470697; c=relaxed/simple;
	bh=6XxaTwcervyt1NU1nPq3qmKXuoHa7v9EEgE+LVBoRtg=;
	h=To:Subject:From:Message-Id:Date; b=hVRtT5lqkbmusKNGFWwc/k5b5THnIOOr5rLjNq0fYxYiRiTo/aB8RAntlGL9Llu6J9MPWHTmpHZ/FpSAf3dyiUIzHYoRqLkYlg05r3BNrD5dQ1vv6xVOHjWrmJGGocIG76LSruyWeC/WyBV3wNdx6gnae/aCix45UDYTLYWT9+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d7irGemW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d7irGemW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79059C433F1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706470696;
	bh=6XxaTwcervyt1NU1nPq3qmKXuoHa7v9EEgE+LVBoRtg=;
	h=To:Subject:From:Date:From;
	b=d7irGemWKe1TcrNQiOP5xLgrcU57+qtURsEl70gRIT2Zv0pLvHzjweWt4Pe5ZxOBB
	 GwoqPFO1exniUaskcIGm8XfboNd2HfW5j0r9ngO1DETbCz8dv9c0FhvHNe5UDJwrK1
	 5ipoOGDNQWj0Pa/6j4pRdko9GAVCNepi5tLm14c6NyjkW1A6zt1XCBWPuTEFmLBYPa
	 JKULWaZwIiDKCGkeMmvL+jPup6rAVInEYftQCK/0QdwhQoLxXmNkazELeDtreWGK0k
	 RGovjBQz01El5wHiCdPabmxp75auxmlSTCf3ev6mUiCW49Qr1sA6Ie4kIL5MYSaHXg
	 wQfZZDqgIvYOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E8C4C47258
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 19:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170647069638.8566.8333264353764762692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82cf3e76fc790a935c876f933e82ca696a9a8fd23cd6d79b81e30956d3cc2dff
Date: Sun, 28 Jan 2024 19:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706470696
