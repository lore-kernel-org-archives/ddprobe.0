Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACEA50276
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747852194; cv=none; b=GJJP+MhkVAlsxWOCp+QXzRWJj4wFnEO70Y3jXbeC7e/SBm21fVXJ5+CkCCBvvdx0WTNDnN/mk4xKmuKSZx6NnLLG1IYZDdJw5ypkx1Iaop2jzZ1a74cdaIKTGLlfGPRpSogcrnP1pSQRsKdosHgBOtbCNzQjanKYhVCVnteNRTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747852194; c=relaxed/simple;
	bh=e4HavJdY3Stt9jlYcFc4WWwR8RsH4XC8bYAKkFuhgIc=;
	h=To:Subject:From:Message-Id:Date; b=PFK2bwcszHlIv5PoDoK57eNEVBnB4Gxk4nbcwExucyzopeftOiwVGr1WTjzEZq8kGO7BuKSmUHvIDAscN2rbqUJnyFpRLJsONhR+kozf3fxjSPSqqP41VzgddKIWTNvaQiGmnhbDsaAuP4XS7Lkhd77oIQUy2znJGfZvFjdoiXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jDx8eZ2T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jDx8eZ2T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1123C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747852193;
	bh=e4HavJdY3Stt9jlYcFc4WWwR8RsH4XC8bYAKkFuhgIc=;
	h=To:Subject:From:Date:From;
	b=jDx8eZ2Tvv3f/6JzWxtZBahFvO643zgRmbfjcqs9JCsOduyMMWanHEUXmnIFY7mB/
	 2LH8nMHICI4Oq53IUnWwPX2KhQydfOv7iHM0CkAfsO4uD1UYsSsRHmPzlrbeHtsO6a
	 TSqHvevqxHR8ImSSXvomjHxxCIGIpm02trDVCmYw2loH7mwyx4yKMKEXtTz0vaTPAf
	 q+hmi5gnzP0eV6A3I9MHIkNHOK7nlXXIzjGze+YXIHUd0Ly5SdQzJ0YaiYHETfIB7m
	 hm2Si805LJBXPMJhCvmQz9OYyIOHPvaM5nqOlmcxbDUYX3ZdlHwjsQmj3LINYRyQoo
	 BbEFnqAB1L5rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F002C2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174785219357.4480.606997378828095231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d52054494ad7d26d74cfd3e44d013e90f7cf179fff20bb960de949fcf1e4b828
Date: Wed, 21 May 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747852193
