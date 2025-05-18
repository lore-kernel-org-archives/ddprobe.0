Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0812A1D8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747603796; cv=none; b=C2eZxlpLp2vcdPJR1ENoOHJhueSvaa4pbQkfCRz5pXtDbP/84pQzdaputmstvMaS5nSO3thqECUZIKn+U855ty1040AOOuMYy8Q2Ruoeojub1DKS907vjsa4cfZYNIba9oTGLXn0+YCGvuUYNTV+5dK7PhS51oPCx1W4DA6MS+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747603796; c=relaxed/simple;
	bh=NN3DeKmaXxM6FiaXPpcXs81Z+fTB5veFhSYFKk3DNy8=;
	h=To:Subject:From:Message-Id:Date; b=WsAdy4HXTMfCeGN+/hGhtxotOy0zXwYdHcwQMi+TovewDNH09qKt2wN7AWsL2bEs9etvyLmkZzEIj4U42CqKNcagWtbaPzOXselcz2AXYaV5e68AtS1JZ1LoCLQJbkeTtnMMZOFOleEWeAkA0+XzzpwbuBY/3L63Qkf1ot4aAB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nxkgVLbo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nxkgVLbo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CE5C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747603793;
	bh=NN3DeKmaXxM6FiaXPpcXs81Z+fTB5veFhSYFKk3DNy8=;
	h=To:Subject:From:Date:From;
	b=nxkgVLboSUAYwp2xRnpOhxrkRGHYwXnHugArM2etNcFw5xCsnWJPMsyPceSQvvBSw
	 S0PkkEQ70GIR7YIM53UA15tVGzTfTSvdyEepAfMlseogS7CQLL4o4FFLpsKjqCZ9tr
	 MvrfWeYR43t2ZkRycLmhYD4wlp/S3dOkOMNy12iIGW1n4vNr3VQMXldaJA3BcY8xYi
	 9V8Npp5uqMlzi366TXJ9bOuz+TuBpHqBenko29lx+enKllnYLIURqYAbWPcGUbtB1x
	 s8NC3qdRbMpWQf2EJVBgU/vGwTG/X3urQ1dQE9Lyig1XFhEnsBRl72cW6UQ2aw21rl
	 YF25N1x2JMQCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA1CC3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174760379357.19231.6866633332559282308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0ae058f2ff5268d635a96b03e489ff639dfa69d4980ae6a7873632b908f44ca
Date: Sun, 18 May 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747603793
