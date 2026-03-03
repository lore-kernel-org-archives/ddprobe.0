Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A12B3803C5
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772511294; cv=none; b=GpT2AEVTe5XasUQHm2gamzr2RpfvXasHupJdQ4jD1rGw/W/WWqWM+d7HfH6NtHUMh7QQNdeSXCWYb6Q6+vFZJridDfixx5L3yEgJQX8fC1qBUtdQ9oVFvQR9ID/gkirvcSnOggCuQq+egdvzg3N5D+Dp0rZhL+vBxq6GfWu9Dug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772511294; c=relaxed/simple;
	bh=Z2HpM60nrk6n+JuLfAIAjYq5+4A49Fkf+hBqKSW2LyU=;
	h=To:Subject:From:Message-Id:Date; b=bBYk4cmpGjRYuw4izbC09tKfY3HyCQDPXlKf2CtjcEGvp9kfrG7BMsDYD9RgPwI+jQAUu9ccWKAaoWiLPWunYzMmLlcYPBN9FQKI+jnpOUWNXvwgTCzcow4XZMz0Uw6x3guSkf3o0G+rpURbI4KbDLF837as4pFJUpF4ELLttfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qtQv4prk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qtQv4prk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C150AC19422
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772511293;
	bh=Z2HpM60nrk6n+JuLfAIAjYq5+4A49Fkf+hBqKSW2LyU=;
	h=To:Subject:From:Date:From;
	b=qtQv4prkfs4ZvaqiA/+pOaYwUy0c6bn/m9gk5IjZ4HrCThtNUT2sReKuSeaXotoIQ
	 qnsCf7Vg5xkS7TN5k6JlyCMl5C/ej/yHnKYgjULnZWqSp425mdGm9bPh2w7M6BNvYj
	 9hpU5QKpx1LKdjHh+fjHbiUUylMoMKOxwJhSa8qFJ4YDIcUzfn9vxvfgqsQobgs348
	 dRvAXPclsr02cotrPkWVQ4CxAxGszoS17hC3o7Gl46KwjPmyZu56ouXb2nwyFFS/Sz
	 z/Puho6PItuFDsH6NWZUApcKce/SXcttn8blIlM15yQ2dAJ/FDdezoVkz6Ctt/P4x/
	 ny3n+8crHAhUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB53E67A61
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177251129364.29292.7552206129027616392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8a9be3d927f6491c33c00f7e51c167bb840eff867176e0a74c75290de0dd73d
Date: Tue, 03 Mar 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772511293
