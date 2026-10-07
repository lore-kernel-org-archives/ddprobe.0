Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8FD36A341
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791399034; cv=none; b=hxtCJph4JbhyrBIgOwLk80laMWgifHvZmuUKghYLsaQxx7hHoHp3AVlk8QpJTHtL0kd11Dhca8SqahEoTLpuLdRkh2MxMKSmXe5AgBOKQGrZs7rlvIKnEl/UZx16Ezl4P4R2dC/JjPoBzH/LgtUhw6LgPRLNmXVc8bI8Ihvp3a8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791399034; c=relaxed/simple;
	bh=NyMrlZXl61+bp/kZyhPf0rDGF1qSprALU02X7UsDViM=;
	h=To:Subject:From:Message-Id:Date; b=l8UUKvnga4CKzzJ6F83gQc9RsSGDgiL3q9Zgg/dcC+tXftRKTHLj1UuUOERFYj/Kdxn6Ll9NoO4AcCGgi08W+sB16/KLwMl4X3f3sNF+l8l0a7ZdVZVvN/3XVy0/DitlkwZIAHrrRowYW55DjSq4mS1aOLG5wwbCdo5wkRtlxgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Psn0PQmC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Psn0PQmC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD53BC2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791399033;
	bh=NyMrlZXl61+bp/kZyhPf0rDGF1qSprALU02X7UsDViM=;
	h=To:Subject:From:Date:From;
	b=Psn0PQmCC+5hLBMCdLGqcm0Hf7TTZW4iaJNqoPUgZAnQr53Yk550rve2YcvSklmW7
	 UB7ndrz/QSv8tBGugG9B0c6SFUx+3j9TQ6SgYO+ZgD+AelZt7YqqE9/Wohreecqstj
	 DEcde8fX/0Lvq+dl3wNfNIQni5PYJVY/5p5jIXaQ+97sp3ORfcDMwW4fQrqnMcOM6k
	 KonytAqbTw9m+Xr60G1I5eRRA9Lec09NkwVB+razu8E58HiwLJYJyZSvN5/vMUl5pP
	 tIp1e672eI+RbdUNFb3vB/j6Cmjx+cBgUQ2BIYVdtHd+OZncR/GN1Fvj0oz8XFmdnH
	 W5wSVbosv7kZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90BECA5FFC
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179139903368.18279.9441943223551037102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbbf4fe0a5eb5245e8ae4ab479622d97f4f08a63f76f7db44c97defbf0925289
Date: Wed, 07 Oct 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791399033
