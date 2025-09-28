Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF2117C91
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759040394; cv=none; b=Eag2oDTjqqFiFHNsMvJE5YTXh9vHTPHmDrMO8UDV2pscgnZUqG97dKPpO51XoArter1XkSjfJPQWR7GB2m9mKHVPjo4BHozYz2XcdHe20B07LwTxzrZ+M63jyLjzV/LrJEtILKthiTAAkGQG6aT05oUIVTjXP3lheP7lXuAYSmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759040394; c=relaxed/simple;
	bh=0Pp+n297X1cWqK/JG197bJJw01L472DRLgjbWxcaMSs=;
	h=To:Subject:From:Message-Id:Date; b=KUELQA+QZqZXIBJxNjq7qa6+2Qg/ZmeLDh1HL1Q58nsXGl+3drYA6JKvK0j62RgL5efnm7ua2uoX2dcnWDIMhDB7mb0HucKfmVTesv5AnR2JBcakt58SX6wmPNRuy0d35Bl/SgPu6HpWML8jX1m0sA+lK22KX7lgP2o80v32A2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b/FpExsA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b/FpExsA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B5CC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759040393;
	bh=0Pp+n297X1cWqK/JG197bJJw01L472DRLgjbWxcaMSs=;
	h=To:Subject:From:Date:From;
	b=b/FpExsA7e2CkbCcsywkbHm65j5ONPVDzBcNbqFtMAkd+bcqCbcyvm7RMaJp6gacU
	 MunMehu6+u8REnrSCDOk0HN3GGNwr6T4chr8R564T0JtJjeB1lpS+vCg75FO7op3Mb
	 Ef41Hy7D+31YN+AgG60wfb6o+LGIq6mV44v8utF4wGEksONd68gx3t+Gd9DFiHKcwh
	 SzbVdqyZWRU6WSW2e7G3y58amCszKUC+iRGcKuoct66+asA3Z0WC5JPmfapLwrbNwc
	 6IiusC6G0IVd4LD8xUn4Q3PgpNE/aibJwtB8k/JHB15ZXAKD3jtjAqoQdLuIOrd3Ye
	 q+wkBVeqlNH6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A7CCAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175904039357.8077.16641660583109028356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d94d90a809090aedd290118f2acf2b18a2c1bf2ae286e9bbaefde83a7a47bbb0
Date: Sun, 28 Sep 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759040393
