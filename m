Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2D7433BD2
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 11:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783511914; cv=none; b=bSM2wmzFbsEsO12WtuQStW/WQnq567TxiajogAztQsHVs+lpA9sABCAghDWVgbGlwyWKHrp9/TFsTd/fiLcytGgKjsldkN0d6KVwE4A7p6apTsMuQoeu/EKm8eNwB8rZ4UJQlxytDazkmOGOxetTKwgCdvhM/SPYyx+jhwdUUQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783511914; c=relaxed/simple;
	bh=9rkT/+2UXK8BnU2FcCyoIUuQ+mXYVsLU6m/uTNO1lI8=;
	h=To:Subject:From:Message-Id:Date; b=PfJ1gam+S6XKLa6A+/885/QNwDcO6wOIjrwULU5WudaXp9vjJcJ2ye2G1svX9c6aLfOEnXXM+BaXvOkij57RqaYdmofkHwJc5DgTBjh5DpT7Llnl8O8nUD0XHtTeeFQP0qFI2mEe5Czy9mACBge5AnAns97SD3IufQC/8YWotps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IW/Sj8zv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IW/Sj8zv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE63C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 11:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783511913;
	bh=9rkT/+2UXK8BnU2FcCyoIUuQ+mXYVsLU6m/uTNO1lI8=;
	h=To:Subject:From:Date:From;
	b=IW/Sj8zvZaKvmX3nLS1P8ZJXHW4HQvrrD74YbQaERVJXcpS9MGLSwap8wStDiLiVk
	 FwEBN8Jt3YI4FqDcS0zOhtVmejpEAJE2P+AAg2H2YuS9+f3ieSBrioYf0j4ReLxPUB
	 hmyMAJVbV/U1wDdRF/erjV7Pj+hEeFjnTeBmI2WxoTclZBn1rS5LVr1aYvvaA+ekJa
	 ANuEkUtYW7oEv/A3qlO3CXGcV0W5fnchjz4EJKS8cy16IHSuFETmZ/JpvlxfRIRV++
	 NOXXhHNhQx8gv5G5H/YHWqBTAJsvYZePxe+3uYhVnUz1exeDwKeujbXP0f2Vv1PGYy
	 R6MHljhKvONCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7A1C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 11:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178351191369.16176.10493716257250425700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8fe04492f3b9546e416b414c64394cce9791a3e1ff28e64d60642fb32531637
Date: Wed, 08 Jul 2026 11:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783511913
