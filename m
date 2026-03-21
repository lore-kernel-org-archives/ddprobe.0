Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F134D1F0E25
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774071294; cv=none; b=rfAb8fXGUkoU3CGlpIlUH+mPxZO9o758uBWD75FJMwPtgwIhJVi7BGWeYGAvPSHeNk0IE8ZVDkAFJqMC3Ckzw9SoQFlGFC6P6AJWEpwXjYQDMQNl34nbjPFtZ2v8AEDUeL2imUPwAyfKFxW14HQDk+DoTp5QvekKAcz5XInm1Tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774071294; c=relaxed/simple;
	bh=/rUiCAJ0Z7ro0PNGTNRqT3K+71u876vqbVI59PSVHfk=;
	h=To:Subject:From:Message-Id:Date; b=OC9MpNwW1lor5hpIEWKxWbqFgjugfLjYUUGRRtjc9n208TzODEeqBsBsY9R7o57w64d51BbYI6/JQRcw1uMyKFCBS5nGOS20nhQRhzs18OuJtZ/L8uHKbHF+x+uV3k6qTYWC3c+/NW3T341zp08kXdO8EYBWjKcUYrt1zv+pL/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EKwyToVZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EKwyToVZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F64DC19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774071293;
	bh=/rUiCAJ0Z7ro0PNGTNRqT3K+71u876vqbVI59PSVHfk=;
	h=To:Subject:From:Date:From;
	b=EKwyToVZ2JQNstpXWDc0VurwBbi2OmX9umUQH6TVZHpJjNxocRXgKBEurdWhi8vdO
	 CH2L/GYXvuw3DOsx2OPme5NNgPKOEosLbqnEV1IJyepOpQ87GoDFIcu4n8U99ZmgDS
	 bDI6S6m9LFAB84KyGLxO/RkpA8rfN8aPpxFTMDyWhhJ5xgHGo6jaNONZN0WxdkZWJj
	 NinLbefZ7M7Zsy5E4uvThLMjmULBPhQdFIWnQ8v/twTCRcpd7GCeQiwyUVZ0h/SRF6
	 tCJxNkyC8VALhy3hk+qu9M9XATHo+j7gNURHpD95dS+zzeeC9+7kkBy+XLNwEe478j
	 xXKSTI7nrsQvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9182D108B8FF
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177407129357.12609.4844619512448666332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e48e2b76b1e04ea8c3d324413b683b2e6d697ce5c03ccfb2dbe124a2e0a0431c
Date: Sat, 21 Mar 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774071293
