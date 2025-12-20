Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2028120102B
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766264634; cv=none; b=HGnO+wYmnJdKvWVJbfgz8/xvCsJMFqKDVY5iNfAHu80SF5rz/Ggqk+h0RloqrC8RC8609CvsP4+W0QJa6yaRO/xxYWZKxj3EIe9mRCq6FKDOVfwSGt6lNmBw5bg3/rUQm1tRfX4tMJIRFKluyYW1c9gmfQpOz0SPFfH0WFT+mBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766264634; c=relaxed/simple;
	bh=QapnGXoM38sptkZWgGxMM+GfPokcrtHlYC56OsTfmNI=;
	h=To:Subject:From:Message-Id:Date; b=b6L71M0XsRSfioDMG4QDhhK4oqZeMu8/kHu34DkokUj98z1YMWG6UnKx9GNrK8sKA5Z4xPNj8aXFvmTWNHZrbqSI5PGmIyM1uBZXN1FDgTqlsyYUVEneTj9oCjSiLvgYH5VZ8bHBXrVsUb/0SoUeg0PjeSNw4FznducZpo3WRA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZGoZ8rI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZGoZ8rI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7849C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766264633;
	bh=QapnGXoM38sptkZWgGxMM+GfPokcrtHlYC56OsTfmNI=;
	h=To:Subject:From:Date:From;
	b=HZGoZ8rIZPFf2QOCWkwhU+T5tnL2dH8oU6SAVgx6vrpruacIZe/qO9MfWWBIhlFm4
	 342XRmbCTfnSi3ejMP0Z7db/73x5hl57A1BTfQ7R2RzdWsVkepJjGu5bP0R51xcoN7
	 vmhZfxzC0XD63/4cQ9LQqXsRKfG23hj6QuplEjvC5k97YfbYthaIsQ0CEpTpTOx69N
	 7JD3udwxgFnlapidyIYgalVdRvw0rlFlOAJ8w5wLOMwicSUyOzoLEIpbTV6qJnF+sS
	 wS6bnfYSG46tNyswxJFzR03fe4dyOS26o47Qq1owIM1lwjvdOvFZ3XXojpr+TlKsdZ
	 PxMpwIbgfdAVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F4AE67481
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176626463358.9361.4705651117279337276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f7962803cdf069f818c84f20da3642a5bc5cb079095f0413b3c8d8bba595a0d
Date: Sat, 20 Dec 2025 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766264633
