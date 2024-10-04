Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D2A528F3
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 04:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728016554; cv=none; b=tJsOzYCVecrOGaDVlmh5yeKyWPfTTbsruo5j8P4Oo7cG6Wdcw+RqUyc+381fHkLFuAKfC78GjAg+Mlrd3VNTxOZouxPManXXs8QP0yq7vP6yM/jh0pii7AKbsZPsPeCPw/BFfVxbf7RuJuSRO/QQoGBDcvfKj3JsPSx6tah1IPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728016554; c=relaxed/simple;
	bh=lfGkO8YRT3gXgTOyHeEV4D8xBRKFzXUTL2cZc0Ps6cM=;
	h=To:Subject:From:Message-Id:Date; b=oZzX6HL0/Y0WTsWyB2qjQGvEYNUa6KIkPaKFOJ5qPTPQqfOHy8kFNXcUS8qIGPXBmmX73NI7CtyPVU8Y20jeFSiZYw77GWUYeJx0XARFGKzCvELXoStsgGIabniIapiopp3UavVUOoTUMo2oudigU4D1gKcMmS8EWg+tW3FysXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=THvRxxLD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="THvRxxLD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16F8C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728016553;
	bh=lfGkO8YRT3gXgTOyHeEV4D8xBRKFzXUTL2cZc0Ps6cM=;
	h=To:Subject:From:Date:From;
	b=THvRxxLDXuc17/y7ERbFYeG7yY0fAZ9dE77E16IMJcPG1xMqyDLNeDwTvZwOfjGia
	 pb5C4rOHK4Lwc7l3P0hvtZBYZdmnPFqpFn4HZLrC3R0FHhfUwQkcgYh2RKWvra+xze
	 ju8DV7EQH6PemYdNz37mW3c7pxBg2HPGIBacHTrJ4gG1xiFWv43ij2he1yyX8dOUB0
	 0z86Lb/YuPgT+e/rBe67fR8WwwgP30nfjw2q9aPWMOHMOaURrvFK514l5ydGAFlYdy
	 MxmrmyQ8qVmTJ6YGP2T/p671bm+W3JnYz5jfaQTu/DpVad1NPUl9GKyhIyk6Kju8Ev
	 4DeKe9NOgzzbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86E8CFA749
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172801655368.23503.10747334982813615349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a953bd3dc3b4a829396183f6506907a4927a1a2ffd7ed54e574c5fe7d6a65ee
Date: Fri, 04 Oct 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728016553
