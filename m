Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF102BDC1C
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792114234; cv=none; b=lYfelEdf5jXzs+UX6eVH7vMjfQZkJNQw2DJz5Yi3Fv5X3EQPWQXDP7nacUh+xZQ9zb8V8Df0Cgy+AsPUZBC61NELEoRjQDQscqKet7WV1SJluPVZ4Hff+g8kbso70N8o4+17iytbP9pNSB5L/PljRA4V9l6eerhjndU6s4Hs9hQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792114234; c=relaxed/simple;
	bh=6HMtRs62bqPraRDNaw88iwo1ohvKmoRogNd+wWK9qk4=;
	h=To:Subject:From:Message-Id:Date; b=qds3OsOQ02oKuuLYCIGCcTN97SlzFi8YIvN6HH8516wCoGogri8h+/bh9URaWS6tlAI1faa+JXt8+JNm/QerUGP0T1ScjXEWTXCWqfqfeZk5YMid8WJ2pgHDLLYe9RJ7IbEdD0h6BrmbPlIDJqKyR5V/uLJOwk1iWiECpaLnMcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GnuoYvWU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GnuoYvWU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0895C2BCFB
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792114233;
	bh=6HMtRs62bqPraRDNaw88iwo1ohvKmoRogNd+wWK9qk4=;
	h=To:Subject:From:Date:From;
	b=GnuoYvWU/LITl4EfrK8oaTk5Xte8r+n+NY9bQFygoplZVfUOn4DmR53BobZOboea7
	 IdIK6gAU1KeH5+Pw31emcTiqGR8jdufJ2IE0voDKLZ9D2BH7eTfRkKc0Rbh1b7yrwt
	 dyh1Rn0Zk19H0Ql5y8dFqxa3qSr1pXeJU+55ZvigfFUgbc2KpYJZsBNiGzO6OihLR5
	 5PFu4yrWS3BNIXpf0LL7lwByMmMxWOtMPEss+qhDsxzPEGjTU5nuymERt51xZGsKRA
	 5lU0NCH4BYe9wI7DRXJ7/Gr1OjDEG7ejtQ2IIJvsJG6qK/ExVEW0SF9ZrUYlYn8sbY
	 BUIqsLmukntVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF686CC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179211423368.6053.17834997642473444287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19cc0278c98893010e7ca7a896be59867b336a7c28fe487ffc2cd4d3ede5eed5
Date: Fri, 16 Oct 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792114233
