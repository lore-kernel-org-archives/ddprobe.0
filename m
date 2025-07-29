Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470E71624E1
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753782594; cv=none; b=fyuX+I1USVnNkqIV/xq5Ebx9G0OJelHMPpfh1l8eqAdnSkCXpMMZogSE9tT9l9Q/DHLwmw3NE6dh6LxaESThFUOTuTAGjMR0ck9FR6KYcYenuGql3gFX1ggPt9FyWb3VP7rdhxh1JlYJD5NgVfuC8nlNzq451hMjGMEyacx1vv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753782594; c=relaxed/simple;
	bh=dloIAkwiFAZ8/kNtjZvxmmKCGZZAmnxLXAggixsY6MM=;
	h=To:Subject:From:Message-Id:Date; b=qB80AWqM7rv37ZL6h2ATMQhHp98NVa5y9dXgibuneS5crCRGPFgYiJt3rcGAItOdH1zju/EpjMMXJ6m5FB+3qpX+ZGu4dYsUNatYLTpCN8MQLZ7SAx0GIKdM+GETG4C8+IhaWKqC5MrPvDc0ctwPFBLBCISe4gV2g1S2YNyCP4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WpyHsGxt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WpyHsGxt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16D1C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753782593;
	bh=dloIAkwiFAZ8/kNtjZvxmmKCGZZAmnxLXAggixsY6MM=;
	h=To:Subject:From:Date:From;
	b=WpyHsGxt8EprfAKkBK+s5Y0SmgBHeq2C29LGVI+ltZAei7OHcBViFLRp0PjMxXZz9
	 PLIpGolNXAGDsPV2FyiOkdo5oq1uSHTS4OyF0UkYoOzJVOO+8qxzD6XtKL+/XSaAIc
	 TLOGQPaHjfjH4MwyElvxmLgpgPWFPxpEbqu78hq/0UN1yhzu5pvZufVnHbeYPmTKmA
	 cs1l3JRv1TEXkc19SeaUhiQ/pEHJcc7wSvpuK4068laudccgxDZSBd+QY5WHhwNX1j
	 FM2jVzIlAnFD3EjjkwCkuXxA5qdeFoMNQX3UC38Gh6bEZ4F2ZturkS7Ev59wI8WUM6
	 rVLQBBJmyG62Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CB6C87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175378259357.28642.11843417516183412215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed246a10fb530bdc51883cb8913fa79e886aaa74981a1b5dd43c00fc530b8738
Date: Tue, 29 Jul 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753782593
