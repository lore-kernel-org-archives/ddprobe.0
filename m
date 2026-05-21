Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2153E25B08C
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 00:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779321634; cv=none; b=Hyt+F7v007RMX4yroHzQ3ViZTc+pOpiI0loF/+Hb1/Gyz5lCf+pwsPIyGI32haGiWz6IPh6yr6oGzOxHPtRCOm3rp9WP84Za80tvcDejYdB1cdpTEzNsYv8WJy1C96aojKdtUdUhAirubhpKLcwzoXgOkhV1tvpsbHmFMjYC3z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779321634; c=relaxed/simple;
	bh=63lmAWQI76bVbjdD0XgSTjLVMw4aikWMXEGUJZAdq20=;
	h=To:Subject:From:Message-Id:Date; b=u2QRtdz/LT+Y7NYs+3VBbjM87yRUJpLcVI6d1nnx6suFMYZWhBOvp01sqexDSZL9NVLrIdarC7nh+8asjjVeBGNIbyD5enWQ8XBOLxd7PjG5zojXIkgGoesRKxM5aeft9gNwrIKAiVLAZQ4EEOPzvjrRHukB3PNdbARA603ukq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R0JylJPd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R0JylJPd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBB8BC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779321633;
	bh=63lmAWQI76bVbjdD0XgSTjLVMw4aikWMXEGUJZAdq20=;
	h=To:Subject:From:Date:From;
	b=R0JylJPdKYK1jFFsym3MoUqiQB9ZQbAb75oBdV4lJlYnXw5nWHhQOK2DKrtqnoGPT
	 CBJoPMylDtxo9zSMjhCZNZDHAaslXudX4pB2eBkvLpv0HiyuLjpAkG6dKfFYCJNRk4
	 EdcXNMOT3qggiqSXStddB2PeY4MAJTn7YVR8luuR9meEuaCM2j33U5Usqh5OWSq3A3
	 1a/o8vmn8PdpRHg80o4Puu4X3LBn2YABs1XsW4qcpsEACLvWiJaMCidF0/Vi3gMMlh
	 2hwjKoQKt8Z+xX279U166oCxOQsSiFxm1nsyAGLFvgkkUsXoHVnItwHXboGmUmdpDN
	 O4mEzXD3TMnWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB37DCD4F3D
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177932163369.2703.7526186056344145209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 246d5f84fb0410ac5115e14f9353a90dd521da296dcb350dfc760bf4841448f6
Date: Thu, 21 May 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779321633
