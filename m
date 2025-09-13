Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9B8EAC7
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757804994; cv=none; b=OYtFjNDwHCu0isGHEO5BGwjmvT3ikEqCVH61Ir4+V0YI2ZjSvmC4O2Zh1Rddme8sSnPpd1trUmXfeu7n3b+15yWP9BBH7OENrM75hpgCk47vooxs72zgxJMPv2hikiFbDA7bPh/h1vQrfsB1+mMGEoIxajJGqATpEUKAfn8BjEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757804994; c=relaxed/simple;
	bh=OQ7BGIb9yaMVGn5hIdOySa0eSsdzpzIeFCMiMuE4Hww=;
	h=To:Subject:From:Message-Id:Date; b=DXLampUi6cfT5BoBlO5DP/tBDoJPyJosJeKpWRM6Jz34Ogkn5azPYMmqQr4Wr4Y/mlAczhY/k9q5pulMrlBojSW/SOFL7Uap9GkWpDY2DMTuKHQt4QheOw67lh39nkSvo+ps7RWbbI/cnc3PQCM/tUwG5X6g8BKHG5F5GmbuKiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tYaBztcs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tYaBztcs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FFDC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757804993;
	bh=OQ7BGIb9yaMVGn5hIdOySa0eSsdzpzIeFCMiMuE4Hww=;
	h=To:Subject:From:Date:From;
	b=tYaBztcst1AtOuxDoHg39biRS/QgxkD0q26ZD49hr79Ha5qhwxBvitl9uL1RwFa3a
	 BEhLre5VN3snXGNRCOAGzCkPvHOnu/NPsj7vQKs6ZG/mlHcSG5mT3zZRINrR7L5CmL
	 GQB5LHzqDB4WuKTdXXd+45ubZpuQ2mYpCCBD6tpVlX5RAI53e+v61TMzUVrVCiRtHu
	 e/s1KddLYcFALCe/qtv0tvXvyS8NhhLLUa/oYdql2SMwNgTJutMkch1o87ERIv7ju4
	 9MdiRPnc0tIdtk1aCvFf98wnk/CCfAIgmyoyKZUKrTPf4CLQDYhJZttk9qkGtzsQGF
	 e+n0jHe3ps/6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6DCCAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175780499357.26898.3352618339003216315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0f86122b45c74eff79ca986e048ccf62151f41ce91850dacf0d210f25d8b4a7
Date: Sat, 13 Sep 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757804993
