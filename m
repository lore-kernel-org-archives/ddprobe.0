Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0F5424B4A
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712591297; cv=none; b=N+mXdX6pFlySs4DrOmdlvaSZU36kuekSaQpzYGnWg8OakwuMynFIgTvkzmuUG5NmwxSd92hxDuMLEK4tTCaw8h1tI3nzyTrMpxMvH+SU8aJGd8TAX5MDZk+HcFct0Thm9yxJlQjEyRS3YUAJ7NSjqdyo7OaJATTOoGMNCMjbP8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712591297; c=relaxed/simple;
	bh=VXb4IrPMcanqXxmlX2twFGIv1Utv1JvuL2wE8QE669s=;
	h=To:Subject:From:Message-Id:Date; b=HHeWwFNTTE6sbJXb7KZv7oG//GohkE9FHMhQ+ggbTlWahITxLah7E2rcWwjjypdKOuwITZz2jl/J4pufDc560EgX4bEbi+QVLWGdM4O5itZBctNk6/ZGeS1u6RLGvt7p8FaueGww4rjXClVGP9XoyKhstjIzrrYeknGHgCjMFYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mmjKWSya; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mmjKWSya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72659C433C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712591296;
	bh=VXb4IrPMcanqXxmlX2twFGIv1Utv1JvuL2wE8QE669s=;
	h=To:Subject:From:Date:From;
	b=mmjKWSya+CFSriwdOGhr1UNvUTU1f4Jpjmu2eP/xyiMpdjGUjociSYU3Pf0PEhB6R
	 g4+dqgzGLRGWbA4wqKU09BTtHk77EzUHolqtilm32LuapK/fXa5uk+qtqi78a67NLP
	 gHNckEOVWW5UjXrKTX+za7BvfEGoSD2MuWC8m9RHqFB+15NQPspowpuHESpSr50iRS
	 qyvpnh91kQx93llYiYPa4Kn27lkXu4+lFzcr63ZC+RfrefeXEs8nI2iWC7iC/oqIeX
	 KVCNdfgxRNqgFOdawGIjRuwzJ4Nx7OwDWOMf0FqaKc9sxFUl9v8qukDvH3DJSA/D2c
	 apTOm/tkItT5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E7FACD1296
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171259129637.2393.1217469640012514479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 419c6a6a6f0271f39c13e0ce7af482116d12b11690f54b0e611d64d9f5b41385
Date: Mon, 08 Apr 2024 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712591296
