Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155082E83F
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706474897; cv=none; b=IwMmCwch3LQSVYLIpESBmvCiiBWmzUezaxQFuzaKJbdp/ZIJ7U4RkGMaznkWtZnVnvoEqD5/67BpzDFk1Y7tU5KDHQdGlRDXwizrb+3lzdxGxnQ/AYE8hRFrP+38M4PTIwURFJa9WrXEZv9qOVAGrakSPnf23m8RGUtCsXpbbWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706474897; c=relaxed/simple;
	bh=l5sK5KDTw1nlV/Ibe7Ay2BUeZcxgEZP+CgJq6oBp3tw=;
	h=To:Subject:From:Message-Id:Date; b=Z3Mx7r2PMZiVtY+ryp4s5Br4gsNaDUkwXULG7wHInsWwyx33hb8vo05qOEdMnFnLbkK1FElmEQrP584NMHY5HSXyRGDd2GJmKkiiqWh9WKnpS9g9XTR3pFY65zYpZrsbVjQJ4OYgG81btQPTc79m58ktotJrDleJznUbRtimMOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PxE/VkVC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PxE/VkVC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C4CBC433C7
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706474896;
	bh=l5sK5KDTw1nlV/Ibe7Ay2BUeZcxgEZP+CgJq6oBp3tw=;
	h=To:Subject:From:Date:From;
	b=PxE/VkVCZmum4YR7AfDWK4PnvXzelbDvcCbc9KDXtLDc99FjsjXWfdCLztA0gvoQx
	 g1ji0J7VwXbSo5LwplK0bclaMPzrdaXbRgEzoxl52rs4f78mQ9Npln3rLyuMSrv5H7
	 PeNBSutHdLOnVCOoyVXy3Y4wJuZBYFyB+OVllx3e7nkEXLMTWuQr0Td9sa7YTomRx4
	 sn1oJms1tYXHyZYyVvr1UPOT+EL3SFKAioDG0YAs87ygaGv7gxI8ucWsE5D2z15ozR
	 0fC8iVuUax+S4j6VuegkNhh1/V/n2Ff9nriA7ka/ytRknZx24KFFJ6vZA+a6xbjCuu
	 purq3M0DGSkLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B3F0C47258
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170647489640.5989.16548250923401235349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88c22e5519145e6c37655147f04d001ba44e6949224856ba3101d69366d59652
Date: Sun, 28 Jan 2024 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706474896
