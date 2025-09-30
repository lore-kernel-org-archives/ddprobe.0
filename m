Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBAE713B7AE
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759223393; cv=none; b=tugIW55Ed9uXUGusWSw6k1Iwf4pl7pmAf/vYCRd3wWSxgksBDmpt4r552MNXcZa0YMGVzg6RUn80GrQlrjOA3j9rPSKBw+ChTxGCEJ+s8tIN2wgN0iADUikC3asWy665gUc8iJ3krce9WUOueXUmAdj88y2LcJ07Bfjb7OzQH/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759223393; c=relaxed/simple;
	bh=P53PlHKXwaQtwIaHuv87kG6Zo06V6bSq26Hgt7IWZO8=;
	h=To:Subject:From:Message-Id:Date; b=YmEOMDPrWC5ayLFGraPVrX43lXTtNhf4u9DG72DfAyqERDnr+ndok5ZOkzzd+qWzE9XcpwBCTsMvQbKn54biqOWywMNhfBBE9DoWubD4YwQQrb/hxHQLT/taXTwWH1KBKP2OgtAMeYf1k90OrA53sH1M20frBR/Gi0K5l5JDGYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sLMpHaWH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sLMpHaWH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A353EC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759223393;
	bh=P53PlHKXwaQtwIaHuv87kG6Zo06V6bSq26Hgt7IWZO8=;
	h=To:Subject:From:Date:From;
	b=sLMpHaWHsVt28xYA05ADeKvZ9P9gr5lO/ucXF7yNlj+cuv7Tv3vSJOQeeqDsNqRMJ
	 m18gugpDv+oBEjLKOF5f0B2v08dpiCQX+szx8bk4mTdTfgTXiokb38vjl6V02EcrJ3
	 fMKET82yz5hJ3BDb+M7y8EKtQQISc91WhvW7/wR7O9akc9MiTFfGMbgzs8mbM0z4Wv
	 QWDwkYoQQ7kYG8Ayr+QcKEwQCFFs1qDgqUyUu8i5rylOiTrf4Zo/xWVEJQvg5fTPm7
	 zbJViUo1E89fwDtEVMP2/bizcDTqV1y2uGY+nuijfoseU08SWKrnaGl0CGrkx5Xw2u
	 J2P48S4OB2ghw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920C1CAC5B8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175922339359.21254.9044321276523524611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb9d56b0688dac781e07796ecc159a9aa4a46658d5ca01587b518f144efcbf6c
Date: Tue, 30 Sep 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759223393
