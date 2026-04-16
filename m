Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CF63B9DAC
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 13:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776344854; cv=none; b=c5ZbM1HUUUdJGVDF3zBfvsgGfRIUNdt9HL92Py27IH8/gXjVFDVPHpHzTx2xB+8CNYj9cA6HlJF1gtIxgCG+O4ue8YNvi+s2Y0sTrGRfcWOJWzjKdCwoya9otpntfAQtcsVcC44OBZy9ppVgqWQyKbfPEXF5gJCyPb4x9ImoMtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776344854; c=relaxed/simple;
	bh=sVV4RPix72iMSwCsqinP5XesD1NRvhMPepobYJV/MUA=;
	h=To:Subject:From:Message-Id:Date; b=heneBKdWsei0EbCsNsk4OzY5w9n9W6AMGcxNO0Q0B2/7o8zYXehddHHZm2MbwsQG7wB3pgLLFJSzM8YVwq0TbuuM5hAjZRFAZVa13Rx8skkGZn2tVDy1ZcZthiYDeacAVUNRKipqzyEAuhwN468Wme3CzjFxlrBZa2qE8m07VhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uXn5pj50; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uXn5pj50"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0821C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 13:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776344853;
	bh=sVV4RPix72iMSwCsqinP5XesD1NRvhMPepobYJV/MUA=;
	h=To:Subject:From:Date:From;
	b=uXn5pj50tlpWT3o0+uyTTjoUXhyGaKzXZxOjbyuI8Q86qjFtI+QKYN3E5FlfR+mUU
	 MuxtAJ5274TpQy1M4nFfVGI0ub/ldXb3XwsqmltHEqWeN4vYaXvSs3ulCIBDoPFUTr
	 JShLQOQHvnXejuYw3KO7iiqPU5qQcDNK+/mGPEzbOzaPtyKPub3y6C56t1iHlZ5zhX
	 g32Yrt9/9+GaiwzL/vgv84ioJY1JatwiJL5q6D+YO40UiOCYdOXgD79rwcHF9oeeP1
	 3Q4YQbinU45T6yfl4ep+QVW2NRgCpvs8U8wZzz0w7uLsrejTu2czpi0850ucCghGBz
	 LNhKnwQ2k38nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE61BF8A16F
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 13:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177634485370.7938.4533309454361468782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3dc1ecfff28b5699948ed2ace459249a057680c77a49553e79207941d18fc24
Date: Thu, 16 Apr 2026 13:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776344853
