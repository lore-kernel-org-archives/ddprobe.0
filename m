Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39FB93A8D2
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 08:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719217943; cv=none; b=GSuyLv7t68JgtM0TSThcmZB69owmFXzAMNKFADO5Cr1HjcX/5MiAfdgXPKYlUUVFa5lzy+N5hnokkuuZKYVnmRifr5Ry/sXd+dAfv0KuhlE3ry+kr+UylDo3M37q0zPqCPAJ3tXK3Sl8HnhxrjxrvpqY6M2v1MNwrvz8fyIXQYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719217943; c=relaxed/simple;
	bh=+svrsMU536WTYLlsRltc8kOv57IrwVgCsAJBAQ5C5oE=;
	h=To:Subject:From:Message-Id:Date; b=bnLY5XW0vLO1pSebArdVMQ9XSHo2x2wRA4BxYN7sLqYIdMIOKJxjIM5nCcnLgrPBR8VeMvLL+EtmA9YrzzU6PULgT+ZybHPUsPxUFjvk8ZmmKv54Xmu/oVs7OmPozfitABMhxs4SwOkI7h+p6nBX/kigPU399PXGEDeVHep6hkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FVjONJQo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FVjONJQo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56DBC32781
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 08:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719217942;
	bh=+svrsMU536WTYLlsRltc8kOv57IrwVgCsAJBAQ5C5oE=;
	h=To:Subject:From:Date:From;
	b=FVjONJQoE4enbPYcRbKkMihz9CPcrQAV0aVVFCsL16EZXiSXZDA41Q8MMLAYoF+Au
	 9A17/uuPUbn+Dek+1zzpAkC/ph+Oe6VkIlF589UH/IR1JT45i8p6+Plm+3SPZ/yXY8
	 YZL5ueleiOGQr7R4EHaTGIazhYIB8Xzzv8jWJU7QP9ySB1uH91EhingdoqIAP1/AlA
	 2jHwm6HheBPxhaRveIGonNdI77bltyVwtPrEMiOcsnqfrDeErFczGzPF9dbsFZ2GKD
	 U87MXWj+3wcCHpTxPtsu8wICOxlRP8Yw7dV1ytU6v3ePuwqf04Rt8e2qEnypT2dJfK
	 EpxFGNVjLu/NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C09D5C2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 08:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171921794277.5883.7351393918589740078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c0fc7969c5abffc76359a93d2ec0487f48366942f6af1fd8dfbee0e307e3c7f
Date: Mon, 24 Jun 2024 08:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719217942
