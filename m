Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2E913DDD5
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 10:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714125743; cv=none; b=O2Z3JsqBFzQ3x1PuBGBiu7N68fnDkkfHboTziYMkt5wa6KUsTCTvyYmKxxkdKmkeTLM2o9npPLcW+8CTO3R2SmFYF/rOysPpIIlokUy/meMH4wBA7W148Hlz9Dom1sL9vyrI1frRAbhhoUOBTgVq0yHvEbVo4qdfdoyRILFkhGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714125743; c=relaxed/simple;
	bh=Rwbh5fBF9fstxMOo5srgktL+Bjgf2McDEHcZgp2Z4J4=;
	h=To:Subject:From:Message-Id:Date; b=SOzfNoxaFUgeUbnABhbHePzQDXOmzUqfqs3l0m7dmeKjlKZotrOSdaG0n9hTFJNNvJDmdqpPEO/pzDdxolvWno5GDkHwNCCmivTNBo1E31UpouAwa7tYxFzSwjb8a0r4ng+rKlm/nUnQpMEI8UoTURXIJ5ryB1w55gL3GIEelQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EeGXZPzy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EeGXZPzy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBEFDC113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 10:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714125742;
	bh=Rwbh5fBF9fstxMOo5srgktL+Bjgf2McDEHcZgp2Z4J4=;
	h=To:Subject:From:Date:From;
	b=EeGXZPzyphxlDjdDgVU4Dknoacx3IY3jcC04DFNI2CMLmDPkActGvROwl+a7bY4FT
	 Apn6Qb4PD28cz/EbocIf1+CSCzXQt7ed9UGAzl1VxnprIPro2Tj5Xb9FgUXdmVjRll
	 Usd7QYSon33H3Cr8LqMcxPhYAMAesMIoo0/ibBl2JRgj14Ctc91KdbsUmzkMhGwT0X
	 dePSMIlN4BHTP7jbqGvxCOEleQlR76Qd7vcix4AGMtaTolbgJTKfsR8U7f84M89hrV
	 xiJpncUFAn4GRfG044ChXbhw3KTsHMYA3lTN4YjkrkxtAq0OUTbsaCJTwCjbTByBj4
	 bZs9Qr9dQD8aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1F75C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 10:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171412574278.31854.9555410464952586336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f50d82a4db94c30111446ef22659b01f8b111622c0b565fb37e91f549c181b04
Date: Fri, 26 Apr 2024 10:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714125742
