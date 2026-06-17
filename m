Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F8730568E
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 10:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781693794; cv=none; b=p+MzAP1cGvTKra1n0BXmoO30QrHdtcAgca6hlAA2dFWtmK4Vsw/a/SPihYLWkiQJIBONgSMvD9ukUFwdZuL3gb1W1BpUCAj6wjVZmY48G9r5PDQnDT1WedG+eQEMGWBS+9/Kss6OXuj0b6n/MNRkUzb8sVTzhy6icPSaF8eheOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781693794; c=relaxed/simple;
	bh=juGhY+7YCLKHRgQC+or7oZw3ZSThg4NsJIZbuG3gRzQ=;
	h=To:Subject:From:Message-Id:Date; b=ALB9CRliBd0gv16FMdlj0XGS7GfYfoBuMWNJz5SNqNwKLdynB4Xulu7vI5nUD7wti7t9rOVSrtcBm2a4VDQxmagpRBrTtiYdjSK0qQ9PiC4jGOdcLeOD1AuVdcGxY0v/a1Z9Vbg94i+FrWB9D6in9GJ2rdhSbJRBzXq07jxw/Uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h5WJn8TO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h5WJn8TO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CABBBC4AF0F
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 10:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781693793;
	bh=juGhY+7YCLKHRgQC+or7oZw3ZSThg4NsJIZbuG3gRzQ=;
	h=To:Subject:From:Date:From;
	b=h5WJn8TOmwque1OXorFNtMXrBTIrngrl9cCUbizNjI78Wr6tniwuKmzYpwIatzDHi
	 gmc3weehSyGUrE/Zplwe+qnwwtBefPufuNYKgPYrCRpk4fvjPED3zYyJ/ZRqePKvQ/
	 nKN71A3Ag1icuzcSqsrAK3UTVRs/CDAZtFMRolo/a16HBaoxXbcLUKB/VlOUWeOuP2
	 TaDwS28szSJMWF9oUSgXTybHXJIdqFmHTbFeXkZsGBhUSV9NujSKqvI5ePKSyLrm7p
	 Hjy0xx0ygI4bYAJeFx4/mtXNVnA9JSYSeeRwBi4m5/ltJjRfUVTg4URgA6uTs7ZuSF
	 THJ6+3ySqLSlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA31CD98E2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 10:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178169379371.22405.18063912714484636768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f916cfb6dcafce6b8ee5aee2050d9573979985a510478b67c9d93f619d8f10b
Date: Wed, 17 Jun 2026 10:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781693793
