Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 538D52DC788
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 06:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762929594; cv=none; b=pfyPoEvJLeMR2GufqG8BoshJBgb5ZSYzvf0WCNDc64+oEz7YGlXhU7IYWOn3rO68w7tJhKdDB8QKzcyUFKjfLxMWUiVKvTddop8Hy6vMle3H80/JAT6PSNZPQDsGT/krkFPj8gFuKshdsHIz1eWBKvEWTU9ELfLSJX2KcKhpZmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762929594; c=relaxed/simple;
	bh=D8hhkMqE9TXci7nRJKxMWsw2jOyuYUVMhuxYD04MBQU=;
	h=To:Subject:From:Message-Id:Date; b=cd9f5Jn9/EE/LIzjh1EIPh6x9uXjJq8x9dM8mjt/ZmZRJRSPmubwWDtQTDFs54sL5tvqNCbaEFIwlWQXRlb4BwIm+TWbDSXdXETupG81hpLBkjWVJTJgGc42GeJ4CLvkZQ7IwKLB8skLuMs44tfKq9sOwHHxCIaOHEFpFUr9wX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EMMO4LqI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EMMO4LqI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AD0C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762929593;
	bh=D8hhkMqE9TXci7nRJKxMWsw2jOyuYUVMhuxYD04MBQU=;
	h=To:Subject:From:Date:From;
	b=EMMO4LqIY4c8T3l7dJNCgDYVKDUEaYA6inCczIYsoJiG04f8CsXTsG2a6M6aO3tOI
	 OKh0OrR9tcqV1Z8k8YM5DvZGtnpdn92+rtXr9hRZlNyEV1ceJRklrpMeXYsFQsjGwm
	 vy2dHbzLW1ADNUZc9soCKyExrid+auToSsyaJeYHpbVm7XjU/PO5ZxTcgGIMOc/KOJ
	 YSrtDOzkeXKN3YGA00Dos1IuTUkq6V1imJJTxd/rOFTNRZad+2dXRizp8JUF3SproP
	 /JnhejR01Ulqoegr45S6v8crh9mzcohXH45E7x8oLaT6//1P8WwUKDQDYRJ2BdGKGD
	 ajtL52KqixnDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9C0CCF9F8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176292959357.1260.13440212113412658606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7452772198bb1b8af7672fe2e4f59983963fabac41f11e2c9c032622cce4e4cf
Date: Wed, 12 Nov 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762929593
