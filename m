Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337855588E
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 17:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720371983; cv=none; b=hPU39+ptmLlppq8+FOoTGQ3abqVLWd/Sa/2Xlbr2Hb6LnGUWdYBErmQHlVYOogXYsm2Xnj8raI2voMDu9X0TVPwCFfw4pn+uI5rcWbWTSWWy7w1Up+6iM7XQk/7ycYoXrZL4y88pkp4QgZxtWiyQle79U3E0FJnp4ErRQq9ZuaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720371983; c=relaxed/simple;
	bh=6PGpN3kOweFCdF2FDiQ7+xy0RMFrM3ggZyamjHnMhDU=;
	h=To:Subject:From:Message-Id:Date; b=RGwbtw3ApaIWObcl6jdyEnLU0Q+vtIH7MTgUh7Gi43B7URF+TGMmaCFKr1V64xvLPisnsC2qhLQwFefYE4cKh6+XYGrJLi5BmofzKW5f65l5afUxVtdWHe2nwSMms88/Elf5Olywh3v/pfotDfWSjOPEEiQ4Pn1o22Ylr2NTnxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PqM4+3qB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PqM4+3qB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA9CC3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 17:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720371982;
	bh=6PGpN3kOweFCdF2FDiQ7+xy0RMFrM3ggZyamjHnMhDU=;
	h=To:Subject:From:Date:From;
	b=PqM4+3qBFusrGhU65GdODHdP3R/LmroWJLUIiG3QWAksCtND2RHrnNnydZe82NC/t
	 LU7f2npdaPIVOmaYFlcD0WaubCGKJtaaqNAdrwW9QULqxRaPZhLBsGwfcW1vy0cmtP
	 lehyU4xZ623HLNV9DDKIB3PQ4sYOWzkdfSiVOMcogswws89ZktYJyphISpgNzRaM1P
	 RQ0IM9H4zDvRHbsXdcVLzSZPWTZXrdazM3ldYzF+f0emBxtxv6mEyMuyzq5TT7NE0o
	 lFYQjXY4Ya+Ks4dRkUt+YfpHBKUagAQtsTN8YHlq4akfT2L7DFtqnKzLDFE2EJwHv7
	 QSEL8bvyCPVXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C09D6C3DA44
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 17:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172037198278.7769.11180743226010596293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44cb3d75e051615ad4304d4ec0018dff1159683f0fdf4adf986775c8e9801bc1
Date: Sun, 07 Jul 2024 17:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720371982
