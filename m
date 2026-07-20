Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ECAD397E80
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 23:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784589514; cv=none; b=j/IOMkadrYh27kyC3cGH+Zd6y5HbmqZgEOvPU0VvMnp3SPRfi+DugHyOKO5eHOKI4972fxYSD+3xJiOOJeBrCAM7qDCzRlqKrBWBXF4c5mCn0TCXNI6iC2GDuV9x7PSVrCLAKrTQutdGlZGz64hiYZ1sKZi0BujeYf3afVsu6hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784589514; c=relaxed/simple;
	bh=/CG9ZSZc79DSwu5e57AXxLDgNhNqPfgPkus3jQZttS8=;
	h=To:Subject:From:Message-Id:Date; b=Rf+f9hzRoC82tp9A2wQpwJytlb5t7eT8XWhhiV1cqBb1LlT8L+/uaZZdfg/oIqa19kEviaWbwdCbYT+xYBiygbD9Tq2etTzLzBFHmpxeXzvyHIpl12PqOSytbr1AGtkG8NW9fgyA1U5Pq7Zsv+Attmv6JP3W8Pr6zscWD3cNVso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DxRKX7bU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DxRKX7bU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA866C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 23:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784589513;
	bh=/CG9ZSZc79DSwu5e57AXxLDgNhNqPfgPkus3jQZttS8=;
	h=To:Subject:From:Date:From;
	b=DxRKX7bUrzvd26y/IzzUGkOvF59g4zPYENfost+PWoX4MeOS5N7N92L5tsS5SPopx
	 UTgkfOFuz6EqOQOY9qwxyGOKtyaOjIEU5L0V2C2yL1ppPvbwdbRn2rgTTwGLZGRMQQ
	 wVJN+C642bwJM/Kb1BvNMF0LFxwj7EggwNMBFmkwWhrmPCJ+D/GWwhyMNpbIFWUucO
	 6UIzIkPNOFKLAVP5SVq9Pexr4E3qen2oyryTYHmytG/r7mEegbGQ56VS8Gy/J787Mu
	 9+3JJ7kWRAJny3rarWJlOQ/wbN3GSFXdtXuOU/zGgslFnl7BQT7lMsTzH97KQuv6ZE
	 Ak9VY/RykcBlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7920C44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 23:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178458951374.4702.1856615527611379551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f3a78c60f8effa6281d6f3e295e8cfa479116eb1c399f813cda6c748aab164e
Date: Mon, 20 Jul 2026 23:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784589513
