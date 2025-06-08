Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2672110
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749416394; cv=none; b=r2MMKP+uXDM3LojVlJ0HyOT5aCJnZbC6xYqpbTCTDO0EzN1IoaJWTabXkevp4n1ejvxcvFKNDaYLpojJsYh/305/4UHf7BV5zk9Yohtjdxo7ZyuDLHBLicUGyl3mXD0d71HrS2Xzb4cKYsF6Ns2Z8lDY8jz+s6qkMDdpdRtwC4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749416394; c=relaxed/simple;
	bh=pCIuKsFXg6NNNbBZ/xVhTXdwGQ3IZ76CMNkvkyObX54=;
	h=To:Subject:From:Message-Id:Date; b=NuN2b6n838aeQRsIvc52NzyVO13skQjYf2O4eyH5Id6EbZq0Gu5TwNM1Uxhg6aiUppAszm1AlFgcY6JOcblLyQViiqOFoBDISIny2QNRDLRbXkxvtMVQlnJZeDgQzjoLu7a1TWL53OKTMTlHVFRsALQEen5lLP28fs0188eRCwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nTSS6OAX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nTSS6OAX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08EEC4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749416393;
	bh=pCIuKsFXg6NNNbBZ/xVhTXdwGQ3IZ76CMNkvkyObX54=;
	h=To:Subject:From:Date:From;
	b=nTSS6OAXb1OHQBIULeO4Pa9Ky2VZx4T1FZ9C42STDFqExBnCt3JsF1KyI9KcA16C2
	 Tq7QFSs1so5aiRX4kMSIa/MDc0/BmZkWADZ9VcZzoWtaFlNTrHvZG3IhFD68isOOc0
	 OgkyAFhgzsaS/5IxQUB+dnRo682dD/xa3M50Z6rxOha42VKilw50rg4J1OEEVOnW84
	 F33NVdV9/AXukMm/EQa5Y9jbOOhc/zaloxLH4XoYkEFIQBUk/dPhH+ye+8npnAglC3
	 +NNusm+J6DBxe/KEM45tJIbBKhcHvnRd/bsn5gCniqs6/0NY+KcOQhaw6Eg6OeokDJ
	 Zoc4oO9oMBVkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED9AC5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174941639357.20711.10086859332862423097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 018676ffc028eac204275ef6eae2b3612a44b045864949268b663b8ba64febb8
Date: Sun, 08 Jun 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749416393
