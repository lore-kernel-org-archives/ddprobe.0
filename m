Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A32046D09E
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790582434; cv=none; b=smc+8n8gIVEW/9kdKZ6eHvm65icMQyq+iT1GlLKSDxj2X+PRnE9NUGfBiuPfjuqY+ph8AgybY9k9PMaNdbGRhMsP6xjeiU3CSGHY3Afng8nm5xh2mIRBcxghc4FBAi48BwiCPJ5tGNZLl7OX24We4zU7W30uPF/tEsK2NcqbQ/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790582434; c=relaxed/simple;
	bh=maKhnUOLq2+sC2n3KtrLiXyF6FOHhFpvHez511mtgqg=;
	h=To:Subject:From:Message-Id:Date; b=MSfHSVdSZPiwuql3wsXPEDHLdU0DgQPsCMkBe9q2s+5R3Rt/MnnCpdakvW2yF7WjsxCDjqL+xdS9soigawWCfcLVKYjE+YJs46fCUbtuGmBm1MtHA7vi9KuIVlBo+m0tBWammglN81CS7edxwsThQffHkcmspTxyiNDwjIaeEso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K9lMniIg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K9lMniIg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC4BCC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790582433;
	bh=maKhnUOLq2+sC2n3KtrLiXyF6FOHhFpvHez511mtgqg=;
	h=To:Subject:From:Date:From;
	b=K9lMniIgq3+ajk8wUpoClhM4cN6ck+WYnzjfG7LHqiwZKyA/L7Ggj4k8P9fvRDOt1
	 0NvQ675PuqI0pDYWyKs1Rm8nzcxArb+NGw5EkO4FCJLOn6oK/pCH0rwyuu9rAVIiRn
	 C8oB+MCZDZsF9jgZdLOsBXO99YZxx4VkQ9mCSJynK3TJ9EX5l0YVYKI94bvGJUTFCR
	 L2bPC/6PRWLNEPsc/INPwcStxVpjleGqhQ6yKJfKZm6PEKU5DLq7LTWZc6b/Zvt9NA
	 +iJ7MzYycEJD5lsjXAint38Ykk9QmZF4M4295wICWLbeNvszMomPxgP1DT3dUftOq5
	 ACqaPOeT2s17w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B676BC9832F
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179058243373.429.13840586470193544492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d76e0d283915d542aaf8c098f018ec3259560ec804a372bd45727f7fb2fb9f5c
Date: Mon, 28 Sep 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790582433
