Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327832F56
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752111594; cv=none; b=aPWs/q9VCbDhr4WnX3Hm2C5Qlsvog97GPEcvFqGBXgDBExDPoLhDvDOrmMhuE335ZpPTBnjywW8lNZtag/CQ/CCydSne2cw1anD5D1ngwrwImYT98hhZGV2T5RSk9CC+4dO6P+DR/9l8Kfsr/7MPU7z2/9z+4VXxGGGsdcqfUmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752111594; c=relaxed/simple;
	bh=ObKmQU8dFlkwivQVQRJkKDisqpZEc73wphmPiXHNPXg=;
	h=To:Subject:From:Message-Id:Date; b=CwE8tz+OwZEis3Ut0Rrt2ffPGG6ipeF0uoQtpxUA7m0pVwXj9f9qSZM8JCDuQqyS7P6TRyrRIfCUcF3vtu7M4JHBaWI54ZfT3UMRoHCiJ0SaCOkoh05baDUQcZc0Hzg4DNiq1NGKkIPPHXsXR36JVf0hErSn3ZprsmZvu6LGavQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tDCJCE8I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tDCJCE8I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DB4C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752111593;
	bh=ObKmQU8dFlkwivQVQRJkKDisqpZEc73wphmPiXHNPXg=;
	h=To:Subject:From:Date:From;
	b=tDCJCE8I/huPhcMkGMa1fuuT9ff+Qek6H2yeQUH/GVKF6h+NH3khm47hdDvQFfmkF
	 nbjL7vGc1z89NharRkEFF9J8ObMHm6+kFQKR09eBXAeptZZTM3Wqwl+G4Q0+FPY9pH
	 ebzTRtIPLF4oVVVSsuRIi5X0yocStQwE4PVrpdy/ZgLZRWKsxd44mYzrxDySAbhPyL
	 JIj3e+udki/9GN6lbYl7Z8GTZ01lwAQdVG9OgrfZXFQDc3WJLsiWTrZ7ANvbuWCrRk
	 2jD9SLTQkkopHjMPOTPZ63B22B6NQFJpAfj+iz0xCEFteSQR6O8u3XxCORQG1hsvbT
	 /1FO1ebamvmmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F68EC83F10
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175211159357.5314.2229301947870766921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa0541f27667496dd20390b293d6f69bec1e6a87ccf5b03882ca7b6eeaaea844
Date: Thu, 10 Jul 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752111593
