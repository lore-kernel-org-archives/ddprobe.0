Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CDD421A457
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758639595; cv=none; b=HhbcpOzBIYTtqCGJpdLfjygHLuknATHbzCFoUJGMXENysFkJD9CCA/7A7kMQhFiYngPs2hz5qMzemUk+pEeYSmgcn9FyG5y/V2RBLy5ymEDZTZeZbq3xzqfa9o73u2K2CEwDrQsbT7MilNnBjr0QEoSzpUzYiIYqn1BrrSDuj8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758639595; c=relaxed/simple;
	bh=u126wdi8cepYJjJ78+8Btxo8Ihx6nvhOAxzcyEIBmFI=;
	h=To:Subject:From:Message-Id:Date; b=TUVlN0lPa2/p4G/ihIu3VjeTGsud89v2a8TB1+jZ27PGCmco3/E7l+/J2lMMh/ux3rlgeyIBGFOt6S3byVRFQr+eLa+hGrrN+HCRuvofpPxTle+MxcdDD62yAl+Uhg0d6y5oUnxdRZzQVQIw8jroTMmWzqGKvp+EL9qLcmBhEfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l0iCCF6R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l0iCCF6R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FECCC113CF
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758639593;
	bh=u126wdi8cepYJjJ78+8Btxo8Ihx6nvhOAxzcyEIBmFI=;
	h=To:Subject:From:Date:From;
	b=l0iCCF6RJEFfDaOpkHngzGm08NlLLgYCvyYfEx4MYf/Mg7rWGGR3O5Vvdw53fFOfF
	 8q5ehSTP+ImgTI1iTMxGn+4FZz7xaofE/hLb4lB+SVPrT2IYtL29VjfwXNgTTyOq8X
	 jGN1IG5a5m7l9oE9uW4wkyiAin6vFrT08aMIaM1bu+KOF1oi9FlT3wt9cVt38cf7yo
	 JR8ExgM5cGRIOo87ii0fC8wd1B7rm75t0I9WD+6bycXE3J7BRhY6cs38mQDWWqIINU
	 n0tBBTqNLXf26KiVnFPN/nvbgXjI0hN48DkIP8pmV1diUjn1Mt6jJGF7wfxrSqNMKS
	 GhSYR00hKa11g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90128CAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175863959358.3801.7569611169673489445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dde814cb5efe9e52348bd022757f8d80a297d78ece21f8bf62087eeba9bb4d94
Date: Tue, 23 Sep 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758639593
