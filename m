Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9063E395ADE
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 21:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783373314; cv=none; b=tf/pL+VWMZjetliVoMmUULUOP+AN+2UnrVU4ksLlCCjzhrDO9r3An+XQFpnkcUeXeJxAWkzUH2yNqBQI/OzZLYJQc5DZB4+VxOB8E4P8jEXL46suX5nQWGkB3f94UEgR4A9I2wI6oLotoof3+Zanxw4jnAzPtepOvR62hWacABY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783373314; c=relaxed/simple;
	bh=g4Qg+8c/WKIsakGUKDnp+9zOheCOT1a749b6ciE0vj8=;
	h=To:Subject:From:Message-Id:Date; b=dtWRYFnpiONrwt81g7Wnw1cejaKtqmhwPSd8zwXtREiXPPl/iBUOmmZ8CFOJU7oLM6knp3AoBarMBier6Y4OkcREeyY/RdOcUqwIV0+9v5Vh+Zwf7FxJGM1L3q7O47DssOxSBqZNYxGhR6KAQOyetQ0KKAjBoYuwYe7ASh3qMg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q/ajFA93; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q/ajFA93"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC532C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 21:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783373313;
	bh=g4Qg+8c/WKIsakGUKDnp+9zOheCOT1a749b6ciE0vj8=;
	h=To:Subject:From:Date:From;
	b=q/ajFA93y/TYKFYcjdKt55muF9U22MOprRDym3jB89P9i5UkFvPZMWgDR9y1X/MEq
	 SvxoI8DXjmXzfBj0fWdY31MtlK0MfjS14XP2qxZPqLfq4q193zZzuYFuBIYbSUcyoo
	 C2s9M354CBmCyj0xrtNSPSluT07+q0AYBlIONn6jDB5QwVUiYrrRd4/AbULPayDNVG
	 OxnoV0AiUsM8Xve+NT7lO0N3UKBOyxT5oJ03tgTkxJMSC0+uyw67nkW3H8f7R2nroI
	 jJrCbAOE3LHhIPeXYvrcTCqlXfICyoXa8sYRw4BCZkw0WxhcQZ2orwT6TMtfE6xqjY
	 Iys+1XScIwHOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91E4C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 21:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178337331368.15443.18192086327752059765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 686a5ae3b3ec4b4d7fe6e5e701fe7682eeff72ccb1a7b3cb0c8d03ab14eaca26
Date: Mon, 06 Jul 2026 21:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783373313
