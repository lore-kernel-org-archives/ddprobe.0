Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D4444AD4B6
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 10:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791542434; cv=none; b=JKMYi5V8ND+3d/949j96P5DL/xSWmovbUmv8rQPSaUHQ9wunMKntKLYljMC51cyq4AbxeNvIqkZk9RDSFQg2Y8EH9PfZkKSTv11hbFA0xEIX+FFMM1bfg9nHgkuAbx+PRWqHQ+uHPyEX+GB9gIQ8zyIriZDyxokIhMD+9LuYxK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791542434; c=relaxed/simple;
	bh=38DJlEIwq3wQXkLSKIB1g6IxO48wQHUzdM9diBYjHeU=;
	h=To:Subject:From:Message-Id:Date; b=AxmkDbektz1YBTLpJXNypXG51oPaRZSw6G4QYaB3pDXn04RwH7ljBQTuhR97uUv1JFVoxYxfiTihh1OUiwtu9FFTDnBFhx+ZxNH/QwO45fRnPmWdmPqXToARC6B9mVQ3jeTde2elLsNMSb4q4i32avviLPauVazFnr3IL+znkX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gi2eOX3D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gi2eOX3D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2E07C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791542433;
	bh=38DJlEIwq3wQXkLSKIB1g6IxO48wQHUzdM9diBYjHeU=;
	h=To:Subject:From:Date:From;
	b=gi2eOX3Djjh1AdaityOs871y77jl22BZOOANUuHGalWyar09UCzQX9/oh+6rbl4d4
	 rFQcNd25PhVszLAwTp6cZaRWzS1+v+ZrtdRBxma6ULM+ZeZofVQkVGQdTZ0fvoSFX2
	 CUkCMcBH7xMpdClsB9l66uDJlMF3xeRAv7LGTvGHEv/B8VnBnB9CaoQ1iscyohRVgk
	 n2UjrkydvrcOaR/t8+bkErAuJ4xi+2GPNmzSkLRQjArH//V9gZyLsrrwx9aC7ECMyZ
	 aeMuEAgbL2CH/g+NhSNWWM2xAZNjVHl3IXPIgZcHj7ZbribsU+Be8Q2UEw/KQSxiPe
	 6k5EcgqIKIkRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB672CA6019
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179154243369.4629.14974107051372600012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 922b5eba433a3ff39cdc75334b8a9c22ad4f8341f0187479f6129c05c5edd153
Date: Fri, 09 Oct 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791542433
