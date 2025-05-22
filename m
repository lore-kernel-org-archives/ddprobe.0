Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CF619DF4A
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747936794; cv=none; b=Q2IBATD/xnihs2ArPI//Sx1PvHu1fpVtcVPtGe3YtGjaAcmIFjI1Do2eTrwEmOzbJ72orY+JYy2Y+FN1Z0DU1TgL9TqCzhNL2TllbZ/h92rQ+lXcrBAmRm8e2y2BhpdbX6rOMZCxpghXQ+CUDCHruhP6G8Yp+TvYBlLTO3+gJQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747936794; c=relaxed/simple;
	bh=HKKSwqFdwl3/xsGNfypv3L2ZOv182NRNi4wQKBAnrX4=;
	h=To:Subject:From:Message-Id:Date; b=ke6CyoHUFghr5TkssuNCriAHKjdZPgrHJV8j8D6LTdipma0F3DhBczXQtw0PFZeU1F+nW/DPw+XQXwi7NqEGAJHHP+BlO8wXGW+qK0AjHBHjgZMP4Jg+FD3EGTEf32TZlgKkBmk5s+SdxQQbZ/rx4ngIDx+fj7055Na9N2IHsaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UjGShV7f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UjGShV7f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1447C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747936793;
	bh=HKKSwqFdwl3/xsGNfypv3L2ZOv182NRNi4wQKBAnrX4=;
	h=To:Subject:From:Date:From;
	b=UjGShV7fITPhp9kXshPqcagjS6zcRPolHGY81XhB/eDRKjTP9j0ngsO/gn4jGcLNx
	 tl7cfnuStz8GYkCMCa+tfHj45zWvWw1ohbykAnFillJL3IQhVNgCcDsdWrgToH4ERr
	 6Iz3khT4iGC2O2LzwtMDg8034F2BYDmrQNJG5DW7ha8ZshRxo188dqcL+6VVDDDgt1
	 yVUqGP+9x2sTYO3toMM/K+iApUKs58S+MpQu3bFgcT8KZE0BHpF1kDvY7ytVo4OncF
	 y7Mcb/C/PRAaQVqQrxyh+p06teZiZO44K7Fo+P54IBcD4bp2GNMGKjA7fHceLrmz0y
	 eUdT874snuf5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1C0C54E90
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174793679357.25000.4926689167008249818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3febe39173e614ba30f333d1e6e75713f0963d2c52e2b5efc4831d6719a2d2fc
Date: Thu, 22 May 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747936793
