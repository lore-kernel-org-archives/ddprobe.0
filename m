Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E572A55
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759445394; cv=none; b=Xt0vPGvOAKeGZHFjSO7qpROjhJWfwv7LjmmwYKqPJiFRgpc18TRZEFr/EylOvM9LgMTec69wCkeTgGMmihTa9xgzSg8A9I/wCFTYv3zeXOGBRAPOfba6TMTHf1tSbxLOJZ24N13Fg6ShXrnIKRemgdFJgPI5oSHiwB77XMyLOd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759445394; c=relaxed/simple;
	bh=ecUsFenq7tG1iWqGelEHM4LFrdvwxMZx/c8/7EQwKyA=;
	h=To:Subject:From:Message-Id:Date; b=gzKdoKqzLEeTVNJCHHNKeHXQkgM3YfX+y6GHnoG9dEG0lW+NwSzzHcZEWYn2gpSfjyFRnxf5mEwyr3hYk07HEHcBxk1H+5sWjB/V4eWQeVpRqmtxmPlNPm2OKKY3pD2jsqadUMD4nhPk6RB5USSqITZZ8ssFOE9owLhojjPqf1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hxFcV6ls; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hxFcV6ls"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66BEC4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759445393;
	bh=ecUsFenq7tG1iWqGelEHM4LFrdvwxMZx/c8/7EQwKyA=;
	h=To:Subject:From:Date:From;
	b=hxFcV6lsyyzVLR2QrBX8YFgNOrhuZwAtsM55tMcNGlJpLzgVaypMM8a2iQJe5lpqC
	 vBmprNUsTnG7mEr0W855vT9soT61D/unw/YdOefidNA8yoyjw3207PVhYrKdQcTvSP
	 ziuxSlLSQJsZFX/I1HAOu7/lHfyAK4k87eilCyXy94FtQsMoYHh/mGaY73Qz87ZzJf
	 tu/N9mEMrsyralnEHH9g/3rlqG/ppm755Ae+sNsgC9JWKRwQVFZS4nPEdw+Dd3HimN
	 y3wuJKcpOJa/8hATg6A/K6/lQSCghQv+/9XP+goiVxmL1XzUdabanmgibTHBrQm/mr
	 LA56q2cSYYe4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F75CAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175944539358.21290.9796823134793157951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99ad46f0986e735c41e219f39323d9a6eec67f36e92999c025718739260e5d3f
Date: Thu, 02 Oct 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759445393
