Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D9861804A
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 19:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719082943; cv=none; b=IVq3TLtPjF0GXZoT17gdg+s3gGb5fSh8dILVgAuWay8JDfmfGIjJfHlUzfMmILkkNN15BHWd1Etuor2dO/+20vQKnJWA8tVLuMbkul4hiINLMjebkdQ9Yq3+kM9m83gkNhODNRykVOJowqlr+w3vC+aDVc+wgBiMfVcwqeqzC00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719082943; c=relaxed/simple;
	bh=DVHTdOP7thu/JulnfhlIYdSEv8i8cfm0M8O312kO3jw=;
	h=To:Subject:From:Message-Id:Date; b=IPX9g2dniGSWrmoIIvBBZUJkJHiecAOAESBoKhGi/ozgGI9wY7fWxIutbfsGGJGtAfe4tooG6x5xY4s+dlNLZBCUInX3U1yYzmQ7fI9wmt78A0mJ82tQqJPdfQFEmIExHtSYekMDzatG9tioGvMn+6JAglgsxzpizpVXdnJZuOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W9rc6nAm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W9rc6nAm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DED1CC3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 19:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719082942;
	bh=DVHTdOP7thu/JulnfhlIYdSEv8i8cfm0M8O312kO3jw=;
	h=To:Subject:From:Date:From;
	b=W9rc6nAmz8kZOsx2wfwDXRLObPPuNzq20aztbsRkC6eQ3eGjmryCSqrt1egUtppGX
	 6GvxcddrG5YV15i0Rh1uMU4Zp5DPYp5ACA1eLFj66KWI86ISosk/J4OjzrMGArc1yz
	 LNEvBz+EkOgrnnD2kGXth1qkabHgBX47nAzTMqyTQnvYBpZF2uYVfisZfh0jc4xLta
	 a3F1P+laOmm3sx4wO2BFxhaxraCpSt2ZizWBnLwJUz1nZLWDAh+Fw2hSwcEVG1kTnv
	 ZNNhyvzxOKRHpdQKrRvLGLJfKjy0z52CtLS/87jd50lm47fOBRkgGI8GKJDd83pfLu
	 JuXC3YTCqc8VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C353AC27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 19:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171908294277.16729.9989049722837748885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db5e08227443c3b669af84a0778d4605e265e86f7dcb775d32007940cd299343
Date: Sat, 22 Jun 2024 19:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719082942
