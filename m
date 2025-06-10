Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2927925EFB6
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749534594; cv=none; b=iUHW4DOlvIUMEtjmGFj4vgadz89xMDm6YhbizvgjckctSDEKGCycQwSCVfvHr7nSdU9A+TjPcm68dz3xXHLtO5DhXpXMNhemGPGcMcXYn4d8sFtiFnLn7CxbTF/1bQJueJLrY2wzxKbmAu+qn/XiDyKZcx4rUN2CItGrbOX5J8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749534594; c=relaxed/simple;
	bh=8CmESxO2Sja2MGDFYdOcTsMJbsZqA5IqTT/e8Tfbvfc=;
	h=To:Subject:From:Message-Id:Date; b=t0eW8p50osjohF6S0Hk0Wk5h8V1UDH1FglllRWugRd+aPJX3Le1m3/4tm/eiMVlJk/IBA4wuMfHG5f4BPXZuyqPdV2teVyH5fQDv8FvyMvwEnI0MzAYDzeHx/zsTNR9gWmNFzlXTTtcWRRc9jQ9p7qacMUXsk0oxdm+Qq6eFzNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jeggRn47; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jeggRn47"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2ADCC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749534593;
	bh=8CmESxO2Sja2MGDFYdOcTsMJbsZqA5IqTT/e8Tfbvfc=;
	h=To:Subject:From:Date:From;
	b=jeggRn47PJpdarBfTtM8DtNGpf9sKH816O9DwqlA20RlLKs3R17VypKdUsAXbyMXz
	 ZX2QeoeGaURoXnbJEj8SO4AJw+WiEX99tixF2NorK9owYkNjH6WIjBrvIS0Y2R+yst
	 Jd1gxRx8bf5H+7CVdVny+aC9vuiFmg0A8NWDAT0TK0L+g/IAw2WYYxN4WeTYsT1Zwj
	 ThJrqhatzpQtDBMaP5Zp3YPbmT81TPbOUL1GM8Gy/Be330XAIUyNSjUOTdb1WEbPvx
	 rVl/zaJGhjN3EUqIOgJ/8DIbSIepOjb+nmQ2xm2/fYdKZNrLP2Iz2FJg+RXe6EU96v
	 nAMRdBX2MVXpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90934C5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174953459358.4494.13150790339440035006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad09f9eaf42da2d593462bdf30ef4461b6404d73646a7fdb8b29f69b4a6aa255
Date: Tue, 10 Jun 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749534593
