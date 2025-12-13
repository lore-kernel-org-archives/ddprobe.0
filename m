Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 106E02080C1
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 22:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765663974; cv=none; b=ZUhBKh+uutD6PZecEGUrt//4gSK33sM/Ckd1v/q/cp4uh6YSPei8XR6iugvf1wIIIjREjwtIznZKt8Kf8aprDIqfd+w0WnF3NMTVNhEaMPImWg9tktUC7bKgaAKEQP6DDVBP0xA662dsud81aLMQX+zt+9duVZFi34qljQfehIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765663974; c=relaxed/simple;
	bh=DAp4Mnk6tL2fMz8iLHYjDgg88fKTweD3FUeXDSkYyAI=;
	h=To:Subject:From:Message-Id:Date; b=utxAJp67wFCuq0Zj5hv3e0q13Wq0F3yehzSGhkzvA8gvy2s0/OQmQCurVSoKPAkBaKBC42VxcvVARXUALRlwk67Xaea2ejOJie91SiEdjCHydBUZ6DtU22SuauwmUE6teGgN/yEWRRHgmYhvNWKTwkUiU8nMOHyBG29NYzGr6qY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PH27uFps; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PH27uFps"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2950C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 22:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765663973;
	bh=DAp4Mnk6tL2fMz8iLHYjDgg88fKTweD3FUeXDSkYyAI=;
	h=To:Subject:From:Date:From;
	b=PH27uFpsIL6ePsVuloAzFaZBRVW6/k76v3r5ibHaApypv4pZZ5tHBylUiaLn7vRiw
	 spSTcxqw7sFdioYI9zDseA/6vMcehazNyRx+m5aZaXeCLvANNIUJYAQZ4mQqh+O+tb
	 MzGhyXpjOHJnfl+Tm1nEgYgD3uXn4Nsy4zdqzpaaMHTnbQXkxSkNY0A7OwtVNDTTGA
	 h5fL3ocX+OMflUemo1R7XOlOpp6o2bi6Qtlqn48xFwcOBdNVXeO0LBYONBmVc9MKGs
	 cQr+ht5hyLKSnkxfur2dEP47rwYHFYmUN5SsUvfbdT980lWikJeAvXfJ3lCOrd2i65
	 /ZtDCdgIKHaBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E1AD5B159
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 22:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176566397358.17138.13925646931934287973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75b4c26743e89ec973bbb2aac727a79a8e9a846ffaab18788ece2f061a776db8
Date: Sat, 13 Dec 2025 22:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765663973
