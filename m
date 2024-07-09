Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DAF517B020
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 17:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720546583; cv=none; b=N28vZ4GqX5ipXjaRd6dBQNy+r/va1RAfoIZ+2juDOZs85YZSltx1QxCe0CJoprbn+2HKLRqdeGS7q6FeJ38wmvMDGfVW2ZD/5i6AjiEuHURoHu7PVNRaIjkRU6kQBdFMrrxlXKsxJ7Cq0SRdzTQegLu2JjGiXO/8u0bzNwtUbGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720546583; c=relaxed/simple;
	bh=2ZxZBO9vidVRxsenAx/GXgOBZjNT1mmv+eI1N78QHL8=;
	h=To:Subject:From:Message-Id:Date; b=eqov9iGZN15+Un09uOCy9dJOfgyMpk6MznnEDJDVXed2qUwbiiBG9gpjxTrnHyC7NzP1N4tBw1d2lcV9J0IyLFqTjdhnN+aLXVcgrPxpFSOMLnCFpAQPizZq4MSLq2SHOJ6LWwtRgufgAcKZuOzvh+3E+pjGj2HQJAx4viW08Ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tiqQm+Mn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tiqQm+Mn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1343C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 17:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720546582;
	bh=2ZxZBO9vidVRxsenAx/GXgOBZjNT1mmv+eI1N78QHL8=;
	h=To:Subject:From:Date:From;
	b=tiqQm+Mnq9LrwKa+SmBEbX7536joV01WRMCPsnsJT5Wrk43yBPQykzRKOi+8xWhy/
	 Abhwe5Ml7Aof+r3E2dxLGoZknnMFpGbfHVwkVWl0tvQ24wmzJRw8xjl1ThXJty/bYk
	 UcTgqJr+MQpbZC1zODdtmiuvjcW9FTSyTy1pGM5nCK0LyvG8UdF/T5h4W1h7mYPKvN
	 jiMMfiHE0qTUeoPD5r//f31QyrNJRJ3wpcXphc4FtjEpqMAkOeooxi5aZrRg7cPqQw
	 asCExYz6SPGnvegrtv1DUGMnjGj3VGQHKTitBX8Ei7RIIBSvx7A3orOTcb9vu+k7Sn
	 T2utZTRlopl2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5080C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 17:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172054658277.9846.3958178597703610954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dad49c860e2b2b934ac9978b4886e907360f3aa89e7f3158d33052a047104f1c
Date: Tue, 09 Jul 2024 17:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720546582
