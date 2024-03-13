Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE748FC16
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710324496; cv=none; b=E/WhHg5WK49OhEQWYKAupddAdwoF+hPAmgqnJ8hVPQuLlZyqGV5NzgelIa7q+rG66Jb8f6BaxSJDbL9AF7BSQDOSc3tnoxRJSbwy9OqkO7jAnXlSs6nzlofNBGBOAi/oUvDEZGh60RjntIkTGUij8vHWXomcFYc/ssV3/uC2ASA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710324496; c=relaxed/simple;
	bh=BypUXC93e2HnK86aIca5XnXotLlLNBlBO24sj7bIO4Y=;
	h=To:Subject:From:Message-Id:Date; b=GajO9uDogAK1PTgqCkhcUdHixmnGOSeFhpMDw5d4Yx4ebPrSYzkoy5jRmg5M+wehNjPJaRB58iAwaAnrVq5r1K8BKTzRrCbUDMN3THJhNtKFBh56OpYVuQwZnIXd1tYIP+qKSwsP+DtagfgijoLWc3gfy2dJkqF+bWuFV+7BIWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KmGmBL+e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KmGmBL+e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CDEDC433C7
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 10:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710324496;
	bh=BypUXC93e2HnK86aIca5XnXotLlLNBlBO24sj7bIO4Y=;
	h=To:Subject:From:Date:From;
	b=KmGmBL+ewGuGWR20Q+eSMB4xbdY/Ia9e3NFUX1J48gDN85D+pdtrTlw/KibloVX3d
	 gMxXKDvmCh/mky/7KwY7K+SsWjl0aemCO/PcsBmP5BrDWyKHVYDTM3ue3R5ZkOttvT
	 HQAttd1Xq3LZZBaVeatBoc/OPv8r+q8ghdNFgqlBHPbcbR0NwWq8Z6D5Ls5FTBO1l7
	 XRpp/r3RUGS8qCGlZDbxgl1G36qkpVmJJv8W/hvnHrLGgM3faA/Ct49gbqvpAEvlHw
	 La2vZB9Q3F0ACXVCaSPOVVQKJqu5SMkH+yQXh6tdmxAEDof2Q7FpNKjX3y4hK7nZFo
	 6g+ZkZZoUx3eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F7C2C54E58
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 10:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171032449638.19041.4106439177809216782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d83b4ed527082bb244f2aa7162640844683ef2d1ab8a0478cddea9abd287726
Date: Wed, 13 Mar 2024 10:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710324496
