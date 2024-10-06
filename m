Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD476163A9B
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728208553; cv=none; b=WDhd2E7MSpbXNCL72iD0/AxEArSG23AamoJFQ4MK3SQ/HGVTGayIp1I4V3Fu3xyMnzCYPD15jOHCPbPcaxkurnzjACH+GqCq/c4QC861SdcguuLm4bYwmrOnjb6bFW597WvaQlylR0a5dvipEXzwlA34lZ3a0JFpn6oo+V4DB2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728208553; c=relaxed/simple;
	bh=8w7X2Rs4bL7HT4NXdvjW/JAvXIteE/HXxwYi2g2RIdo=;
	h=To:Subject:From:Message-Id:Date; b=c6nZgAIBuJ+rqea3b9hn6TVIHO8exW3cW5RDx8nlRcPvYPIyVlgXE4Knw1+iCeIwLC9sAO1lvQBGy5mk7v85owR8ku52ka42YJTF7b9j70QFEbMXi8FXp/Of33u71WUpRWGhHsR+8hrJNowDqICrkcD4447rszDaSXKDunhxLCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mj7n//Dd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mj7n//Dd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A238CC4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728208553;
	bh=8w7X2Rs4bL7HT4NXdvjW/JAvXIteE/HXxwYi2g2RIdo=;
	h=To:Subject:From:Date:From;
	b=mj7n//DdZUBy1ySNEAVYYwhYWYkiXmKFvEiugLtxbncPaL7dsTFp3uE2BSls4MTn6
	 iOVVR408RChn2tnbSqiZNzsLjCNG/gq/mtft7+/t7ewxna0GJqkxCBL+eN9BRMempU
	 Wiy4O0679UtRj2/2FFcryvyrpQzLLUzX0VJQKI5d4DqLSDlN+vAcdy6LH6e9SjsrE7
	 mHvM6GpywZYJ+TuiT2iSoRtjzoC8jmrxsyBwsqKia55+pyfJMMkqQu1mwijAdAY4yq
	 AbtqFOUa95C/eUnfrO+2VdOD33GajLUOYZ0/phcxOeo3/kFplzq0XtufsTSfmTKeGW
	 YqNz8p9b2EsZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A41CFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172820855359.17811.12861764782104661734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03fba262836cdaef20dae6661904adee7cac307c8088c725ce24c07647725a9e
Date: Sun, 06 Oct 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728208553
