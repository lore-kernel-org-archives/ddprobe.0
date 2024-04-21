Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57B45625
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 09:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713691223; cv=none; b=kxSykM7kNHYj3pbvdYfhswpA8tIbRe5exRAokruhcKL2944tIyjFonZauKQzW3L5zi8mDPV1jiBdd0xXyp33uP33roc96UTfX/xkDriO3RtZ1sRuNKg22cWV+djAoOOS+4mQLs22RWsbuafcnoys7q2KAwWPbytOQFQ714HM7VI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713691223; c=relaxed/simple;
	bh=1L0d27SAJzUQ7WvNOaMldQHvnNhcl6LXROC1FNw4GT4=;
	h=To:Subject:From:Message-Id:Date; b=Ojmo2Nk202bYM4okLejgM+NPepYUOsu6jPXa8VOhIMAOu5jZuzvDaZuDDe/1+OVhZk2j74yfZcSvukXNN376dncb4TWmAQHadiFb03fEvmsu13ZAIlaxnvMxnjeJew/cAZkJHPxkWUayXHvZe5NbFXo12QigN2pGsL2VzgH51ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HUItpMXN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HUItpMXN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3D4EC113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 09:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713691222;
	bh=1L0d27SAJzUQ7WvNOaMldQHvnNhcl6LXROC1FNw4GT4=;
	h=To:Subject:From:Date:From;
	b=HUItpMXNV32ALwNKVFhqK6tVDZ+PWnaudPYFYzpbVCcP2H+4Y6rL02kuzFFn15hS9
	 YaRSxssi7p+r2Cym1Onq2VbbedLxP4w11UaLjxbaLc0S4hFCp+8djbWtLv36VQ4hBR
	 qvsz6vS3Q0AAoLvmDciAG291la3HM0cyoSaTQ+AuVP7nYeiKY6TpHMs3inWowW8j0L
	 qkaVOsPrzZXMA1lRvTO5t8gMT2uRHYvZdoGmebpfPcOniV2VZz/9P8cmu9nOwnTLDI
	 ueYjxMXgLUDhZwMgLtSHS8CtD7zsJhnRWow2O+1jp40Pm0O0vpgk3PI4NQv7bHq/jZ
	 bEKoWdFK3w40Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6615C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 09:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171369122277.3665.18319722278006022519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c7080dc6cc4479ca00f413aa2e908462cf07506aa4cdc8d30bd625e09aaa188
Date: Sun, 21 Apr 2024 09:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713691222
