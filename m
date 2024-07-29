Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319B879B8E
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722253554; cv=none; b=MSIuZzoFr7WuuK2YMA0xxWSi3Vxt7PvmAsvuW2cHb2FlOAkyhKevbe+pHW4JlDBZs8UwJK4+uhXDC2G+Ze6rlODwhOTJ8YD1C7DGMiu7T7EUoqpecV2krbJTw4/kcu7Ljod7d7FKYZAC4wHLTuArJIvg7HFAjkIokjp0MnYfOsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722253554; c=relaxed/simple;
	bh=t515dg1rm96nLfHgFE0mJENV0MwLeNQykkZDRbU9Wz0=;
	h=To:Subject:From:Message-Id:Date; b=WCrbWwF7gH9IVOA/nx3qbwVQcEc4tdqKYPGoJv/MeGSx7rZCAhOZx5pji8cQ4CN/x+ksLEajeNNgFGocY/OLuvbBruqZ+SrsphtN4d5dhwZrGAaimtkgsMI9ViPvol/qf6RrQ2y6a0yinUo6mYsb19tPDnqnfcVblRl25utyh8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NV7hHS/b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NV7hHS/b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD9DCC32786
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722253553;
	bh=t515dg1rm96nLfHgFE0mJENV0MwLeNQykkZDRbU9Wz0=;
	h=To:Subject:From:Date:From;
	b=NV7hHS/b9iXd2DKj1fAOk9NlzY/ZVcrfxjGFTPv9Xodfl1E+V0lc5dYVAsd5a0dBE
	 sw4+X8f7ay4MTBr8LcYUr6DAONoy4GoZFgNTQ35m2h4jg1Hu7uvQu8Lo1SAJLLWWau
	 xMSFhn+VOvEVVWyzwl7TVOj1taxLtkwrdyGw5Rykm73w4Z+IXfV/+JKQ8G7ns7Ec3v
	 MZ35WljEyY70ReGwWr9wKN7EcxPpdpjIql0Pg9uAiGPE3Mf+zdXoo4wB6ac2GRUQqN
	 mj/VPLr8WMKWrvYIKM1JoGQaaDryrqz7lO1GXJu4FyzYDeeSUrawao6Fhq3Qbxhere
	 a8tjBK1cOgSBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938D2C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172225355359.12954.8436842949994041095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bf9ba508bc3477db3c686935e6d8dabd45eac71da5d1257ddfaf4a90b7da056
Date: Mon, 29 Jul 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722253553
