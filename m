Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 096393AB476
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 05:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784526515; cv=none; b=P5Ogfa48p27GeQQF2NpZOh9ypbgL4SMUJKi6oFzWxdM5lqnPbLtYXcBr7AW45robhO9VcouqW2USpHCufWVa4HdCPcvFTvF/1/vqUca+9RHS0knTX2dYGZPK6LYRtp+ljp93HT0HZXZM+S2pRC1L1XTSIuWK4j3UaZYUyfc2E14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784526515; c=relaxed/simple;
	bh=abKNVUHNb9PAoMRBpAd6SQCivZy6duW6yNH2ciat9WQ=;
	h=To:Subject:From:Message-Id:Date; b=FdC4SwU9Bk6MsQqFzA6nVtlyDbmsb59yxT65MIIPvAvugZLaA48LQnR4kmFeyZityKOCxYRvCNGVy+FzrZEhpt7KGgCZ+22k+psgvwMzCVFmspwlzsAA20RkBQf7hC8NpDuA4ExeFk0/YjcMpu3waxp/3Q/G+ZR89254VFrro1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZzQ1x5h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZzQ1x5h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF175C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 05:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784526513;
	bh=abKNVUHNb9PAoMRBpAd6SQCivZy6duW6yNH2ciat9WQ=;
	h=To:Subject:From:Date:From;
	b=HZzQ1x5hGJ8qAnx2Sgv57PVbCjJH7sst//2b9OfizoMOZ4YL15SoJRAuaY4qGoToL
	 9soLtIVWZ4LtpTWj/4IDXUHGKRnzDhQoPiVMYSNSlk5hDYLEciyi4WoUxxGHKplEQ4
	 RC81K7h9S73CdtzMLTj/IvXFxGTucPQcR9BgF9tbSpK2pPKyHVI2mKzbslahWQnIXM
	 8SlOMd2wseZ7/5urg82hnk6r+aw8wYVEf21wjgZ+kGfuWdiilJ7kOCfPA2KDXuapjA
	 CPSM1+2jU/Gzt15mHhXiPNgHGkOc6ancQh8U3qEc1FhXcdwPfhc7qtSQ3+6XFDuBLn
	 V3WRYwJCW4LVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAD9C44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 05:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178452651368.20341.1005483813891670133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7673eeed503ec95bf397d7a1879003d18cac73e1f2122f248b12f03417f73215
Date: Mon, 20 Jul 2026 05:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784526513
