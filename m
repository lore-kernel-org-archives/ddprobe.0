Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3B2173
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727741154; cv=none; b=a5o/oyflHKViP8Wm2Q9RIP5vKilspatCfQLvjr8W5CaUWf80HhfNa9wFBznEIu+Hgm+VuMRfwS1lLPJDLG7sDf+4ld55m4u8In3d7LUyN9DA3wRIi8/oBayFS7v1pFhfaAaG3qirA/meMo43YNryPQ55pEiIOR31Ndi9CdE16ZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727741154; c=relaxed/simple;
	bh=UaXJPPx2mfPJy5iLd5VjQThq1ruSJd6sLtDkS2WSlp4=;
	h=To:Subject:From:Message-Id:Date; b=XDP807REdA2Yb3HWmiBqliSrBTIcXL1SMiaR3Osd6FT2xgNn1+rHl1BniYvWuUocLjQ9ivREtMEX9LMV1Jvb/cNfAGoHK8Nm15Muu5KBbgOPfGtWYWHxWexNNa12WiubdP3wE29dgpZzrhaj5hAI91TKWHJXOC8V5Er2oERgnKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MNzyx77v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MNzyx77v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29E8C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727741153;
	bh=UaXJPPx2mfPJy5iLd5VjQThq1ruSJd6sLtDkS2WSlp4=;
	h=To:Subject:From:Date:From;
	b=MNzyx77vqxyBaYekBuo66o6Q7W9t/l8tclfK7q0/eDKc6/9lbpH1n+6M5YVCeTCbT
	 D5zWqNTRNMt9RrkOJByio24jxj6EDJ9MhPUVub093C7daeo0Gz6DGBNAlXdyabetZK
	 nSXhdHCuvcxE4Jj09G4PSAY45Jcj8RACi9yg0hMrQEqMcLtqIgxxq3l6j3u9DiOKl+
	 vvxeZ2fdhAlkW6b4wmrUK3SqkC2AQgXsf1neuby5AYAeeQUqXMIR7XYojOuTiTE7ln
	 xWzUQnuQJM0mP0Q+x347VI6HSVV8WcDfs686PEsFvzRXs4pSgTp9KP8GzyserDMK4y
	 00DjChZ1m9spg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9232BCEB2CB
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172774115358.30857.3642656594917843067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edbdf92528b59283515fe9a4d32e375aff67269c052d6c5caf11b78d2392e1e4
Date: Tue, 01 Oct 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727741153
