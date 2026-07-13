Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4739F2CCC5
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 00:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783902514; cv=none; b=My7/Y1K1sdcjip6VcbHWNzLMrAZNfo/0nzHdxzR91LUf0m1EX9LNN+KkCS5EXMBtdbas0AQ9OPXFVkropjl/xICAeAPCrOPt2/CSP2394XXfejNNUjdSu1tAAtqzhb91u0WKZyv/jyOU9zYHSv0/tVPIzK2oPrh1MQJP+kEPgEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783902514; c=relaxed/simple;
	bh=iuwlEiT0iOB1FC69rXKheiiDxlN7Ms6mIh/lATjc7NA=;
	h=To:Subject:From:Message-Id:Date; b=lWCf5lsbD18w/CkoqXeiEncFEQdgO+tqK0kSVG/obSNOzGZAM85HWcc58pmOdcpTIi3LggIPCgZ7ZpKX9x8j9H9KoCDOL8OhRv9VR59754tReLlvhy3WJq1MgZEuHQbjv14liy9u0LHRJfAewPSJ47R4OBuXFxLFwVdwEfiwN+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IyIOhwZ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IyIOhwZ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE36C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 00:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783902513;
	bh=iuwlEiT0iOB1FC69rXKheiiDxlN7Ms6mIh/lATjc7NA=;
	h=To:Subject:From:Date:From;
	b=IyIOhwZ3Osi6h23uIP00de1xmMulrJ3BgFuYT1gqrPVApDBYGkrRL07XxpJHlMAXO
	 3b+ZCdlwppoYVq5i7ma0ETEYoP26Po9fzLLRk5buXJWLKmvWJUYP81QWGq3Kc/x4u8
	 kMzShZkGOWKtlYceKC6zCf1FJ7OMMQ4R37sn5YP85y5v0k5T8jD7gD6QAft8TVM//J
	 Qt4KtumVnSF64UERB03uuENou2iYneyTIXWt+RO6ofGPNT/nCa59Ja8113Njw7LiQ3
	 er5+knliQ98ESqp9bjCW2tjEEksgyB1UYEdrbi1I7nz4ECeji80EJFAY1aEI7PI/Ds
	 qZxVRcKuHeCKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89CDC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 00:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178390251368.20263.13169231248213076962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ddcc1f0c54b973a4ad7f703caef1498578b99e672f3bbfda9501a1b08e337ff
Date: Mon, 13 Jul 2026 00:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783902513
