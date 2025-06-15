Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBAA322A
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749952794; cv=none; b=pb9CiLY1vUUbiCzKHUM/xJfBuNKHutu1xGG6MPDRX12hqGLim080TyNrV+OHaP/CFTTlsZB94qf4rG7NyNGLCnELH6L7AbyM5pR5PMcjn5e13o+xetK7K+2jYTt1pPOv+PNtsoFybud69/KUQXO5s9SIA/t0jLE+LNRa1xR5erw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749952794; c=relaxed/simple;
	bh=Wvr/uAiPiDsgo2hqiwrsG6BJ8x9MgpahtntxsKsiNKY=;
	h=To:Subject:From:Message-Id:Date; b=AaNSpZ51wNyGAOhCB1K27tAhdhaqJSvtLUqVOhLGmntWBRpdGQmV1qwTVxhBl/H1LvwLZXAOxkTuUWo0TflSin8kCZ085tmiSLkRfQw9SinJknJzNMzGI1xVfpF8LgKadUxex+AiSU1E2CfmDhGmcqR7QI2zvLiCccFfVmIwRX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FhBSzrFZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FhBSzrFZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC293C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749952793;
	bh=Wvr/uAiPiDsgo2hqiwrsG6BJ8x9MgpahtntxsKsiNKY=;
	h=To:Subject:From:Date:From;
	b=FhBSzrFZm7ZabKY84QoW6Stvw1d+EnBsh6RwLKjUc77N0s4qZ0TmtYts3mf6BhzQ5
	 ASVpvxChccT3W0kz8f4IqjTexpRYtM2HcxeYno56G3IHWka/IfOfHaFrXCjkI6dp99
	 Eq6MiytWviesmNMu/jqKy9kCgPQvGDO0vb2i1QXQpi6xvIIHuYBhd7ZkHtfU1ssxKQ
	 85NNm76sKrjWbn1p5pcIt2DclS4Lc+F4CNa7XB1jwZZ39+ijjXUs8Ay/hRk6ZtwCaf
	 Ll2XeRc0IW8hQ/2Tii4cC8FLroNGY202YKUxX6fs4NsMCAvxOEiVjGEB8geXKXS3zm
	 JXGoG7g44JTow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95610C7114A
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174995279357.18565.1657017564743181176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 126599348ccba7198514d694b3f51fe09849d0f8939af64d5e1f82872ee41f3b
Date: Sun, 15 Jun 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749952793
