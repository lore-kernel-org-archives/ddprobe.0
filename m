Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D08A1F8723
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762659594; cv=none; b=bv/9iCyWkXzH8ams9lNObUMGovY4fRFPo2pgPNaXu1KP8659VQG1kJrRAyErO8Wqun6JLWW/DVdTOn0H9NAOgMQhFd9aqjpnZ7XsJHg8Qy9frdQi93I2Ho/vg2zDEOxwmhW4UyUwDlZQLgflUS4FWmxjjkPHkIG2FI5JwTsa+I8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762659594; c=relaxed/simple;
	bh=YjlMI/+b4xkoB7JeXLPZEDN33Ci32tc1cIExmQJbfsg=;
	h=To:Subject:From:Message-Id:Date; b=pGsGSOgH/Fam3QAQxV4E5y+NJ6CEwqvNt4b45WWzGNhEILdXGO3jnGBqlUVfsB27tNEzVhrbcVoD4WbQaKNaoKM7Ahm+d4K8J6pHNTJt8wv2n+3MvZiEpdwpiKSCBCDQmh5YK2e67kGpmO3vwWBUqAXJ9QWfMXdTi5K+ZhAlM9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lEuEooP5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lEuEooP5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B918BC4AF0B
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762659593;
	bh=YjlMI/+b4xkoB7JeXLPZEDN33Ci32tc1cIExmQJbfsg=;
	h=To:Subject:From:Date:From;
	b=lEuEooP5pG2L6edjDlZb1r6FFRGys0E9u2jm/mPjC7Ur77hO2aqXyGrsIpwfTyLfq
	 kxpTIaLGnDNbYrsG9hmpVNlUoIWWKsFnCX/JAHxgRFxnLwWAPmFENFeXpwlW5fSI/x
	 VlzsBc5sexZXQ3iOBlCZUkPYSmPs/nkcgkbc0L0gzLj4ytJjBMAQisfpabLYs7Qq3A
	 qow2ReqxUBgWoRRfbEJhShcEk1QDE0t/i7IxnW/ygqrHvom5dEyNsefqQylRgHn6F4
	 u9KHLqNuEd/aN6aXk1A2E1WRhOIOa3tUuRWop4ew+8V/64+iMbcaEsMrtiCVvHEp+C
	 oq2/7E4NUHpzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9838DCCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176265959358.29760.15914797191210687248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87a4c907cbe14e4541406b576bdbcc5adfb35653473658bf4bd716e391d4af02
Date: Sun, 09 Nov 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762659593
