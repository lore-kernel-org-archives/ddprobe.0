Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 695BB1946F
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 06:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718864363; cv=none; b=ZCUwM5jLEvylQjeUxWtlDP/CdGoB55MIFwIOBqo4YoR90Fb2Kv1XeKVuie5fXht8iutbz7YoP3Emb+n6WsKTsYbVQpftN8cmMvi7x46hS0/JdBnLFsR905TSj/wsqoAtFyB01uWNEHnMcSl/E2KkUyJ598cOf44UJ3F7OFct4Js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718864363; c=relaxed/simple;
	bh=5ggDxRM9Kui72CO9GfOcvoOgq/MGPj5ezJWPRCkTcE8=;
	h=To:Subject:From:Message-Id:Date; b=Ul2RjHB5xrTnM0mBTlF3heGLTpaAMoL79uOjEg4RBMEnAJIZSBzMyQeHJqXWL2fyqF4BVMHql3rIQ9yb4D2GWbh390nX+mBb4hRl+HbebsGaLpwLuN/XaA5IMySG2pPLAM2am1bZGquXu13LBZ6fzn9pp0pFWuFdkUsOAxL2lOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W9Jl+kuq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W9Jl+kuq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E22AAC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 06:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718864362;
	bh=5ggDxRM9Kui72CO9GfOcvoOgq/MGPj5ezJWPRCkTcE8=;
	h=To:Subject:From:Date:From;
	b=W9Jl+kuq4ao8BU7FrjL9pgCfk0BZ9+fpMcMY6I1JOH2JE2rofRWTrY3IsnYyrn9bH
	 vGfEJdkxCgwzRCQHQ6ebAtYuFMscvRWbfT7piXanBta6e886ysmMNxFn5NOHqpnZxR
	 +ogRuREIttSeOxgFvsjgOeBYcFv3Pie4DX9zMLASKNkKiW80CKndQmlhsavlhaV3Yf
	 KK3m2Q0uF53TdTEAQDT5paZ4Rv2TY1CRp3/UtDewmc1uIWibBKpwL/G1mKgMj7EISJ
	 OXC2z9K051JeF+poDIg37oF20Qkf950rZbnQCBNcBnX0wvpOd7rEqSwnjj2J6ORnBC
	 XAsaJl9r0hFtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2CC3C2BA18
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 06:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171886436278.2573.10698411260007576191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e43e240969c46a9d0b845d1bb498a2ea717de5a22fa43ecb2706f9c611fda0a5
Date: Thu, 20 Jun 2024 06:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718864362
