Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C2C273803
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774643094; cv=none; b=Fcwd9/70rupFNKObXAjrvl2Cl29QInAwbD40l8kCwi5Qfmvkn8oZ7Hf1ZXNmRotJsX5BsETUiyzDNHg4dJIQc4m9AKwzWQHbE3EjXZJKHUAhAxc3w/6fhWHD5Gt943gT5iTo6YHQXCD8izjgbR8qBdGeeMx+xwUx6UXHTFSY1OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774643094; c=relaxed/simple;
	bh=+PhxxapstbrR5cmUaz1s0oi2CagIkKFMcpeoCxyIZNg=;
	h=To:Subject:From:Message-Id:Date; b=kuQtWnRIXzxukrVA+kedbUud8sRI73bX8SJy11MC+0ZkqF4XbTHy1R9AWA9tCPCGvlYyJ+zAkSdYp2AYLpLD3w8DDPQ+q/MDKmdw7mU9fp57zd9b6QEt2EDHTVoGH6RoCMbgA1MxXSEKGEHauyU8M6WVceHUBag2yPydSuBuGmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O4yCfpR6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O4yCfpR6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5CBCC19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774643093;
	bh=+PhxxapstbrR5cmUaz1s0oi2CagIkKFMcpeoCxyIZNg=;
	h=To:Subject:From:Date:From;
	b=O4yCfpR6YjSVJL5Iotiw9VA9xqz4eoMX0WrVOjyribuboKf1G92skKxa88+CZYnte
	 r/EHcdQirE5mGFI8M3zcFPeyUFChWsOnCz8Gb7Sc2SE8r/8A63zPJGBMFvaOzDdDnQ
	 UzBODNCU2R+wG7SGRNE4k4cFJdURNUrFyRk68Ojwj97YlwVji3MGbH5V1fsuvPbDNo
	 JwayyZYzZ4TCnW4tj+4ROz1dxgpe3+Csa5QHuaADnm7JYJgEG3l9Pzekf8IAyeBYYh
	 tLdeXWfnHjBLWTdH/xirpBUkUsQavvXA+0mJhj+JGsRHRkfEBTLffxGGZYzFBNA+B7
	 1s3OW6xyx3Q0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9998A10F2867
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177464309361.15117.1748414336221065138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff3e81067d9ceb1cfeac4d3e16b3009f3fdc8c55b1818194d7d0003fc0e642e6
Date: Fri, 27 Mar 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774643093
