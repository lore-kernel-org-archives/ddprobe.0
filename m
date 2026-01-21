Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EA3340FDB5
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 05:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768974234; cv=none; b=DCJWAdmQO4Nr3FKrNZN7tt3PdguIioa/t3CpavbP10VaaXuYpDAhiy6jnuH6iYH5EBCioNe3MLFbcrw1v7NOeyX5M93fxh0JfKPFDd4sRKENxbyAnb3QR2/mgAI0OSMldRZhhLHGG37ybRs9Y46A1JVuBi3RVHp3AwbQNNfhH9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768974234; c=relaxed/simple;
	bh=hslUOWtE09eT17mBRai9nCxGS0JIo8SPlqsLadB0Y3g=;
	h=To:Subject:From:Message-Id:Date; b=po3AGOzcAsplqZejnZPqM677H2D5eHagpG0i8u82PUHLE4bNyU98WD9EGeMd7IG7fdM9NuUq27bQjHWCkcPPyREiEsvX9hFUApCau3f0zpaIfCabpk1K0p938YPpgs85PpAC87nSwaITbEP7XoucIT9SeKnIKw3Fd2o3sY95ONo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pLVknENz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pLVknENz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6933C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768974233;
	bh=hslUOWtE09eT17mBRai9nCxGS0JIo8SPlqsLadB0Y3g=;
	h=To:Subject:From:Date:From;
	b=pLVknENzD4/sajxZ6BFFMljruGMeSolw45KZNfQGdHBOdfmF2Jy49VrsTzRokbdal
	 fmOby0yG9uBQMm9TC/vV3cRHZyb+e9vZbVMrFfAOr88oZp0DpQLzSBIeQvAB5YVvMV
	 p9RmiV5JZaaNFZg7Bi4WhQuag0+dPW403N9Ok8UCPub0+xhnYjZH/2UXwM1WcLH4Yc
	 oT0MpoSMA0e0PS9y/S6SQh1XNht55ytdehObuc+fftCq3KoAs7aBoxzKS4Uwm9Sn7R
	 obRQIABlFlYVGAlEiIkHK4NSJEX5hd1iYocHv3pqipRIFiayd935dFZFkV1SdWCj6j
	 OGtQig64qT7/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CEED262B2
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176897423358.23283.10670326555611605434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bd31b9f9fdc52e726882491a86fbb15192cbd53cc9bf96ea0fc43c99431e15e
Date: Wed, 21 Jan 2026 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768974233
