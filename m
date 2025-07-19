Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25EC98821
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752935395; cv=none; b=dqh1/jHVK/wi2LLw4iUFGF+ZLMwI3NE35fi7KH3h1wSMbBTONDTh5swbMAAFPyKKg+BbJWZs39PX4FUDoTh2y1AJ1CQjwh/0/Uxh1RpJhJu0tMi9nwbyELwTsB+7M/8YUDG16RVOolE3PdlSgiBx6zgp5O7oCjq0dXRhaCrJ3JQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752935395; c=relaxed/simple;
	bh=D0Jg/xsuSjibFNuE0GHyMeGUl4JQMqI4ryKe8QtHJ5k=;
	h=To:Subject:From:Message-Id:Date; b=txt3ISwz5SIA6wlNfrB0b81/gn8vQZYHOLRL28jPqdjc4fndCSO7X6rEeV2aF/q2PvxTPGqT8J2+kYvcz+RQDKpsCvYEjg1gLeNcDinDNGC64AIX2yRj/g4K5zm4rpMyJft4UNm6NmiRNSc61tahEcZSHRlIo7REmG0G9kick1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=diz+T3pr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="diz+T3pr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A359FC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752935393;
	bh=D0Jg/xsuSjibFNuE0GHyMeGUl4JQMqI4ryKe8QtHJ5k=;
	h=To:Subject:From:Date:From;
	b=diz+T3prGXcqrLY8Y22CMh1TcjG2sOHiT0gUfm7l/zwhmF5J8x91G1p6nB+litaLd
	 sR35NUV3fexmFk6w4T7tJstYs5eh5yYM3vjiPGKtOt1DIiiDWoTVXKqYiF/KM9ySNQ
	 IRYP8LZzJCMFiHjo33kpWEEjlTgFdYh6DebWPRtza97E/TYekqVsumR1Iyq+k85GIp
	 AXwphNrr1RYATw9hcc2bWVjBTA1W6G9efXEJnikh6aUy76kBwBv3f6ooWeNRrdyvTb
	 tFpnBlVx1+2+S8BcnPZJiZvQ8RzPUzgZIXWR3Z3kNzS+EmZRvIwaYI823vz+AmPlfz
	 Hr6xejUK1TfgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9AAC83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175293539358.13015.18025343567411942522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26494b7affdd7a98a0b373f046d84cb834b238e93d615018f196f9f63fa6602e
Date: Sat, 19 Jul 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752935393
