Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FD5380FE4
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 15:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779895955; cv=none; b=N3nRG8okXZNqRclTIK4RkFHmGQzt+glKjtiVvjP24rSULaAXNZJAzlTb/A41H5q+JWSIE3jjCcP8fti36+8KHjHvmJnjU0HhgNSKU/OI0JuL8+p1R5A42MHYe5P/0aOYTA+WhxVmtdk7H/6BcldBPu+1DWTDux44VmCFPA49XLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779895955; c=relaxed/simple;
	bh=rYE8Y8iqXNEcBdJFs7Qreo+WP5yHB1cf+FA8Q5pdOmg=;
	h=To:Subject:From:Message-Id:Date; b=YqcAeFGX3k3cMdTt6tWPIsX6eAuVp/ugfiht+iHnoOJZpJF0pyet8f70kG45QCttbMgWnCjJB+kV0mVMZqrocUAzSRtVjhbtEje6W6BOoHVrBWML6orBWfnFu9XGCVWDSyapgLB7ZC4vZv8RLfJr/nVyjAEzd0PD1yA78hkNOX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FcnMRPoJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FcnMRPoJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE975C19425
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 15:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779895953;
	bh=rYE8Y8iqXNEcBdJFs7Qreo+WP5yHB1cf+FA8Q5pdOmg=;
	h=To:Subject:From:Date:From;
	b=FcnMRPoJkC60gWiZZR/WRo268tzzoF70yiKWrOQDs/TnZAFjlxyT0LlhbIFXmaCtq
	 8rlMca0qtNGlowRJ3K7RcO1CnlH9mCrUJyp4Ptp1iKlW73fKD4h/35LLC6lse8/GN2
	 HZx9XpiEFJwOt7DSn50ua3tR9j9VooBy5Cx5MhX0fEuTXOfkI1SIq3JlGHF09LZKeK
	 InQ97pkkZkQ2b4k6Wvz8ga56Lka8K3bj3H6xeUdKksDByX0LXpkx/j45frLoR5GRl3
	 FRP2RJ+Hz4owU55rX5sIeB6e4k0f6V1+oNp/Ve8H0i2JjrhN9N9eG6S4jvLgB2jTcd
	 atVXh/AIm2xKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0262CD5BD0
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 15:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177989595371.800.1349370661262889112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 991b2e4d39c1f2db014962337737ed0260579504ee5a153b265fa61574ff5bc7
Date: Wed, 27 May 2026 15:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779895953
