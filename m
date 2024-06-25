Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5940F146583
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 06:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719298403; cv=none; b=H2ahWY/uWrsAT697aT7lfr5x7FcOH4PdRl7WJVVC/ML3tWFSODELDG1FRiBbx2haeVQTFdCC5fPTVNxjYtlA2nXQxYu204E/2ZEdtsifkxZOk6D0qHko6gerwpx4sGXe9NpZlWA17YGzVlauxBL0IKc4L759t2yYudMdEwUsao8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719298403; c=relaxed/simple;
	bh=W8CrV3zrYwRRz4hiLqlyzOfL3r9lTUUgG3MDw68rGMU=;
	h=To:Subject:From:Message-Id:Date; b=pvb/ARZMscQ8jGyIf8yZlBdqQTdpy3Y2Hajn9jzMZQ4UiJgUns+GbcnLJ3KfePdNL6tBBR3Pu24jNqI8OmhRgfJydMs5exE3+JTl39IBCDyEN4mHlQl/eo3ab5bO7f9h/piCepPi/CA0AH00sO84X4I1PE6s1qLXwonvpMSIjEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jXmYGnsv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jXmYGnsv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9586C32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 06:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719298402;
	bh=W8CrV3zrYwRRz4hiLqlyzOfL3r9lTUUgG3MDw68rGMU=;
	h=To:Subject:From:Date:From;
	b=jXmYGnsv0pb28rOG3WyRFkqCqaeFwwP6HJ9E6ctcJCQo84RbzEpoo1ftZO6sFxGPk
	 ofUekTzVkjYCOklGLMYjQeCusTIENieiZEcqnEayCvUS03IZ6JpOeHWSKmURWtr9+S
	 r9nr8ZUzTbn8XMViWuXfZh3TiVKugwfzX5uXyR+y96uyDcVHMg6SEPyc1DIeS4SHpJ
	 BuNty560UBYW7+6NfE5+2ZRyFK+pvXRi/AbGMKauGFX6qMU49h1wKih9RwJjN6tV++
	 G9av0fAxeP4CWwu9rsnCD0nh7qH/tRie1heObo1Ft+pvSODll+oOB8q28EQZQtkLSI
	 4/yIFpsfhcdkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4688C30653
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 06:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171929840279.19155.4229844039120192258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4564ffea327f3151424c620b8003e930f598365bed88a7e8b9c49c99e4bbb75f
Date: Tue, 25 Jun 2024 06:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719298402
