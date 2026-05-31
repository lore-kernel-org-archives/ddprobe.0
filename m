Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C7AF35676D
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 14:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780238074; cv=none; b=QZ5EbhvvFFvTk+EPHv/KcdrlFfqxK2dXEvsOjP+XCW8EVIledHn0X6s5eGvM5eoJnZW95hXHr35D8UpU+anwkP9qFOsbkfPxazCZxvEp+qnzn4lzuRprAschlvz/io2L5zCy3Hr2ZoONRKBqhn9/4P5yvgl3/QItf0ooulIIlHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780238074; c=relaxed/simple;
	bh=aaFarTG7lufyuLR2wLwSGffL1SBLOGYimFt8/IwTHMg=;
	h=To:Subject:From:Message-Id:Date; b=MX18wEST4S6qdy9w4nRtWhEl8zCmfyug0xRajKM3YcUF6Xu2Te+gNBFy9Dd7DYnUgPO2+b0y9yyqFeWslKJupWuFUsuMILght5VDfjSU81Rvep90u70E6LuhbSmYSouHynl58HSTu2Zf3H7XkeLIwBWLKstaL7wqnePl4rQGkNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oxQYl2kl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oxQYl2kl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C76A0C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 14:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780238073;
	bh=aaFarTG7lufyuLR2wLwSGffL1SBLOGYimFt8/IwTHMg=;
	h=To:Subject:From:Date:From;
	b=oxQYl2klIzf/h/0G5MSqy7XrcGCteSu3nXJicRfUzOs/VumaM/y4cnN+zt5W0g+Vk
	 I8HYFb4OhkGPVpLfR4wnjhtRIJcZNm7UclQhp3iihpzT9TieAphacY2tTXByIL7lte
	 EhSEVMd3QvAwUcwGbydHaJlV0L63meTwhetg8vG53jAbn98NWUP14eS1YrzicEeioR
	 6kP1BUMrHsx8qQjLczeUHKsDUOjsKzH/oNhNpPzPQDI5/eQdTLmwqgh6trc6M4kl9r
	 R/y1kx0EdnPdzfoysuhoZydQUy6l4JKrZWhT28Ejcj1tVApKCc3fjnH0HhsOxppqfz
	 k0QjybtHCDY/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5E5CD6E5D
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 14:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178023807369.24815.11412340680325273104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0590e166eaec9dabc2ef3bdfba5bdc50862856c16e96c096b47e1dfb98837527
Date: Sun, 31 May 2026 14:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780238073
