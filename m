Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5D61E498
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 16:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715532143; cv=none; b=jm00wGVk8AKL+bJz5w6lEl8zjChHsfis2Fooj0Gcq/pD7YrafxulCxcMx1nMszlqSQ0jBd2/b/MUAHjUMKY9euY7esd36JQRZiYoLRaIa4tRf9fCwwnK3wrLoOwgqaaoExbrKflvryMosDK/lFm4/eKX6XA9YzcabsMbMwhVSRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715532143; c=relaxed/simple;
	bh=AQVVLuQTLTnK+0ksaA2Bx275H3eV0Zr01exmR7Mfxbs=;
	h=To:Subject:From:Message-Id:Date; b=BtoZTlJUYXvABIYLcvbgr/uSdKieqZasCHwAcaqONUh/PRiKwwyM3/fYi2gdJ3H6JxM2f2N5XfbgHD9No2PdsEsYzsl2mY/5XKe0OwD3bFwWXQdpK8r2huQ7xFNCqR/XUaehCTWPQufljMQnBWkD4fqOGPYW4S1jNIAbbOYH4RA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GYyQ70av; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GYyQ70av"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D93BAC116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 16:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715532142;
	bh=AQVVLuQTLTnK+0ksaA2Bx275H3eV0Zr01exmR7Mfxbs=;
	h=To:Subject:From:Date:From;
	b=GYyQ70av2phjRhjG/DC285tqQzaIVscvte3yDTbrIr9lXitcowdM+HhKmpu0G8Yuu
	 EIT+lmooBucYUFRdvBIbHpXpTrOvCv8RGb1RSQ6KS+x/vHIV38qduko0qEsVXCI4zS
	 kDU0W3wRneoEOne3Ottd6V64j7kb5z52T6h9VuuR95UxajO8ZJeeE50qhQxsVVS0C8
	 AERwW+DBQHAjf/hhREQZoku5jCckQ6qfBO8+kZtD4bCSkbYA1LM75xsHLYRlYUQjmI
	 WSvOOLMXP03NSceKjb8xXAQcWbkonpVWsBtfph/MlAwxmyxtsouMP54aCq72Ux+GJQ
	 kWfaJc/2RzbZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C68C4C25B4F
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 16:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171553214278.2957.20819643291384471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32ea52dc730e92969bdc3e315ec9e7b378f3ebe896a9189098e9d94d871e4e45
Date: Sun, 12 May 2024 16:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715532142
