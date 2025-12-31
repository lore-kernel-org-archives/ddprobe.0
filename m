Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C0D1DF27F
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767152634; cv=none; b=SHZrGpJcMELZtWPjAsfi16sPRwHlSuFMqnlje1c9R4osiIGv+x54zbPqHBWDpC11fJRRVMGVDIJ2mVgORJHUBdmBvbdz+UeJP2LEDjjW7czcLt4npIGZSH5MXLmd5pZhA6f4ivsUAZswRcY7D/KWHGznZiA77IrqsV+qlXnr6E0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767152634; c=relaxed/simple;
	bh=OmaummF1fR/9zV6sygLp77dSMRO5ez74MpAwvHanevI=;
	h=To:Subject:From:Message-Id:Date; b=nbb/j+Mwr5Xj84kEhEuUBdv/7Xn/F7FRpzz9u1u/XdQZr8eBvKegZQ+nhzsi+A8S7nNtfhK7auaecBOmO1D7zMT1dt8PXrYgp/po6MKqlsJ+faBtIX6I9cdQQXit7QFr5Q2QlM0vkAclHCVujr6048ce9lmeqSav1s6VfH0xwj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e9+NiE0e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e9+NiE0e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F69C116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767152633;
	bh=OmaummF1fR/9zV6sygLp77dSMRO5ez74MpAwvHanevI=;
	h=To:Subject:From:Date:From;
	b=e9+NiE0eSaRrvcInonJltgMk4YePkyncW5YZVQdF1m4hhClYf3PKrScqAvxyjWSo0
	 9s4fdF7pw4vGXYEY59clA8spa53Wm6eQqpcSLx3sQ6VrV5KdrxrKsa/IfVkF3eQNek
	 1ccWVcPQkFIRgk5ne8tHSd8Gc6RkOgkA+7ljJ22XRfBRa1VOpuebxIBuzPCOudtxQt
	 TdoBGABptTFgQ7HkKamq6rgCBnwETMYEQ+S1A0Q7xHjJgiHSyUa3HJCKJsdkHJ9lWi
	 mhmgn3AhkUiztAG2QdteLKSMyVcTgrlxuGWDRoTdfaiJLq3qwoM0FF/RBuakrWVHwd
	 Ee29XIOAEIZAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E261EE57D1
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176715263357.32092.3220277975212477143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfb7b501707df9c36ae2b7e6bea3ec14e69b4d465c2c99087e131217b46c887c
Date: Wed, 31 Dec 2025 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767152633
