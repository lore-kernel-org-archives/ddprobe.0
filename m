Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387FD2F12DA
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788316834; cv=none; b=k+8cXrYlzMKgfNt2Ooypc3eWMARgcELAKl++m8pyfgInRZ7eeuHC1dr8jelf46TQrW2oCcqkzT3ZJILrhep1rQKYNWVH+rOUbe+Atoy2mctkg81rGr8JMPKdOqLS090y4Pnz2lGmneSs5Hi8a8me703kSLUd1RDNarACTXic/ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788316834; c=relaxed/simple;
	bh=0FajSOqFKHHNu8lENoeUZUjZENKxUw4CtGunq7Z7lcw=;
	h=To:Subject:From:Message-Id:Date; b=Aghb6AhiVcZtzVGi+8H2SNZB/7jcGDga8x/8t0uQPoytiGp6Jo+JznGduywIz03KyWLNqah3fHgQNEg7xPriIYst8SSK+9/NUy8Ml1Wv4rposRtDjznY4mixiz82mg7aOqe3Wir2LGJVWSItDEP17TUkeQXkY8uPqo5TpVYbSD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ce1mvVf3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ce1mvVf3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7B5C2BCFA
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788316833;
	bh=0FajSOqFKHHNu8lENoeUZUjZENKxUw4CtGunq7Z7lcw=;
	h=To:Subject:From:Date:From;
	b=Ce1mvVf3TvEPGmApw1Dc1ECVyQCE4PEtbMCuQOAhxaJC+G1eOXZuRF/B/c1/834fR
	 87z2DInOQ4Bd9aLzrulguPxUYcK1vqkp8GzYGqXG/xfjvEQcpi9lniUt5F61682nSO
	 pkBAgL5JhP3R5oCBuO6vMaZ90UcsYnRitFnabCndaryQTAcn2223ty1g5pQXdu+J4d
	 /XRdflA51g6NKMxoY+WKmhzGmgFeFvf3aKS9hSlWeS5jQi9ma9cU+MOIYN+bmyqedK
	 tGePDoGZoSs+ymUeqW4mcTpmO45dT8TC02UkF/XfoSHJ2nl3orcIO7dJaAUh0Iy0bT
	 kGITcYzOEctyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6B3C61DD3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178831683368.25873.18182148784679520598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4766db721433d8b20cc7bc52ad307dd54abbae2540c890e32703a6219d5dda70
Date: Wed, 02 Sep 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788316833
