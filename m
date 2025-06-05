Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223BF28E17
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749160794; cv=none; b=utdi7pZzJONzekNJMEciMcv/fbt9QZWKYv23qtwFdqAvDNih8RboHo8J1YgqXV6UVtWS5LTwHzy21aZhkjtK/AliLlEki9B+LGi8iCFe7TqBtcpLoupVrkPbtCc+2D2Z0QRDK2T6oprfvWbtTY5bQaasGRqLU615fdnHlDDqehU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749160794; c=relaxed/simple;
	bh=cN6RnTH+sczQLIljbVBKs3jCPRzeWLM8ol8LWT1bpeA=;
	h=To:Subject:From:Message-Id:Date; b=Ra/y07s9/wfoOGGASMiYtHpdIgEC+6btMHaFXEw3OZiA09wLIW6TX4JPPZc6MSPlNTLOxApA61PEGhMBwikQpTiiO5D+wcP4JVOjX2XM54iGNVGVo59swvcZ6YGDVMpuajLoWy+cstdmq5/9pSKxld/cM7YpZWtNKfF1AOmWo30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X/FkFy84; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X/FkFy84"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E015C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749160793;
	bh=cN6RnTH+sczQLIljbVBKs3jCPRzeWLM8ol8LWT1bpeA=;
	h=To:Subject:From:Date:From;
	b=X/FkFy84nU75SeIhc6fL/ZHcudtlEmIrmml3jwnbOTUB/I4d/YVUAmaDSS6CyGyxh
	 ldLm0bcVVbxoEKB3TtLj1T7sOWt99rCvqvjjV5959hxrJnFhN4MpNfNS6J5SZdQ+HP
	 5AvxNvgZsRvlKEXTPTgnOF7IEjPYl62bbm9zJ1oIqlbhELD24OTD5MrPcldJWlE4FN
	 3mWTaDmi4Mnpb+bQOZ9/1sphf6PSJcfdwFY4TlC13UNMsAabWrci+cY0bw7sCZLz6m
	 Evi26wTBoC3QZkmnQJpR5e2jc0vceyJ2wcCh44N8nKPOVanvlEZ0fvI7bQpxNI69W5
	 mCyl5MZdjoRvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED63C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174916079357.30553.3649532116825588431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f36749d072ece860824129ba54f283ffb0d97219dafa7ed3bd668329a7aa72f
Date: Thu, 05 Jun 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749160793
