Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3E1306D50
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758271194; cv=none; b=K99QlswZvQzH8ezF8WRUWVw6KJVjKGzfa4ryZLMBMABl5FpmTQPCur63qIlOcIX97cJAA51p/S+2aR7tDxe3o6MIuEqzOUMTucY6LSVwJiDEAx0uzoiQn9UguhL1yQwdydcUrhsBCaOZmLjVNs27aF7P5Q0Qv06Y53nvHdmmOR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758271194; c=relaxed/simple;
	bh=1jNygsY/XIhbfHW15mAaF3m556zyZZz2rULlRsPuDBg=;
	h=To:Subject:From:Message-Id:Date; b=GfQ4eATWJalF/I0TPHruw3VwKc8UCiofETGl1LgZBq6c48aHQaRLOGdU/LB/yhsOGvUHgfv+COGVkXu3K88AvQHz7TulHTJSJSJmI3nXbGdrl5FaGiIbHe+jxAcou4A7+po+tnNDgsRkg93ZztKy/tG6vXvd3tx/MmusmXTk4vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jo9Mqn1R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jo9Mqn1R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A426EC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758271193;
	bh=1jNygsY/XIhbfHW15mAaF3m556zyZZz2rULlRsPuDBg=;
	h=To:Subject:From:Date:From;
	b=Jo9Mqn1RfdMTxCeVpBsQDamYEY2cnjP5JoVh3VZeQG+uGTT+592XGgBpMW/y2Sm2T
	 BNBFgp3BS05cTZ322YY7XqxaWTsdF1lq5vr+xLhqBPi0pKRg9U9pouQ9ZFTZLgjUdT
	 8vjF6zXyFLjxTjsAPacPbaewPFlnc6qGJxlOwbdgSNr6rC96zC0qy1sFx+DWsCeLhX
	 ePUO7Y87dk2nUVMptdkDGblkzDZvfgtXpScpEhNCFJ7OrzfCdE7jqbdegjyHYNPKMl
	 mXSdSM7hhCzUy2e16fTTbWALBe2/fxYGeX/SWKLpLh35Bfw5QTkg2k6jNXHunxqPHL
	 +01qiFGbsl7Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A51CAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175827119361.10576.12234291523504818222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d99b6c5d6fcee289014ea2dff109ccc46a9de6136b4728e6eff2701b83da6bb
Date: Fri, 19 Sep 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758271193
