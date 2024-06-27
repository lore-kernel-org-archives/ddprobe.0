Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 768C317E9
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 00:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719448403; cv=none; b=ZbRijF+4vK+doqnyv91jzRLT578oLGxBV6dxLuSEgL/FMkyWM3mX1Rk1pdo3BGEIHpVzXGbLYwqkxXr4ZR4Ey5Oke1ltVvzNS3PCjwSTvs8atCXNaKsAuLSKfEuh15li+BoK9LfGUx1dIOqCN4SEmEXVdh1w4ZHmtrkDSaoYlDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719448403; c=relaxed/simple;
	bh=C/IHUw9El1dNt7o2VQb2UJw7T3ndw+7eG2FLrV5uNjQ=;
	h=To:Subject:From:Message-Id:Date; b=oDZEfxRrs95vIbJF4IlCJn/Pp8RFlUtVjMyhrOeCTLZHa8c61xx6n1BoKy64uo0+cEk7WJF04JEVliOz83F05i8DjF4l2CP9pw41MJoeN1lFD5lyEruX1vH0fT/IGwlWxWeGmLuMfDCebPXFeBVBxNAHRBLRpayf2WV4Sq31gMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SgnuN1Q0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SgnuN1Q0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0E26EC116B1
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 00:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719448403;
	bh=C/IHUw9El1dNt7o2VQb2UJw7T3ndw+7eG2FLrV5uNjQ=;
	h=To:Subject:From:Date:From;
	b=SgnuN1Q0C6bLsaHlQheFnogtyMIE18yhKLagH52M4U2UnFNdYiFt/VfpPnh9SKwcb
	 U3OoCotqnBxmDsjVHOY2N79e+CeC7VdldrvS4BJZPGuIKOs3SMNPl7EvPkJuEh7mmo
	 DWDZ1F8N3y/lFPlWoorik+jl4tFO0KweYJRY0BGGtDteppbfy90e4UhpMCnvXUVDH3
	 uSwoUp2zMKFEAYALCj2yVtq2X2DbYTwJN8rTO+GRGNsO+IQYkfwJVYwLBaMlZE8Qlk
	 NYXKJgYTHDHDHMREqWrdWDtpGkBIuqBgQfbqCNiUzRzhoZYOO6rSYvWNpqt4DIYvHk
	 nquydQ0RPOEfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCCAFC30653
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 00:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171944840289.9000.16931929749393421089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91d2fef797777475c43155237c7aac2a2bc3e62ee4cd5c9047e4373042f44448
Date: Thu, 27 Jun 2024 00:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719448402
