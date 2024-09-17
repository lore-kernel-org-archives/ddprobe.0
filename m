Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1497D17BA4
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726590954; cv=none; b=dPyWS/7GtNnI+cLGHK7SOpWFVxfa2uZ27AfPD/e2gGgQFpph0umNdCmRZ/LIGsadEs2pCL3HAUitRrv3za0Hwz+7GauSaFSDiwjwKGXbURmeQN0jK5eovTeOSsoF9VqHyC938dIGmOS5ZRTztOVDxpO/ghOxg1Kpw59CSiX4AWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726590954; c=relaxed/simple;
	bh=MDuQ7bIrF4Py0lPesNFCGoeRif5+fTTm7vla4CCdf8Q=;
	h=To:Subject:From:Message-Id:Date; b=YyV6nHkcEcxuccewVLI6BRTx70NpXWSXmbWXmiQ+XD1+/8DxDsFQlQyn3EegeXQiuW3Oyn9k3fgXiJziGgx/26f8iUT4ztoXu8uw32aa+5fx/2/YsVAa8btX5QOMdLPk5wX2coPk0JU4a3P4d02li7GalIXvwYFtMMsUy3dE8ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VbSdxRC9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VbSdxRC9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7449C4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726590953;
	bh=MDuQ7bIrF4Py0lPesNFCGoeRif5+fTTm7vla4CCdf8Q=;
	h=To:Subject:From:Date:From;
	b=VbSdxRC9vbtYWzyVoP8R9H0oc5su/y1NoJSdTROaqL722kS95FeqfSnoU+zdFts+g
	 wYOb9fhBA4iM5ieOLTsZtYxOmfl/O2CggS+iMkrf4WVNZ43gKZhmVZ6pFcMBu2yRw6
	 ej6ItkLmYRL9AbRtJ1iN+pPPFWln9y6/kyBp7mM9nUXEyr94ukMACl2Yw53r9MEBc5
	 IvWYKYs1CcpsMzapKG5G2xSPLoSDEubkcjaHccxR2MtRxqWkKhnDDwfOJcCDGKWzd1
	 pRNldiPqXdjMFyGJK7OY6lF9K5dRuSOQvdtFwBcj0zBXEWm6SBe1s++XaNUSkBRdnM
	 eCh4023Bv4DxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92359CAC58D
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172659095358.16192.1929978733651379388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45026c46458c909ef7ff631bae34b2e74f9b511f26cb100f3124cc08ca8c1284
Date: Tue, 17 Sep 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726590953
