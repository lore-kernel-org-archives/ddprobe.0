Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3857718E344
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724182554; cv=none; b=UUb1k1ALf5w2T+/vj+vlQNDnB/GPwN+cskddJPJ40eIFOIBMR4khd21sqrV09LzqA7wPACMSf1ofKadzMUKhAtmbi5hG5PHP1pVAdUSCgHLELc4HfVFzBiaCnZ9V9kCfbox1bJQ5YvZsHuCn3+Whgp85aRb6NctTbrLTOfPALtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724182554; c=relaxed/simple;
	bh=7dNI3rmsEsbpAGrYCqSKMiUvKJYIXEr+K+5TyVWDH0s=;
	h=To:Subject:From:Message-Id:Date; b=EWebtG5nkUBgl61oz1RVGysBvWnccFdEdglCsG5iMUAawyv/pIn4l/9QamFDZLa8xkvEACHjOUAD2E8KfsCmOCWlyGyVhQgOa0Rrl9MseUjTL24aNeYhashanLL7e3R6szbKTZbtqeXIU4GCOdbiaE8Xp8omrr9VqkNY1tvTFGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=icJn1pIz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="icJn1pIz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B406BC4AF1D
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724182553;
	bh=7dNI3rmsEsbpAGrYCqSKMiUvKJYIXEr+K+5TyVWDH0s=;
	h=To:Subject:From:Date:From;
	b=icJn1pIzC0L88CxfffTShaftJVT8QV5kJ504kbWkuN8/edo0NAko43iRgsT2Ya8Lk
	 +VpOI+b7j9ThV+vfNOnWFKWpjbBUVz8qdWTfKt0bVo7w7nOYylzqdbrmgg2W0Kg0YX
	 VAqmHMbduwERxSa0iwEDmNvQTZPRno8TjU7xHsN95Omfo6yoBx56XwdelFhOW4M2QD
	 lHe5C2PS8Ql7pS9ZtpbFVrYN0oykC5UJU4fs40ky6F5kYihjfRi5XDTSLsFAFR+oNk
	 Unn5Nh4+EwauKWNhAzwLaiG9Gc31cE8vTbC8utCZeRKE4Q8YrTutuJNPC5HapOOYG7
	 cyp2+tC4k0WLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D9DC531DC
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172418255359.10735.1765400386939361306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7118f0a2319f4c33455bb72bf5c587f303535622ea413fc26186705216147867
Date: Tue, 20 Aug 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724182553
