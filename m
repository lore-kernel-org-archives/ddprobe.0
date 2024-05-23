Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64B6513B7BC
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 13:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716469403; cv=none; b=jY2EVE1L0ibZAIGE9/vs0vTJkJcGHixg5EDAuCMgknarb6abPzQ3RwEn1l+sRDPUr+JKEM5noiHf1mGYEwjdv/60d7nNpJb3bXp/F4vg2H4hI5h5eWj7s1xPsY3CfmGHzruHh91Cq05K8jyaNB4CL1VHcdQazOCdxYv52DdXnyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716469403; c=relaxed/simple;
	bh=nc1bR1Cf4BeRxgVSzjf/9q65x4CMMEPSwupQX0eUim0=;
	h=To:Subject:From:Message-Id:Date; b=Xepxc+4t8EycOOTmsqQGlcknOczWcTM+zBstz7UD2KC4sxdT3VvJOnXruFZisQxdFL1RtO0Qgs7aJWpLY1YHs383TIr6UwM3UjTuq+pSYtn6TFnF+F9o+QizOY4nz8rv7PE9GVCMaBhggtWhZwXyUOwt737pC7F2DcL9y79C6vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lDcr1YZD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lDcr1YZD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2E91C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 13:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716469403;
	bh=nc1bR1Cf4BeRxgVSzjf/9q65x4CMMEPSwupQX0eUim0=;
	h=To:Subject:From:Date:From;
	b=lDcr1YZDCQDBL4IGw3VPGbAWLzmYf9AlAXUVHIr1jHLCQAPUqlpJkiUslnJsD5av1
	 knraIpMkovumDvvJ3woKLyzAi6k8CE6DQMdrS7TL45UbHmvcjsuIGwi6kjmwLU/60b
	 /ihO0rW0iyM8lPbMvXTfrfdByE9Rvc1oKypv+q2Ar20lmv7ZAOM7LWycLxC8l/tHa0
	 DTn9HfsD0l61K+WygvXKHtibMrBqly2C2xRBRBQcqikFZC+VN2eExMWqEh/zWO8vq9
	 q28iXvy1yTBr+DKVW1YP2mTtBUEP3KTWu5yYZYNMjpHl0W8rNCrKJcIJZpWMa+HMds
	 Lnx+MMk6u2P9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D831BC25B75
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 13:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171646940287.10194.4770980052715260652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a26a9c04de8086f6ac265ba67df8c56db45f91e12fd81a8bcb0fc43f2f782357
Date: Thu, 23 May 2024 13:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716469402
