Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387AC402425
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 15:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778513434; cv=none; b=PtdxIrQkqxxleTSlOKKqd2GoBpfCLMg0B8ZcOnIG/QCZlX8OZAqcU6X15Z7xyAqHMyu94bKsiA6boldzTuZMNIIvkzBTv/YfE2PljbX/beJELLw4xTkYSEl6bcbeIwsIW7fFpwr2STB3HX7yOU6lG61Aoxu/V+mTQSyv6S3352E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778513434; c=relaxed/simple;
	bh=A5AF64m4lJ7zYtQ2yboZNxqOsiI64ua2+mC1p1tb3O8=;
	h=To:Subject:From:Message-Id:Date; b=sgFLP/o7lL3OppGpOcIe+aKLZTuN3NkkXOmE7r64bbqLAHzEvhAlRF3AfsjFd+THz/40b0KvPGqoBOvO2Db89yPyzVYMgVyEgkXW7Ty4/j4UKvuzoZWpsn5SKnTPKDwcV8Qtd/i9qUSivHM9W3Jag9PmryY7p0szDN5NOPcVNX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZWH1IVz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZWH1IVz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC368C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778513433;
	bh=A5AF64m4lJ7zYtQ2yboZNxqOsiI64ua2+mC1p1tb3O8=;
	h=To:Subject:From:Date:From;
	b=bZWH1IVzSjVcLSwprH22L0g4QeSuRiB4HSiScSFF5nLfOrqGESswLXAN6HMvm+V5c
	 UrUoo+kyNRHPG63wH5mobt5Ntr7j5SWS+zIY4ICjMFx15cWK3yTJiQKItTK27+/2GR
	 4rAQF/Z6RawpU9QHhf/A9qxxVSpZlnpj3WRijVO3DgsocSEblCLgOTCKw3dfWpzo2p
	 vj8mHbqlEPpLm2oFNsRE0Y0DXCYO8HsFdNSyRVGPsdWjunszcWPKSSNbrFt9R/6puV
	 BG4KUgUyFJkn35bBoC2n5aeCkL40/NLOpmCzaa827vugeUYXso1Tnl0aOj/L3LkbIr
	 U6h8T+0mbghHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC264CD37BE
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177851343369.24315.14146227369203817346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e527ef26ca5b973c2c6f2250c604b59e225e5114a872e745eb455c142b73393c
Date: Mon, 11 May 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778513433
