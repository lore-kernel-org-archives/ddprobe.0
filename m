Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B962D375C
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758221394; cv=none; b=C4u1dYHw2nyWxNi+ZHyeULlUl+4G2QenNPcvF9/O1TChnw4Eofq94nD/t8IphxO+F3jTb2/LZ5m/Um4N+d09/uoqQ5mZ230JzfxiuR1U06Q/0BH3Rl8r6LPplh74Xwu82YPUtIIvyKu+nVDhNk+JiCo/x1AdITJXCMmQMUN5JD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758221394; c=relaxed/simple;
	bh=kuTJn5RSV1ospNhT6tMkI3kmN7XKZD3XMc0u/WHukXw=;
	h=To:Subject:From:Message-Id:Date; b=bKc+2y+EwdGHC/TBFoHSM4JrIuQ+/nNsljCWQYzVSaD0/W+ghcVr5V0VO7PejHJZVjTIWoAoRu9U3mlMI1IbutbcrPkoOj6Ra917Ab//ydJuLanGrJvn1hRued+WvYs4o6Tq7b6P+Z8rZV1a24xFXoY8Fvl7tZJugSC8xL/ID04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qt05p4Uh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qt05p4Uh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A3CC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758221393;
	bh=kuTJn5RSV1ospNhT6tMkI3kmN7XKZD3XMc0u/WHukXw=;
	h=To:Subject:From:Date:From;
	b=Qt05p4Uh5x1L7mDskztxBNtKdhVFdX8ztXV/kmyD7UTEgTM2sSu4Pp+cYx3794ejO
	 urs9VTw3k3HSEue9o0vcKwsZ9sTsNpkpXNXLhQqvtg93tF2xlWft50Jg78bGg7SgbH
	 Of5BpoHwVJKUJzldxdVTLzeduXE5pxGmk1zv3MT5C+Fi3FPFPOx2wvmEdEraRTVUsx
	 YWSl75wUp1/m5veGzcgJdq8fMmyi5MkIX9mrORkz34OPwZllHxW5vTVNY3HSbzEOGO
	 eT8LtOTt7zTmQIKzfXWnTctrZ6DxtwEoHEP82MKEEULt4o1hi7FIge4mTyL8Qk5HVk
	 zol8OHAjytodA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959C5CA1013
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175822139358.8189.16628806708149371944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a060c756afd3de927b713657fe459a85c6e3919f991cd0b0998f99963a884013
Date: Thu, 18 Sep 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758221393
