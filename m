Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6212F1DDC2C
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755646794; cv=none; b=sHt/+rYQvheShMeumQrOXEdsUhheuKcEBdErNDqFTdOvHjHwlVipq33eIs3WXgTazJEyLtDRq90u/+6RKoeNZ+sym/pWz/bwgtSFAPdxJyY2H626JQhfS9TwZqTTOp2mPqWV5RkWy0Bxd8anH0UnY5mpYsrESptnMpV2YMTWkVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755646794; c=relaxed/simple;
	bh=Uvv1sfhILswf6qNE44D4kIvWTRd+EbdkSaSXevH3Bzo=;
	h=To:Subject:From:Message-Id:Date; b=AglkgzZ2sxFJJoAf+Ly0ath7tBiyYOWvqYHeNIBMnkiB1svrAIO/oZLBuHt0zKVGCfh7uALoR2DuhAbbR5ixnXDEIv4+1CWhfTDHcmt4fhoKxmYmUT+Hgfb/v63Bq7zmwk/HOeB64DmBlH2r4Hr4sDgtKAcOkOobC/+kjZ/Kckg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QX1qW7CD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QX1qW7CD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58EDC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755646793;
	bh=Uvv1sfhILswf6qNE44D4kIvWTRd+EbdkSaSXevH3Bzo=;
	h=To:Subject:From:Date:From;
	b=QX1qW7CDw+o7HlcogMTsgZHq2x7xSJ7neNDqHWfANBt/NAwm2kW1C26YqWxS/+ddx
	 qs/LfVpgWIpiyKcITzSt+ZIRrT8ha8CU9ffiZchi9g7kt9Fp9Pg2L6wQmTA2qpGtR+
	 ljtktiieQh85Y/R3PXC1WLyx6UWKafMcSK54smBe9TGmK73Uy/gGDWMb/Dce1SRTwI
	 e3czO/eP50/hjlAEm3D6FISa4uxTWjcJ19IHo+2XVtGMOzRQgH/MQB4JzoxWXB+0FC
	 GQLcvKiDUP7rT1ZayvE+MNoX5KyPIMsFK+3qWL2A08T6OSSk98SOaOnD+se+A/XZmd
	 cx7B9kDV/sYIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B4ACA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175564679357.27534.3553385226087280578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fb9ce0543c0cce5613ac345238c782bca031e11dd42b12c3bc710b42dcfa2b5
Date: Tue, 19 Aug 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755646793
