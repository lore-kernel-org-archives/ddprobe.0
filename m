Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76D9684A2F
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 10:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735207554; cv=none; b=cufLSC3WBYD4EBjdqvcu/E7onRfpcXpP32kg77kH+rOjvXFwwrjZd4FLzPPZHCrlNLptJb8SkdqyVvxKXZTXqX/IvXr2cCLNgCqM9atqMjJLM/VDLW6osDrqGKph70FAm0s5E0aO0ZlG06z6ISffxpEVAM2Fg2gViL937BzdS7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735207554; c=relaxed/simple;
	bh=1/K+C6ae5GhKinOxOE7aWb9PoVlO58pGgXJ2xYIOtOI=;
	h=To:Subject:From:Message-Id:Date; b=sRe5N3AQ2iT0lsUpdbG+h7m6/5azyuCXQfq0pBP9vP/1RdgeIzj16ZYH0gHTyCP4Mr9Icf0BuO8VvT2totFO4zXUDEJlm4wzIOlXBP38rEn09jtsYC6+c2t1M9scv6KIydBvm9+PfKc6HqIOCN+oMMxMbt4bBe9RXOMeoseHONQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p9AL59F/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p9AL59F/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9E5CC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735207553;
	bh=1/K+C6ae5GhKinOxOE7aWb9PoVlO58pGgXJ2xYIOtOI=;
	h=To:Subject:From:Date:From;
	b=p9AL59F/1J34qxMoau4rN/e4UGalg0Yw/nEMCGaax551UspIVSCmXcCb4TXne6L7z
	 AWKj/Q4cEsRQ6ymdmmED5tPrnKspquigOHzGa1C5vJvzBKN2fQd/f95QxfeAfroWBg
	 jnE93AECkQtyAmrelnICgi0gusKXSqZbnVun9Ucqy0NiMzS6D5vMPr7RVw3gE/oFhr
	 MMd+d3wdwQ21k1fjxdAuryMcltXIm+RKxLpwwiKA92ntDwqU2RKokK03dkzO9+akRE
	 61dILhf3zBq2GisVpJdJHq2wuna/WZI/iy7VI+rG9YwkTybQZRqWj39tFnkbkwq5nu
	 NxogYw0FmBynw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD403E77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173520755368.8333.12203562752756576683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6c27fdc3992decc009309a03b6df30949a504a40ebca1dc8bc66a929c3e0260
Date: Thu, 26 Dec 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735207553
