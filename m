Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E09ED1A38F9
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757881794; cv=none; b=oL1orRqJLYBoLTT5+/PesQte2uGJZFKplWFSIgyT/53VW/IUslcZPIuBTWa+UwV5dkfb/oxUKkWo6mtKfEE9hoTTfg0sHyVrIieNPjiUx17mJbURbdsxmK6HK6mFt6mVue+YbCCuBsNndhVlr7uyfCmKyZuoyRbM4RkYopuFCZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757881794; c=relaxed/simple;
	bh=eIEA9OCaa8DNrZo7JgCot9ebL4ZIG+ZH0C5m0hxTktU=;
	h=To:Subject:From:Message-Id:Date; b=UxDuxdsS61D5ob8I9TsGl/RmH9p271pLAM2JNXObL7BdGOoCKJw7K9mJtc8P4NKwTujmYnT4FZB13yKDCNLoHHymVqqAQ1luAm6/0kphxm3qNnz8+kfeJzQlCata7Gps6WBCHzP98t4dgM+DSLAb4hJYApuTru/u3ST2eEJBmYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IIJwW2UI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IIJwW2UI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76A5C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757881793;
	bh=eIEA9OCaa8DNrZo7JgCot9ebL4ZIG+ZH0C5m0hxTktU=;
	h=To:Subject:From:Date:From;
	b=IIJwW2UIEKMq9yvL8+ybn702AlGiJ3AcUzNh99/KNhwmjZT3+A2tp7EbjS1bM7IGZ
	 hAx0fw6dF58bsBGBWG4cI9esTFLABT4DvAZv0iFW3UTaGvIHmi9yn7RGSJZ3LLi+5c
	 X2lk0WBWCLWHyBKGNIsP6Q7uGpaa9YCQDur0cxdFAsAibZoXuXHv7SmfLdWuAIvInG
	 1IkUvV1FagakBBYvEePSo+6H2A1RTTe6Fj8VqiCrQ2Hpxrg5vN+2r67315EUdTcy0n
	 E/u+U0KuUBMmJJZlsda1ecw/6qwkuGl56h12XU4gtGvMjSun0Mb5XXPjD0AVkUdopN
	 EfmaiN0w1dENA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D71CA0EE8
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175788179360.13494.18302041263928762540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19a8d284790c40bad9684847c16faea17d0e03734900d2ec1f70afdabaea621c
Date: Sun, 14 Sep 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757881793
