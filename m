Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210C52D2498
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756466394; cv=none; b=ZMdA3mG/gdAhJFQNZsp2k101GQmNZNMpdY9D6Py9x+iaYe5ZhCzG/RffpKATVi3GNM8GQux5d5n1Ee6hCA101B14CZM6eqoLNX80GbjMj/xv0O06duFJW8NBsaczEZQIl4UBMtD4+WrNkmBhtNc9R6GMFVSTNbZORdGLsqSBR64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756466394; c=relaxed/simple;
	bh=cgbyRwtZcQgbTwDYLysLYBT4t6cZothvW/Lcd7DjGd8=;
	h=To:Subject:From:Message-Id:Date; b=UZaxP6SnhEJ02b6jVmdNGTDMTvscdO0rU9lY2FiVrUsfyj5/S7rkl4k2/o85WxRYnmpMpDLEnV9fcPfLIOF49f7oGZmRyUyncsVw+CPOp+/RKKx+fxFA0tb+v8EQQev4DSW+ZtFgJLHEF4yqpzJ8ATHYsrA89JN+5hdgw3kbg78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lhdUxNsD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lhdUxNsD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8D8C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756466393;
	bh=cgbyRwtZcQgbTwDYLysLYBT4t6cZothvW/Lcd7DjGd8=;
	h=To:Subject:From:Date:From;
	b=lhdUxNsDTJkzRi+Vr2Rh1R1ccjVR1MbXwrxfwdUsy7JvUkhvvUuJCDoUCyMTKFHv7
	 xQLgVUuQGXU3t3pMvTo0tQfVLtv0w3VFsahnU0Og+jTZxGVW34xegTNoz+etKWcQwQ
	 Zma1LYL1kKMKc+V3U4cNdr8mD13d3yOz2BmdNcx4sMqp1nULjooVG6p16FitnRln7v
	 Uf4jPHXytjaBSEW6LG8yq8b7tMrfAyXf5lStTL2wjtxXvQ44d4iRfJRHZ/h7VgzhvK
	 bkVTmzh98OTmgWeupd6oyox1+foK93uyDhiijQDGRUTXs/i43muwHCxxJomfFPraBe
	 jD5nVBvVm+j0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE6ACA0FF7
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175646639357.20679.1764990343099654262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf6b7da4c1b3d419c1ca9b17ba5b44ed9255e4ba113d6e1a4186a8a1106924ed
Date: Fri, 29 Aug 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756466393
