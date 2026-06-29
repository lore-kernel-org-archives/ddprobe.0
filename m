Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 028B230EF9B
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 08:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782723514; cv=none; b=oq5QEqlzRsEovNI/DCezK/whptdsZUrdm6bRehEriPcIoOSwcw+y9FkG96z+WMulGcc97R5Gy4hANkoX17In38XwGdnbuyBvkvCX2g6OWVFW6FllSGkJDJfcQ0UdIw73V0qNcJ0u+wo07BQyGG+FUMLiCDqSSlX2MLrQ42DVqdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782723514; c=relaxed/simple;
	bh=kaNJt78a8Dmn41vWvEQIAS+v+8S0FMgVc2YD/OGSZUA=;
	h=To:Subject:From:Message-Id:Date; b=gkpa5Xl0qPaZwqj5uS1ift0GC+9zTUbRPVPa4zSyF4I5+B/z0fHm+5Jeyz6gcSx19TOkes7tYxZRTszpzsQ7TuMEEG/68KZfMwB+cRPxISRL3G7MHuGajwq+SanY1xyAJr0bGBb1w0GVZACa7n3E3KEWHcT6PmBUlL8Lxy0Pu9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oyeWTTNe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oyeWTTNe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4270C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 08:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782723513;
	bh=kaNJt78a8Dmn41vWvEQIAS+v+8S0FMgVc2YD/OGSZUA=;
	h=To:Subject:From:Date:From;
	b=oyeWTTNeouYGLSpsuiYd3ijL1ZUzSyB8uTDVaT8j70ndzKjmqv32RmuMYhNWpndbE
	 awq0BwA/Bc2pCx1YVeO/kHpaiiggy1B9ycydp0GlfD0wSIkBXwvMjZL/5+QkTmTb2i
	 q/+CkSuxkcPPjiO+2p4xGy/GasTbadJ7MnqAZP11V6JBbB/K3Im4C5Tx76RxIMpKvZ
	 RLvAXO5MK3KGsze7yHcCQ5I/YhShccgxynZ5Ds8ubvUuYmQIsxsJNSmHuNydtd36Cx
	 SJgCIYNFGYCrwECumTUgFAv1yr4gedMbvxxkcv/kBUcrVtLsNEx/g+DKJCTrl8CAzs
	 yBXf/yW+Fo7RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA02DC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 08:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178272351368.13664.8711367520138929032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 357ce21219269c4c50bc85782394aa0dcbb369e6bc68072f037bc2709e37507f
Date: Mon, 29 Jun 2026 08:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782723513
