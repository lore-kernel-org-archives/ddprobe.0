Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFE935962
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736135754; cv=none; b=SRRId0VXkBUAPI0gmsPRkwZ7kCJTeGvEjMDZzmn8pf5iwhZbiqklFduhI/fEkQ0FmRyR1pIbkb2bUlXmQqplp5B8sB+fLWwj8BUWVxFuQy6T36bdCHuXb1JemkjjqXjAImWJq282cGuASTCuRsGsMTHcHV7W0CwNeK0+UAlVamE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736135754; c=relaxed/simple;
	bh=DdUrYRx6Aol7g6xEJrmoBMz4r8Y0ckPfIGrUZoVJ+MU=;
	h=To:Subject:From:Message-Id:Date; b=iRfaMswjBvf8J/1NcMxXAloOYXUBs8mw3LdHei/5YMJ331TEFxcZdfHvtQPaAXOBJkwcWBWPa7lwlzhTjfjHT6zNZXFi5yr2CQUchMTUk4ZZ6iObfLV/R1bLZnwx3gVUp0fBOaKELZCALQDsAaICFP8G/V2kFd3NPwVQVzhYKqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BLgTht/s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BLgTht/s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34B5C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736135753;
	bh=DdUrYRx6Aol7g6xEJrmoBMz4r8Y0ckPfIGrUZoVJ+MU=;
	h=To:Subject:From:Date:From;
	b=BLgTht/suwT4f4w9p1kh6kFd69sWrKCnE7niXSCUu8PpoCwBemr1xFudSbYz4M4xA
	 4sy0F9jBsiwgiu2SAHWEanjgTqR5PWyTiQScktyI0iYHocxle/wpS3yBlMe6l8pMz2
	 ZXnjBP8urMeyU6Jfo3EAk9DCSeRxMwQEejbvIcWkfAHNFhGIAzjq+M4afIdHm2Rx/Y
	 HR2fsizEr/VUT+bv8I405Uyal2DXQczFIfPdQ6Kfx+1yibisp5tSlr5qw6uz8QotSD
	 cAVv4VrB3Bhw7o5bUBrD2AVHvwSG3mKEefOknjKfWxD0/B+D6EuC0eTvEKdOS3ecyr
	 op1V5Gmw/Xn4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EB4E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173613575359.22857.9301421149989673580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad100163ba36a7d8b369ae026e87023e0125edb6d4113ef32ecb8e79960de94e
Date: Mon, 06 Jan 2025 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736135753
