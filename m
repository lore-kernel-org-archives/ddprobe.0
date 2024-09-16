Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D60F1210EE
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726467353; cv=none; b=AxRI/xViFfdGdMCXbeRp9tejJ0iA9C3YsXlm0W/ssoKezi+0C9IKSFvNN6ejbL9YpKuBW3jq1X83Gk9g6uum8Gti/tiSq7a5t3WhHSPZ+R9wN1nUzrl3ELNUpZdBv4LmvKWxA7mLL296wOGJ+/765sQiVmakq3midOneNRMSP90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726467353; c=relaxed/simple;
	bh=W/X7tTeZp8so7Sy0Hzeyx1KBBLtq7BNKJzEfymzmTjw=;
	h=To:Subject:From:Message-Id:Date; b=M4Ec0AyhbePPEj8HxWHUgYqgmIIzcCBGKhXs8RKhMoWEOmos08NRWUa/gOplR8M1262gJXPBxYzx5cM0wdUd520X5oGx4CHthch77R6E7SQuvi0Z6LSzKUgZnbMsAU2yfw2ravL3sFQg8dbUvv18pQO0h61/RRCKqPoxYVEyWwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=czdaNkNV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="czdaNkNV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D53C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726467353;
	bh=W/X7tTeZp8so7Sy0Hzeyx1KBBLtq7BNKJzEfymzmTjw=;
	h=To:Subject:From:Date:From;
	b=czdaNkNVkg52ZVogdXAHXuzFWohVDbQpzD80+BlmLO+6zXmjhofRzLDLRavmaLW5k
	 C8vLrjAEQ2syfBS+ysSdQ82XHEogSJPnefMaPGOVOKXugicH6cQx8x8TNY78sJl50W
	 FS2h3R6I+3dxjOkCmNfptj8w/xw2FgxEeQxFiMlVX4QIGCsHEFWAuu4vPvz96ilzQk
	 tOOncy7dmt0aQXBkcqMVNrOMZaZIg10mlFI2ERWarvhOKmX/GbjXA/k+U4fwRvODyT
	 bET82a0yPXbjeodM4vxJNjRu/1Uutr9+Enib8MzH0yJsm3Itxnlpn8Rk0mtVWJvW/w
	 591jGwIHVN7NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A86C3ABB2
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172646735359.27494.14497176613944609117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deeb23d9661f24643d6ee0efe57a36ba9add5a2e3f22a41e7e8ffe03e3aa7fec
Date: Mon, 16 Sep 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726467353
