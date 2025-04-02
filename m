Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BDC6232373
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743573594; cv=none; b=puBmr5AahQ7tFdsT0+lz4bxcCw4UzGLdk2pEmbvdeU8G8da2ZgwuYroHb2vD9Zq+k/XvBuH1/ElhEOig8R4pxRZD5veEyQaP4AlemtcPQkudPo7a1Sn23Y0q2toA41yvNz9fhIKK4WujVp9+D2NZSJ0fTfbgytFkCA8v2Wc1VzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743573594; c=relaxed/simple;
	bh=22N7UWofWCDBZwLC5wZAgfJUNeD3RNBgJN3KP1Orsj0=;
	h=To:Subject:From:Message-Id:Date; b=j+tsia5fCt7KfaYNHfH96qjN0ytosJ4HYGFlji6Yur1ryynx056tKSD5mXN65XM825Grg8BMicBdFPzH4+GpqgSgn3TNw1YL3HSMuV70KMOx78ZeB0wkhn4j1gJKwaSuBxeSWJo3bFT6iPh1qcIYGmG4LUrVcevILFzzG7aXUlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QQuUGUEV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQuUGUEV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDEEC4CEE5
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743573593;
	bh=22N7UWofWCDBZwLC5wZAgfJUNeD3RNBgJN3KP1Orsj0=;
	h=To:Subject:From:Date:From;
	b=QQuUGUEVPyI6PxbiWJ+i3SNJJaMyekiz20mb/fLzlcC1Ae6SqonmHNd79iv56ddIl
	 9Mk2M0ePtOZhvNmDccu7d3ZMq1w6lKUusUpr+ccRTzlHpi2gzU/wmuLAe8SIzKB/6J
	 jS5bx9QJX/G6NITjB3PS0u632O2b63rwJRhyoANa/oXbtpaxELOj7Hy974uXc+BJyU
	 cfZXd1q2JtOgy2C6LXigMeDIyMbR6rYIrld/XC3V4W3D6dZNxMWtyV5xsMmiBj5VJp
	 ofa6LQI9pfZyfvrRrQD1NNDQGcJDqn3dnDZhUSvo1hbGe7xvjtZPGWXDRNO+tyhr7y
	 Z+f3Z4X/+rD9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983A1C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174357359359.28344.4110419026596917509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9773ad2da224a68951c93bc941c7cfd3359e902adee858fb9b7a13a5a1bb87dc
Date: Wed, 02 Apr 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743573593
