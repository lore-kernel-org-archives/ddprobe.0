Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA7D014277
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726758953; cv=none; b=diQt6vV8HfTUmqcz7q39c2FXS7VJvqgXaZKI2drF5yoiVMbmCOyvsukLADa3ULZ9iPjs6s1ZYBdCAsOib7A6GLuuBYBCT8IU7RVAcHtj04EKHrV9uAmdvo4fv67PE2pRVgSCTihKHamprrBqIb8ZwSkO3LshK8hdFzc9S6l9LJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726758953; c=relaxed/simple;
	bh=hWaWJJiXO8qAuxXYC2ypca7NlaBKjkVAbGvGZhXNPBo=;
	h=To:Subject:From:Message-Id:Date; b=CIzWK69gxTv3dXLEP0exe83lXV2DBmnLc0MPf4Wm2yEAtjg0uXMoBqu3muhyNKnVNUfofhyvDi73YZiNn8avUIw4UIAv0DrP2Sk+1MNS8wbelb44QqG+2erYrAqCbAPMDW3v7uAquBG5PuyyVJ3Qp7bq75Ef54abi4yafMZXtsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HUM1xLkx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HUM1xLkx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A63C4CEC6
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726758953;
	bh=hWaWJJiXO8qAuxXYC2ypca7NlaBKjkVAbGvGZhXNPBo=;
	h=To:Subject:From:Date:From;
	b=HUM1xLkxb0IP/2amABroOLZVeYVfC4UhHoewbBJV2F0HVLz4wXNDIFJ+YyaipzbOx
	 imHBwwTdtcCt8Gm4TDLZSpZWpmoXPKL5M2TsLSRugNDLC7xnORzARDtZjMZttwcUku
	 RnNJ4D/XGRyB4ewQuC100dLmGPGfgioQR5F3ar4KghEcFgYbCySkQNaSnNAwDzc6Rc
	 RA9xHoj5o+MDl22cRdg390Qu90Gn7uxP6T58cH+ZONLceXPyck09nT5WpdvZsyuV/8
	 Gce5KdQI4lDZO0BUeuhh6UF9o8nJv/Y+KKMRo8vbO4YtPaaHdQUzUN4rplNlPRokD6
	 8u23ZNgGs6uFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF45CF3959
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172675895358.24326.8489460398492151630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e48807c9954fc991b616c6def4c238024ac71418f7c70084cc80875ec0f2505
Date: Thu, 19 Sep 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726758953
