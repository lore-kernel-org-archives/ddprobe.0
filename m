Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A651323E358
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789053634; cv=none; b=WR87/E4E11w3WUKbLSoL8JQT9ulB9vaVEYarSp3xizBq9eA4eSHvcjDtr6tBHXBXa16d6x0ikCh16VJNsM7s+RhuaYh83QMhLCk+YTVALV2sZOr5QgGA6uJ13pEWkgYUA01Vqm5JTh3Wutacd5jeRrtsAmaKdyX4iszO/VHIB3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789053634; c=relaxed/simple;
	bh=CAUE52D/lo7lsvK4aFsFzHIRae7Tr3GAur7nylUsfGI=;
	h=To:Subject:From:Message-Id:Date; b=XvE1/cPgl+3rgO3yyaZ8lCx8+17p6E/gNQwUvIGc+d9Fj6+dH84ocFU/adoKBbmgKuPnbpG2ccixJ3M00euBX2a6PKdpnkAIyw7hccEdhD4QK6A8CSFMBC49uj/4tPFvOunfs7O2YW9HHe5/zkdFsR4M6NWA2h1FOeMpkcSFL0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GElGhFXL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GElGhFXL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D63A7C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789053633;
	bh=CAUE52D/lo7lsvK4aFsFzHIRae7Tr3GAur7nylUsfGI=;
	h=To:Subject:From:Date:From;
	b=GElGhFXLcMX1oJjuXUmdbk65heL1+0KhqOlj5JFvoZtOrvmgN5cly4dC1apqBEw4R
	 FMKwgmlLgX71YXsAw94Lu9HI6Nfg0kJEFUnzBkyidQduyNJs7ACw8Wv6uHAx+gKt59
	 flimOhDybaqP2c+1XOCz/l3/H3niMfgcSsvksOtMc8/KjsgbKUhT5GXPEwNC/0c6UH
	 Aw9aZ9Vurkf5k/5ILBtNSbkPVPD0Xth1bDVJLjZXkWguDh+PSyK9AEl0d8131ELhsc
	 XD6M3H+4cs9c+cncLfmqQuL9ow65TYEgoFdXJdEqeEyC/i37+Y6cCI/IauSEuUl/uF
	 igOLy3x70Eewg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07D3C79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178905363370.5384.6472141453863157616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2e9c6869a1663e650b07da26dd9de9e985b3a3f288ebcd74661fbc5d4469383
Date: Thu, 10 Sep 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789053633
