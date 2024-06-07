Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EB9119752F
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 14:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717770443; cv=none; b=VzA4AzhGN9CkDano1PA0cePfzrawKaVZpAjd0CQUYJzR4Iza+vWhT1hKd5PBCO7CszOzM3VTfofNWFT1j+8Z+Xih0KWk6pWSnvZTY8UlfBxOChJwyvGidsDmi6MiVrJ0T1Ovn6mBKTQehEb5mTzlB1ftJMVDmIS3gRnA/Xjvlfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717770443; c=relaxed/simple;
	bh=Rhz5NaqrBGfIcCSS1juUBIt1VIx3qhuUtaI24il7Q8k=;
	h=To:Subject:From:Message-Id:Date; b=EoRO33CT14hOCJH4XjQsQvxjceqJ+kyjS0AChBiPmlj6qF+Isi9gvvOcYvQzq/CHtzucvTFoNZQIZ/D1etQflTf2JCiZUTg3nFY9vEs8ygcWa1ryWUdgnnbLllP1UeY6qQ5jPsjbjA9brWQUuLKTjxmbCN6VIGiCPCyHFiGDlvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OinxhKSt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OinxhKSt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05B5DC4AF07
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 14:27:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717770443;
	bh=Rhz5NaqrBGfIcCSS1juUBIt1VIx3qhuUtaI24il7Q8k=;
	h=To:Subject:From:Date:From;
	b=OinxhKStzuIUuaOQtIaVExHUNXSqUGfUDVT7euOc1W7PBZYPairr4hwEIXH2E5Qh9
	 CaP2/eiSD2DP82cKu/QNVeQKZLYjoxv7aJ0FF7vOpoCl5auXU9NMwIN1Z1vIMUPNk5
	 4ywrQs9oplscoOues3hCqv4VSFoGp92laffWnchxSsipX1rQjQYbn+76xzkpuxnXzS
	 HX1Ix4mUuabaZ+Sazc3DFPQhi3VleQ2cWRuSLMQ32D8jcMhnhthWiMVgl7apt0SuNG
	 Rw5q5hO7LrfR8WP/Ygs6OnQLaRIeIbzzIacIf3YDSRRCCzVajJ65gjNnaMqsQAkcqg
	 GczxvslwW/o6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFAA3C27C5F
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 14:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171777044290.7388.8131128827493176482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 257ceddcc8e696e21c39a7e097debdb6c88f557cfb8ed16746d29b2e30ccda99
Date: Fri, 07 Jun 2024 14:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717770442
