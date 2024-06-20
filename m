Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0F3B66F
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 00:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718845163; cv=none; b=dDyMQvC7qZesDreL/zUs7WpbiZV9bvCBd3mnrhpAozUSarbuf/t+jd3F8rsMJpAkxSafnbbeVtgHzUpK8BO+GSBrOzETB3GLoPDckswOMC+hqDf2pFAfCJ3rOLN39e6TQ9NCfTIs4i5iYs9bIs2En+fV5cNen5gBZ89+TI3rd3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718845163; c=relaxed/simple;
	bh=JiOMSsGIxyaYDzRh48SBW/3MPG0tkutIJPfkbyED9wA=;
	h=To:Subject:From:Message-Id:Date; b=jYzfcLMIGa8F3iJjcgpLkoKPI+TTJ25tZl+Lb003yq0j/vRG1s+mQLWJsccSc2kfJNmc7hXtWlsMD3TSIoz4N3thoNR/Eusk5AFGxHUEKe4ORsPp+J6pyleC2HAlFa1NYlbH3IoQ696jnJKVQhnXee1om5LzP7/oEhAhudY0xMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DW2JTD5e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DW2JTD5e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A85C32786
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 00:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718845162;
	bh=JiOMSsGIxyaYDzRh48SBW/3MPG0tkutIJPfkbyED9wA=;
	h=To:Subject:From:Date:From;
	b=DW2JTD5eRR/gaofTygKmrlpPxsnc6KiCKllM5v1vx2d3/pB5Q3LsuznPmhaT1IQ96
	 HFvfvH+Tdtx92IpQbGIHN4v0JNCkglkoDtcoTeVFd+IcEfOi5aUs/DPY8IOPKmLaB0
	 4d9M1mK6Ef65yEHERzUq231T66rnG+yL2dFa4Gb6/I/emdwhzL45cKOFg3XacqFcLF
	 yBox7u6XeCFsMyJHc5RarpXWTTvOKMN/Gtcz4VCfrgYzTE824K3GsWDAgCY0E28BSl
	 pCbvGH348Ms/FDho+d2st2r8D+s/WLL5jFM9ohDUDrn/OxcSR416M2KV1ytAvP8F5/
	 KKNuqSauqMBQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6FB4C27C53
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 00:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171884516277.18811.1867147765252876612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c03c79fb37fca82928d57c2de963b45a8a47e7b079d6375441da05ffe14013a
Date: Thu, 20 Jun 2024 00:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718845162
