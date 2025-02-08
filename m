Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8D9244E88
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739051155; cv=none; b=HnaOq3KuADt1plHrJODLh09AUVxplmv/0FVbSySZpScRLK08+0TksoOE2hvU3h20+Lb+PnQLw50adQ/u6Iggyeo6CNreOCf8NJ1oaij+hGDjaJFQtCMXrENWWUUXL0Ugt93i+lvTrk807Zod6Adaa0thwvwnXpSvNvU30iC4qxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739051155; c=relaxed/simple;
	bh=gF3VQOsvmGhNevVBJrhYSLyshtrLlVXNDBe3Ey+aVx0=;
	h=To:Subject:From:Message-Id:Date; b=eiEHetWqOlVQtAcCPc/qJGSEB91Fh1Dcbyar6QCTed6xlV/lYZLpHnUPdw65+rT/YKe/rQ1fGHgag4KOQ7KE5rfiEORwSY4xJyEvK8sz5bFbWVM5Oyiq4mTDgMgtpcG7OitunEeVqnvVX6sySzinvDPY/mZibYYp7xfyR3JS4VM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FxrHEwrx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FxrHEwrx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0720C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739051153;
	bh=gF3VQOsvmGhNevVBJrhYSLyshtrLlVXNDBe3Ey+aVx0=;
	h=To:Subject:From:Date:From;
	b=FxrHEwrxP9LVgtmyAbGM+IFF2J4nksk9ogA8Lummb3BuMAiubgZJwsB/T+xRYe//u
	 1XmPSzz/HlG4Ka6Qhl/WoxAW6Q9H5VxuuT4p6HjFdJF1SeyGLXU9dIMOUGqH8mbjVn
	 vRU3CgOQwaV9U4Abso03cfuze8AyHnoxKNBntBDOxYjdpixQE5HFGKouxzZ7guZjdN
	 Dk+m6eWlzvVOZ4UtbZRIc17bc+kHYVMko1usSA2lnazUgx+uv/T3bFF0xPUq+91s1g
	 3SPgzdcrNaQNaEyvNk3IThPz/DON4NUTs4GGJDTsSS8e8zgxKsB4E4W05OXubPVvBf
	 Efk4M4SnixGyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986BBC02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173905115358.4847.4276031021207838519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deed2f44abd0638547e9c049bd117e0f1fb49a00972f5edf444432aa692ea445
Date: Sat, 08 Feb 2025 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739051153
