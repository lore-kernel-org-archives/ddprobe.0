Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4384318732E
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 13:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719494063; cv=none; b=nBu8DN/jgCILgZRUDQQoN4d4Id8m7PaLmvVmeKyEu/LK5Iz10ggPupfp3iaTZB414uOjZLZpzKIjoytb+CD1jBI6g/qvS1CxIwPpQiFuVFe0sCum6MyY3rDywkDYKy9EuBM/PzeQQbyPzG2Zq1AN8qptodu1vChJJOQNSM56xXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719494063; c=relaxed/simple;
	bh=deu+HgL5Jrh/7/ioYMokGYCkOVopEFoL9d54zSy2FxU=;
	h=To:Subject:From:Message-Id:Date; b=kqamjGd3SYNiAcRV2hX/LKRmP8Mwd5QpiJ8ZHDLkunSGF3HjFA3oamxodH4/3udDvJ5apMkarlwq44jXJ+tJI4EBuremC3KjC5UhlE26mgzFjBZG5ugsJCXX8zvf8wk15RvkXYSJD0AZHxQZUpxNe+IDqoOVQo+DDsJe+YDjywg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r4m3T1zF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r4m3T1zF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D15CEC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 13:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719494062;
	bh=deu+HgL5Jrh/7/ioYMokGYCkOVopEFoL9d54zSy2FxU=;
	h=To:Subject:From:Date:From;
	b=r4m3T1zFJQxV9D71wQGQTJxRBDiqEzEv1omnBFXyd8XNpxVHGkkO2PFz7s1x5bGpE
	 rlERRl/JxTWym89H+xMtwKSj1BsMLyt+APDPEzaRTnfFL+CgAMNDxmcQ6kwjGx+p57
	 ojWdW3cE/USQ4KMrh/zNU/BQ115M7t3PrTEAJIj6S0qZdtBfRVDkgDotpq9tzQr0kF
	 zHss+c6UPTchtadp504T7AMJj/61MJZdRHMb5UYFke2RF3A42gIkyO9GtNewL64YMk
	 4x+IiYSBC229XYrEveDUqg2O3yYGAwU7yx7l3kT++R+fAHLuF7QdGI2a5wEbx9KwtT
	 ix+mZ2skwCLFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCEA8C3064D
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 13:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171949406276.10628.11635405866519612256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 837272b5e5628b96b5b5513300534bc168abf94dc40d63bb2dbc3d27110fdaa0
Date: Thu, 27 Jun 2024 13:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719494062
