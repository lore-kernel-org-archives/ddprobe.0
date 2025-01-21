Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3757A129A78
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737489954; cv=none; b=F7c4rlx+nUElyPr2BZgxNADNeB22SdCJnLxXGaNi/PJLTyTuZB1wSGrv3a38Oyv7Llzk8T5sjQTKQ6UwRaJLDGXMrdgsQFNdRmvA56UJj2AEKD1NKbgtvUvy7waBiuWHKdbk8sXV/ZzAn6G6UngpY+2yrgThUPfuhL8ALswAb54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737489954; c=relaxed/simple;
	bh=aEDmewrVLyPSN+Ho+uaNhIKyVQn8gFCMBFlJwjKUbEQ=;
	h=To:Subject:From:Message-Id:Date; b=Q4G5l79jHKJQL5o7lk3byeLBmweMfXNQwGyRgqYLmu9RkN9EU5zc0dott6Z3FWSjXM57bNFknw6EAbk5cYfdk5pOeW/f0l69eh51vl83i9vKV3Dl0c+aFkOF+4JczEqeQK2qTgV6dJUFqMkFumK6u/5UfJgoCP4chnZSvTJntPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=saqTw1+x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="saqTw1+x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D57C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737489953;
	bh=aEDmewrVLyPSN+Ho+uaNhIKyVQn8gFCMBFlJwjKUbEQ=;
	h=To:Subject:From:Date:From;
	b=saqTw1+xKDg4BvPze7ZRMEOXu4WUpudo7g0OkisD4c4QunBCefRFRe7wCYNtaUNJV
	 knd5bj0GEICg7cfr3MNCvQ40CYDjcKag4UJD384Apgmvr5S/kJ2YmcD4TIAS8oGWzC
	 s0tEFh51L4GhNdaEmpW8dA2ywsxs6MnRF6eo1Y9tlDwI8LQldSLVbDONCOiTQJtCKH
	 i0UZrgZuAOfrtzt7L7ZUUpslMqlvOnZ7o3A4+EUMaShEx3TtiAT82jo79qQ+lpDBS5
	 t4GQDFuDumRkkSa6xLLszr8aD8s3i9ra68LQmNVPnmYPmmij3EwTO2nFzqXKrJ1vUX
	 1zgWunzoaGVpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9180BC02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173748995358.14998.1339147673161018149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e6cb6cb20f57799a15d68a4a17d8da2b82320e12585b3340be25219ffd89921
Date: Tue, 21 Jan 2025 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737489953
