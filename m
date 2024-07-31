Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A51B3CF73
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722420354; cv=none; b=tsD6EgddmdBP/7sh1tHmkJ76wSuXNqSRxcDyswnG9jJg/Oj9wBIyovX3QizREEjTVS7LXefdp99OuoSdsgjg72QpGoxBCcpUstVObAy4T6t6c319ibdwbWfgzHyYuKkVbpciSX1+MRFm+J+VtNPf8ArA3HDelBdNiAoXO3w1cSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722420354; c=relaxed/simple;
	bh=waxKrtsdZXm2PAn/1kvxbB80J2r15U5xmPjUV3qw9IQ=;
	h=To:Subject:From:Message-Id:Date; b=ZgQch3ga6zyOBTN7HGOQkco57JUAVwSTM1rK8sPYHTzV7S5bhHLe6Vsg2Mao4oy5EvTLimEAhjV0HFJ1FxKkz+IHcRsLQvTzN1K1lMCgYdX43rVPeHWytk877VmN58bQmuvCQOTXYeXOlbOJF13GYidSXcRiNidaiIuc/jdQjJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mtUdIghv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mtUdIghv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6950C4AF0E
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722420353;
	bh=waxKrtsdZXm2PAn/1kvxbB80J2r15U5xmPjUV3qw9IQ=;
	h=To:Subject:From:Date:From;
	b=mtUdIghviK8hqOzXAQvKt3E/3bKcArWh7oTO/LDgLbCoOqP4zdlUIPkLQXHDiX/jg
	 f919E3u+wqr0EIl9L2I2pUfuXZCiwMeqPjkbz0kaJUhZ6KOLtX6i/oTK6R49xo9QEC
	 JKDOUX7QYP2WbFv+B7A9sPB2X9wr64BDXn0hqwUo8+NklK2iwtR/G/At37YwqSoXvr
	 ePuRW5lvzb5qLw2e/TnXRDG1q04mq/K24DMC4RYCk7xzZN9g+CbJCAxCVcvtKvCDEd
	 zsAguGN6dZriZoajh8bBMH1ZKjlLVXKbstUyDI5ygzjrRnscm/izGW7V9MbMWK07bn
	 udO1+QHHolwDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93660C3DA7F
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172242035359.28926.5921694874107705337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50813195043ddc3af67f0cf552f6f7402d12f255dc0cbe577901b2898bbbdc94
Date: Wed, 31 Jul 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722420353
