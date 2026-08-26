Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EFFD13B58C
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787710234; cv=none; b=KE/rceMOnjIFRtjRNi3ZE61EkMGcdBZ2v1WjGQST+4tFu8Jip97XLLelHYrJi2x2ttFVBmqtYX1GqLGGSveTwOMigqCdMRbpVmSY9RiK1EIYQLHwy6pp+XSfCwhhfuTWz/cKqSe5H7RQ7nmwnY2h3skW6n1RLH3hnvqrTkwlzXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787710234; c=relaxed/simple;
	bh=WzSagEm3J0KVoDE33kyWQ3Nafzh2XvxZ0HVK6FTb17A=;
	h=To:Subject:From:Message-Id:Date; b=aqGY/4sqahcy9LdgF5zZalTMmPbHpmr+3sjYguCUdpuOn1lb/A5zYD3FNM7XGX97WoQDl1cktJ6GGjFecJin63ZQ/Obc7sbrCQNdEhdaCAlfaq3eJIkLOHPa+HMGnpodU52uL+nylRN32RMEDHDW5BIMTkc0DqSxUq+WtbTWOds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dR4VS6sg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dR4VS6sg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D19F8C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787710233;
	bh=WzSagEm3J0KVoDE33kyWQ3Nafzh2XvxZ0HVK6FTb17A=;
	h=To:Subject:From:Date:From;
	b=dR4VS6sgByek4tvX7JAOM4MbxIIuEGTGKWR1Tc5I5cNU8jXa1h1SXAqZ6xZq5sNr4
	 63el3R366iyaTOEO4UzD0zfxm2vDs9KFirWwv1mS5XygVozBUEvJjt2EmLTk7kHWS1
	 M+IZV4vFzFhiPfLgVEOA4ikhM2uizZcRTcZjW6DBVFaXmabFnQ+kpwaiSB5+99CJFO
	 VeZcFLIUwfhgYsQgG38A3lif3l6+X3XSkkuEtb6AB6EdvHA7qx8fYmKTVOCsiWPfub
	 WNVeV4p8KnXqIWfivQbeHve5/6P+7Zs98xgXUcq45GGrwMT/oMPQ77VgkN6aiv/WUc
	 +il/SgMnnc+DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD02CC61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178771023370.1385.10636176107193649643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eceb5cb8af56a4a8f05ca5c32923e366a23340c4226afa13d1862c755de64c0b
Date: Wed, 26 Aug 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787710233
