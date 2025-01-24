Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 592AD29A0
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737693954; cv=none; b=ItmMxlboaNxj/mcbJSHS+yIZ4afV+IZyikn5TYED1sdWqVHI6DvseualLOXnhOMxuuAxpMa4LEyUN01kiRu6XZMH+wbtW7sJCWhctkquqxHmeBJjULMaHCFaZZlreX+OcvB0Fj92RltWW1I9CxY21hwttqeox82EwU+ST/7c+9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737693954; c=relaxed/simple;
	bh=BV0A7cvx/0yosAU/dBpHENzXvfLn1xsefDcmDoVNoQs=;
	h=To:Subject:From:Message-Id:Date; b=LSNYQuoH3HKmh+jsjB1NNxyfClEhxzwbgDIj1Fn38032ho8ufco/jLvwt9gWeJboDV2RzBFHK8Lhvt6c95ncRR5I4FGrYlRxdRTpAMPgN7tfq8SPmiZZvheZvF63RYDUjRTmNsqAVyEZi0aU2yUo57E0g8xQzovmofczOR7Mh3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MK5US8t9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MK5US8t9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2303C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737693953;
	bh=BV0A7cvx/0yosAU/dBpHENzXvfLn1xsefDcmDoVNoQs=;
	h=To:Subject:From:Date:From;
	b=MK5US8t98Omzr5Epfx8ikVHruIbs+ItCO4+boZDRfvSEiUAAO6SxDkX7TuJmEaLQT
	 p6v5t/2zUcgoEJcLjVGXsPxF3JvdPLirJtwfcHmIPLKj9BLojmfaXVmBnjTplWrBTy
	 R2Y8CcZfOVBlDeJrzPvoXOvtRnYIzo1Nh4e0IIASDhN2mLZ8zrUcIyEUJyvequr1sD
	 K5m+H5hKMP0nUBIKR1O4pGgL7u6LPriimw5dAHS3j/dYY8DrcJ/+Zofb23Ki/WGgO9
	 8d4wR/RsIacTVYpGywFR8GAk9P/D2RVNX5U5wj1Lf5MiCKuSWgFtvhJgdhF+H2e9UL
	 dTTOEX699H6UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9555AC02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173769395360.6903.2408879839296939670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a4d972051b13fe1509dc87839b1e99f0a51a6a11c50f47b1ed2f942d555dbb8
Date: Fri, 24 Jan 2025 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737693953
