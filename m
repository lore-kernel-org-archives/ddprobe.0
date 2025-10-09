Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42218154BE2
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759984794; cv=none; b=E7gQXJYRFsHMTmyNkTrtgj1EXY5rIG5NB0KmHfkuofcXdf0eF/LcKvK71qw1wwaSK+TEEz5aDWcgx3zQVYTyqVMsw2HQM3GQg3Bxvpqbr6IP7Jdr6LIuAu6MB1NapZBRJ5gAgUKMO1jXw2GVRX5qdJ5XOz6mFGK2/ryJjemjlkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759984794; c=relaxed/simple;
	bh=W0a9Cmy6cKVOrhx46XjyNP/NnCl91NS6IeG7sbn6Jp0=;
	h=To:Subject:From:Message-Id:Date; b=uGfzw3GnCHBrH4WhDFUrwO9FKSFxtQP31cyl9J3aQCVMH1wfcERingJGT/Uett0N8iH5M+fy+sDGnRR8Oy2NwP7tKJQk3dlQCZCLsONI12sFahybnYmuoHc/14bJRs4/Y7Flc5BKcT9u93bsf0uzFSvVjDYuY7i2OPsquBxp3mE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vBzlycbI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vBzlycbI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB4DEC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759984793;
	bh=W0a9Cmy6cKVOrhx46XjyNP/NnCl91NS6IeG7sbn6Jp0=;
	h=To:Subject:From:Date:From;
	b=vBzlycbIAimKeWhuUIXfWrD5PPwbzs4mGUP1GLRLdJmqXwwGfsjV9dPnAUPUVslur
	 68izGeFGqCXvRcPrNkHe6VOEeOCbq51gbXU9fnYk3uSnUAME7dkmMsHIjlFw6sly+x
	 deQj0e8r58hVNzcSPbuqGD9nVUfTvA153i4jQC8WRZ0/oh9IfeD6u5WPDyyG6M1Vkj
	 LKO760o+W+mRoO7wjHxuroVJ7duVnm5kriMMcrzCkShnTUyFr8/83ICveiB2NiJET9
	 Sa9Ngom3GnsmjzzVIZZb9T8EqHo318tnx154yB9QThYgnxuFU5006pDIrjlkSOdCvx
	 t8WNd5nSu0uxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DCBCCA470
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175998479366.15802.3182209201617096418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 059bae5058fc47103e8b80de5bcad6957b9406a6a9a7efd38ca04ad7a582d59a
Date: Thu, 09 Oct 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759984793
