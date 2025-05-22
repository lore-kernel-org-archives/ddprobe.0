Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2A926B968
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747952394; cv=none; b=JdxgakGqBzbSUB1AW94AJvVthoWXCLX7gD60iOx9h73Uvov5rBoCjj5WCX8hMSJPrIKTXh+H5aH+LJtJtdubKgDBqquoEZ4kkQx+Sf6O151mKPgWfqe7zLvECjd5TuNq2u0/by90tFY9QQJ2in9k1OCW2lg2za2pvl2fdqHBBFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747952394; c=relaxed/simple;
	bh=HmuOtq3OTXWwliYwExdamyudrVjKLMEfRHWPMuOi8pU=;
	h=To:Subject:From:Message-Id:Date; b=oS66LmXcLYWOOjcbi1JFBadrEnfCCgS572VYtpvwzgtMP07Duqp7w1wwKxdhz3MlCM80SfxRQx6l5Pg2fhoK8Zs+qRvFd76GFNBpIIydRoDlbrnLUl5fB822hfUBUMFc4W+K6OyPQGrnV1DFzqT1Bt8e06QWyCrq+QwuuU1k2dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O0JJcCvX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O0JJcCvX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30D0C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747952393;
	bh=HmuOtq3OTXWwliYwExdamyudrVjKLMEfRHWPMuOi8pU=;
	h=To:Subject:From:Date:From;
	b=O0JJcCvXOu2S3ulUIHnkbYfLT4IJC4rH4ygnUMAZmU4CWDa7mbmhS/tk7y0pqtSPC
	 wGBdnldSzpAILImKzUfulHERoWM13QdsrFcWuzwtLoCpQ5JQ3i+mic89b+ZYLsOYI+
	 hrq4G6fnpBmq9Uq1uutR5vy0h+bZiZeCmQLm54+eln6sOYAhuEd8ZA+gS74d9zNTh1
	 RO7Lmz12E7Zpqzdw/1hbPiCJeStWK7OPoiPkfn8MkUFR1hEJwwBvxYHcOAE2p6Lve0
	 4LBb7L4+CrTJGN2j3bqYZ6IpMyPLHUDDVpxMTUXn1yH67Zxu7F1kyuQ+rVZXZpsuIc
	 dPiSjjudN5PKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B3AC54ED1
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174795239357.22963.9759470555702017085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b4c1c2aaaa81f199c087c6000da3e57e8deaf8a4bd6c504c4120bd3102eec6c
Date: Thu, 22 May 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747952393
