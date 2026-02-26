Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1151410D3D
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772120694; cv=none; b=jTKBoMSR2xg6CZdWWNF1ik+7fIBZ5751hVZcuOwx8YK0sY1aqNPgKQIO/qh4AsqD6/O0r/yucOSfKAzMijXkMhIFrLCJ4OtUCbTuumVt7Hmi56ppcAWpc3tKSt/+81m8kBI37qnKKZC9twOWF5VkQDy1p+i/bHrEwG5a8dooxXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772120694; c=relaxed/simple;
	bh=JS/PqN3nb9Hso9flngmzRG90f5w0vqNnO8o4fa5VXvQ=;
	h=To:Subject:From:Message-Id:Date; b=MfT7f7Y8gmh74GXDfTD0XLRTkv1PRVtQ6OGuQOj4hSmA41V6IL2neMAXxxWDHb95oSuLxdW14LTYTFifWofcrWG1cQyqjNtyWHahZBQHUZZTrokIw/L3QKOZ3TDDp62CTLdESg7IJ49CeWK5SfHgm7eXX8LgtTaDy2A0tpaJ7SM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UnekStG1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UnekStG1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3481C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772120693;
	bh=JS/PqN3nb9Hso9flngmzRG90f5w0vqNnO8o4fa5VXvQ=;
	h=To:Subject:From:Date:From;
	b=UnekStG1ApAk3Tr2sP8nIhxQzr8FwgYtO8MW89JYOA3XEtkQw+vk9QB9zyQ3BL8Ry
	 C0pmpRfcZxN1qo0CQI1sOSuWSRCRrtUnXbSDHNlefTsYNPKwa5NqrvN9yGWDHJ4zvP
	 nkGhZMGUdLL0EEL8tcwA8IimUxONb7ZbWJktlMCzbbJpePeze9Sc1wDYb1F7KBP5eP
	 c4CYql3dHIPcppLwMsuxXaqpsqxX+9l7ZPDR60lEKGMg7Ts0j4OnZVgnixEQN4oc8i
	 cz1LZus4Ou0j9ToRTiJlcMsZzspIj3Knt+etY/uxjWjYSNPBpujUSdYIr7B2RS79wy
	 qPeHw6+DONknA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918D5FD8FCE
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177212069358.20476.5360417295052838164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0574d9e82902d6373860a7a22af6383eb936869eafcede02b4165b5f6010f8c
Date: Thu, 26 Feb 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772120693
