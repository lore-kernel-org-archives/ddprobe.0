Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1B0375ACF
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 21:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783544914; cv=none; b=ZtGFS1XTJfwOoYq+c381S+an5QTFDAgSPbeFb4rJajzbnFsJisxKZSgncsDC5Ie5rGkAKgOk3Tk/1yukhZ03lK9SxN6jnhP9Y8J5LqzMERuN3OrMiMKQ4E1qlAAsrO7ZsPKBCckgQpC0CQqv6W9Bi49rQ2f7Eks1Q0OKgVglasw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783544914; c=relaxed/simple;
	bh=dtrS9Lo4xYHROG0Mrb/mYDDVmaWLC4sBdLfgNPKBEO4=;
	h=To:Subject:From:Message-Id:Date; b=UQynNugtrirypgiKxsyccVpRkUDwWBA0Gg1HJ2TOlTIXTlvSHlYrGF5Fjt9i/Kd59RzvfEi5IsdPwqcm+pyx4h8qbAaJ+a2osCQI/3I38gLYLTEaTW4AEHXf5KMLUB/LFZpIQEF++1R40W0p6Iza5azBIrzYP/MS5d6XeR5pav0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m4WW66i8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m4WW66i8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD3ADC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 21:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783544913;
	bh=dtrS9Lo4xYHROG0Mrb/mYDDVmaWLC4sBdLfgNPKBEO4=;
	h=To:Subject:From:Date:From;
	b=m4WW66i81Lxcg2Oegalq3J9t4q/6m66WG+wTG5rk/P4e+xc/Pe09L4BUvFkrKztZN
	 lJjpr/p2CeRZPZ7ZhfwgJk9M1P0dtDLAUFmxdGxCaV3rr3+87Gk3DikW8OPhhzs9K9
	 xSXp8ERstHukXzra3LZYYbYE+HT0cM1NwWDHzBr9BcTNuMKZoE+jjlS9+tA+7Uz9Kw
	 WbYjaLWNcQ1lQfrFca0Nmrfnmsdmb6ULtebvMc7uVKB9smxt3QXJB4IJPjWxWG0saL
	 WpIY2yRxDtcl0yA9lkqeXdRQ20Kmhg3APJLHlUSK4pkCIl2Wvf/tae7t0f8bt66xBc
	 BNSt5Fthh2uXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB324C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 21:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178354491369.31001.10554335837696987153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3b8f44d20ce3334b2806886332a4c915e41cc9a7517bf937a4cad6a4d8d80de
Date: Wed, 08 Jul 2026 21:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783544913
