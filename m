Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCBA22B594
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748608194; cv=none; b=FdzXYdNImUjWCOIXJuZAhJQ+jE4Ri5/iq4iTXBJxSNrTomlXKTtUI0ru6q2kDeNxV6mIiZhcm1XCjUF8tMjlVf4HiuMk6EoglmG37canYsJdO6Jc3QoTHoHl0VMnh/e5/qQW1mZj8g/99boPM/6CXtM2CUk06vnxo966v8AZYNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748608194; c=relaxed/simple;
	bh=tcBk4HA36grzc1ckVxM09B/Pa9ulUe2Fq99sJ9UC50M=;
	h=To:Subject:From:Message-Id:Date; b=rRhykNPYC5JJu5GVZcDfPLhuUZKVC3BFMRbb1rW1jl530sTVMBEyBelx0rj6h5lqxBP6jfgs4u6c1cvQtkG6NG8UTg0TtZK+FpGOJsG9DX29u1gsvtvpXCzFwpZCqDvJ+Sqf5yfj6/g3huCzWdNJK8Y1XrQYeFmB2mhHBK9+SAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hvd9ll3m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hvd9ll3m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07E7C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748608193;
	bh=tcBk4HA36grzc1ckVxM09B/Pa9ulUe2Fq99sJ9UC50M=;
	h=To:Subject:From:Date:From;
	b=Hvd9ll3mVmcUxsrai3WoglGghs/8xtvDQKdZ3cWxfu0qaW5z7STHwLIkraGfigiFi
	 mClrw2UyTtwCbubFaASMsLnFkGUMG7Nka8Gk3LIklzMA5DYw3OSVZLxLdRHdhj2Bzn
	 OTvOQvLN9NVNKTqm7koB6fHly5U+SnxGMrtkfQg/ZLmRpJ5w1Vo16yoALaJpausZTJ
	 C86uhWIrED4HPoggHNHZhVDykZ52/6bcTCG9BGxFyj/C6FPtXl/FJT0v4jWyi5iqzy
	 TMUWyaVccQB82HGXUgPeu5C/v2nignrHBR/KdFOEiQCpUoiebgAtQbFv5UeQcbKTCU
	 zhud07FViES+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F063C5B549
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174860819357.1440.8411719663732518102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29cb2b2a4f756e1170e4efba4a1628c348cd060291570e8d8056d639d2c6b8d7
Date: Fri, 30 May 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748608193
