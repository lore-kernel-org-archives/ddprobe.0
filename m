Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFBA1204F93
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749155994; cv=none; b=k7xA+kvpT9nWqlocacu2iPJENjDAjF0MvEPIToTysLHG1E+r8Wjcq4WnoghdELC9pwH01TaD01o2KIIe9Lg9B0iz8x2ya6+vgSGWBqBunbwLWPcIgn8VgpU1n99Jqgy+LVrzp68pU5bYg8y7AuhmltIbq1MVPIqpnwY/XTXQNwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749155994; c=relaxed/simple;
	bh=Vtp4o3Vw0TEESGOjn1c6TnGPVeDFCQFb84lpH5ucA5k=;
	h=To:Subject:From:Message-Id:Date; b=RaMXgp4wfhNd0G/93mk+971441cBerrBPSY+7ThjjJvrV8z3QtzWgBeAMGtYqr6y9+DRQsdqEpUy2bvwnn7P/bod6xJBAIyv9Pdm+zdxFWmdK/jxCg7MG19PbOe3i2eivdphFlx/TqlIQingdmef3DZxf8FnMiJGXRElLyUSjHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F5I2f4hZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F5I2f4hZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A438CC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749155993;
	bh=Vtp4o3Vw0TEESGOjn1c6TnGPVeDFCQFb84lpH5ucA5k=;
	h=To:Subject:From:Date:From;
	b=F5I2f4hZgTFvYSRTrAa+Rcv4EOfj/Wd9MmCIfr6SN8rFqhswBdfzyYWrsVHoEILHb
	 nZwmDf+HTXqL/DRbT3GWeKUVBSo2KpBwCz/YFAW6ugOVbkJYORv8t1KtCOe7L4+zmQ
	 HbneY0Hw55xBG3SNCRmWHJzfngkHJOTfvL5SRbm8HoPulm5tcrGqtkU+wfNj0+7Wrn
	 Ur3t09Ov5d78t1sZmBGoeN+V50bTow+t0kZVUN7AmDgntbJ8ATdx5fEOS4uybaKaEV
	 6k/pK22hNcZ2Z6IK0g4qHmKVh39M2EeYIksINLUPF6/Fm+XhkeQJFR1Og8Yxh2KAVe
	 rbxv90+YS5FpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9220AC5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174915599357.29593.10802271584758854022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 768f2268a66229df29e9f696033dcba67adb046ed84793d19e3eb6556480755d
Date: Thu, 05 Jun 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749155993
