Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C2252BDC1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752703794; cv=none; b=pmIc9vzmxEt9xTBuF2ksxEZvWvvMdSJOM9QTOf/L4x6puczr2R8jVOcWXfedq8+dVwRZyVkqfoKy6ksRCS1iq8wjbpT/brrkZsuaESDsRoDEXKdlT3JmFu8Cs8p3SI5n7GyhgbxgTKGDfNNz5dN8SNJW1xexT3wvoAMv2tj0LIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752703794; c=relaxed/simple;
	bh=loEV2kOVGKD+V8aim/IqsTxwhbgySf4hrvD0G68i41s=;
	h=To:Subject:From:Message-Id:Date; b=JOFQsrovpw/9RODMQ29YAB00JovOqONoA9T3ildvSh8GRK+ybrRshkqUFXGywSzZYcYKvMS0rhZnBNi2baOPNqivoEc8Y+mfW90jifltlLfzFqF3SYmRp18FMGbh5AuViTWq73W+dPE1W6um3UsEfRBJ5/vIwsd+CY9KzMVh2qY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pz5JT/GN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pz5JT/GN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14A0C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752703793;
	bh=loEV2kOVGKD+V8aim/IqsTxwhbgySf4hrvD0G68i41s=;
	h=To:Subject:From:Date:From;
	b=pz5JT/GNVTiJUVVq7M2IYhfkgeMcnOuOrTbKdO0jBv/jNfaCMdhMPyM2dXdEPRHo4
	 Sd9VxdLPzgQAg96W/Hctx4yFi2sxZVP00kNNBABteoyItkKoakW05Cd+poNtfa12Z2
	 TuhRl0Qw3zakoZyBdncEr5JdAiqJms+1+O2VcVp7SfCPWK1h/cpNLkOmUKyx8xuZ4V
	 N9p0/W5zmd2aCjJCZ1w3Cne7LKS/lNGaJXdeDgoiT4x2ZS9pZUNhyRnfckHuoXJj+i
	 Ps3mfv6D3EM4DULEpdGCYk8lvXU39mdK5EFKopwjS6/sf/d3FXNDyWa4NSQ9PmH8JA
	 KNUO2zlaaSZyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92048C83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175270379357.23255.14293663633676820755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2a64375910b20e0b4893b820a5857f2c008ec1f53ebefc5a0de9f4ff6dd3866
Date: Wed, 16 Jul 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752703793
