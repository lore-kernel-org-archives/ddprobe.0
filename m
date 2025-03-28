Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B77AE573
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743140995; cv=none; b=N5GyZ1od4OzVMQb1456DXqnFoP1qEh4zfTdTZK1aYtYlnyZowrfk0rcGd7eunhV8v+rSVuAL7sdiCPX3nfLQpaFQV5Dt1dmbOt5cYVA4bGnInpxljIsgncdpP7j+owP81DuD04FuIOhF52K+V4vRTkItmnkyoshma5umpSRGY90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743140995; c=relaxed/simple;
	bh=ZM1wE8PyL9XUtis0XPUb17sKBsB/fORyTrrq3nGlDbY=;
	h=To:Subject:From:Message-Id:Date; b=Ffji9VO79bq8vU1w+2yHUzSAmleoX6oKukRaAGNkvJEVnBkV1CpEhAdOE4MmRG/7kDJ+DC0oq2vHX44slihG46ayUuM0W09cYqsKdLEwIKCif69a5NDYW/ARLlEEU0c/h0VBkKxAUOhO9MFe0WVpSnh4vo5iiKSXzwe/hVhfXFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ALEz2PGO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ALEz2PGO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD4A7C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743140993;
	bh=ZM1wE8PyL9XUtis0XPUb17sKBsB/fORyTrrq3nGlDbY=;
	h=To:Subject:From:Date:From;
	b=ALEz2PGOZHQGgpg+qAkj4BAJ/a1iqofQRAfl0aeoVV9OupPp7UH2o4cM40/vSk9fs
	 VCz2XTTCCQCloLB9qrdIE/6ANe94gtOm8jo2ZsHYNJNeerBjwWCW0We2zqvlAlNGA2
	 f6x+4eQ6BzbX152tew6dxgz7bW6MfwYr608Y6NgfN9P2NCR2+tbblTS7rk5cI/PrJP
	 RFwksW0tBA3akKiuG/7AaTYUarL5WXJB5f6so4oy9j6uhRHBfMpoTC5eMKZQ6OreJk
	 MhEphCrXzYgxFlb2gCffoZbD1XSb9xbR7uzaUXp1BdLCk4UReMSCzEWXlUCoL18R6p
	 YVM5m1vzVI0Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968B8C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174314099359.4143.17336078378634152272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61e1d58a3505b0b4f21e819a3dbd59cb47584e6d1280effe33c955267eea5438
Date: Fri, 28 Mar 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743140993
