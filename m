Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1121D1A3154
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 19:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779044434; cv=none; b=GQPbyhJhMd7EDEUh48ln/NrcrFAUGG9bDzP4Tyag0ZXxUOYRa/StKR6Sf4vUSgQPA8u7u1W3KqfZ52HhJvhu0cxAv1o6PfCEacO6dPKdN7ThXDJAs33BadFAcvdIa6Vy6JzJVqAArg8LCLBWDxrOkNKiLCi63VKOUUTyT2jId7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779044434; c=relaxed/simple;
	bh=5t9y2N6M8CkHmgaHIrwq8Uf2fHq9jxThucBhzxTaE04=;
	h=To:Subject:From:Message-Id:Date; b=RtfJNFKMTyIgAOr8jSlmRukl6AjVvXncmON+L2JMH0Cp4B8gwTYEp728si93KTQB6EWb8u+kpYFBR4DXALFousC09wdxp0khZPqC/8JPXb4mAwL4WhVVIPOvlbffEHhaWogbvr90n4W+gvvZNI2QG/lwf7wn9tWIE97xuGMCqpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WhvrkAh4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WhvrkAh4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB766C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779044433;
	bh=5t9y2N6M8CkHmgaHIrwq8Uf2fHq9jxThucBhzxTaE04=;
	h=To:Subject:From:Date:From;
	b=WhvrkAh4MpHuuG/nVvOYAzwgWQVPBGgmwup87M6udebpAePo7hAcxnZzujgQ7165+
	 eylEp9stQn+qFOb26FW8qR8DLAkjPI9xWaUk8dp3Cl9Iw6vc+42DpPzmGgTiGSwAx0
	 w5YRnZXVsrWtO8ezrfZ0yY/SqZoOi10Jnars46zBm9LdISFR197nsajAFZIDoX5Bto
	 qkj8roFBREfTEMJWMGcFyZ9iNK8JHtXRFanchbNHezuUPbTlc0LXK08X7SR2fGdguQ
	 PgQs5D7w4YOUZNeWA/uiAqOU3XwtEB5NJnsld4Ztwlj0aAqz6nMes8EpO4pDX1CAmI
	 E7oclKUsO2PQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFACCD4F3D
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177904443369.3270.3589699260332326797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4466eba00837b5e1f860d53b35de5d4601ff5bc33bbc432d82e66b9ea592694d
Date: Sun, 17 May 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779044433
