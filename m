Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1541362
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750214994; cv=none; b=IWXphTxUBquGjeGlCojbXacpvrrc96dlT8Hpyf0eMgFwrOJoSVUUsXadxyVVF9QOwMv3axf/VdTXzCQVhg22Hm6aW9vz0CMgoKUc4VXHXC9vfna/t3s0mY1A7ydYXlajHrJ8zZ/tYaG8oglruDyHTWsDrWuQO+dZ0ABwuYrMYx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750214994; c=relaxed/simple;
	bh=eK4fpHr9Tem6Bqfyg/z+iByEqf9r1k/4IjD6CekfTkA=;
	h=To:Subject:From:Message-Id:Date; b=quHl+02fdfMD0i1aKNrQQlDhvs6e0eMvCYtjQeKcM/+BPoYHsnnpmU8YkDDQwNHKn+/m9Lr6PWktHX13LOfR2nSTy4EBQJmK4n0SX8pN1Nw97o8/3FdiiHB3RXNfL7daLBCex6ZaNZR3ylpneIwZD+yQhabscGmE/RxeGs0h590=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CvSFx6vj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CvSFx6vj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D5B8C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750214993;
	bh=eK4fpHr9Tem6Bqfyg/z+iByEqf9r1k/4IjD6CekfTkA=;
	h=To:Subject:From:Date:From;
	b=CvSFx6vjvmYvSRAcafepHbTV2ZPvMd93SPiGFrBPyiDmm78/bUdjjJwOzMjomdkNX
	 bYBVrZ5bFioPyQKpGE2f+tiC+wRMhjJIB7QvKdSFhNdvwnrhOZIHn3EWBc0+5MkZEL
	 vSAX1AXGj6X71Y+iG5mfwIUykGBgytsQ4Pbf8T7Nr7bvjWShV8mZpitYxWy5yNWRdf
	 gYWR3VH4JJ9hZ9IxfNxX5I0aIDKVqoFGeyji1sj9s1U4pKKT07gtOJqnYnzKUog+yi
	 Qxx+/9J0J/69U8JpneuZ7LqlOS2OLV2JBv41MIifXjgao095T4XwnpoO6M3M+rBWyU
	 bITWLyVxe/xDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E686C71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175021499357.23402.17029124180222501096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b8edf19e73b7b654a53c9066869b5a9c88598f557f1b1eb7387a4e2bfdee44d
Date: Wed, 18 Jun 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750214993
