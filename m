Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43CA48837
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745179794; cv=none; b=Qoi519gpgUD10bNJ89AazyHahKPxivBC803ZRanjzcSGPMlQNi6LMrerhfR6+zWRqnFUvp51ebL+Y0KabJzIb8zuJn1kCM9QQYaPe2OwCSdmuWDz+3BVE5MawPaic7cAn1Tpk8hQeubBFSfhjKnOSbm5xcZxdNu8d2IsWfx8uwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745179794; c=relaxed/simple;
	bh=Qkhrdtflp23X0lzawLO5xZSkyWmHUBqV7AVdqgdlFHg=;
	h=To:Subject:From:Message-Id:Date; b=K/Y8EvX5+CPinfxWQb/zAJtqrQzbTFHQgwkEVYGLOAdWVABAT5mtdzecuSU0XHBoGf2hHyNQU46w47WbXRb86lvgs3kyO2Q1UY5p7afo5FcYV1+YOcWMHnbUIp3un/O3dNTbkT9Ap96JrGtYqXAxtQsz5e7no+2Fq10P72DHbH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tkY1q4Nd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tkY1q4Nd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0650C4CEE9
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745179793;
	bh=Qkhrdtflp23X0lzawLO5xZSkyWmHUBqV7AVdqgdlFHg=;
	h=To:Subject:From:Date:From;
	b=tkY1q4NdUpaVU2BzoZZx3Q7VPQkFacYHgWGm/TVdYs8C5Mqi8cq2sa47n67Hm1YtP
	 bIwviMSme2OD1Kyptw5VXNVlp0z6rilnAtGodjdMNELlFp61YuJ2pcfuDr7G6Kea/F
	 /sjG3gwg5+RNbG/QZ+tbYhUz6tOFDdaT/RaAy0w7XKgSHbrZEL9Nage9CKG6v9Vc/4
	 33F87FmUPR/7m+92ziVUWh6zeCVW/bkFYyK/BCiMHut78wV0Y7/dm+UC/MHbGHShx0
	 MaRL369fjIoba4rDW8Yafq2GSzLtGIvXRAqpEX8zAlHfIbBAgBqVi0t9hBFrofFIDF
	 B2tpNDYH6mybA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1ACDC369D2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174517979365.27986.1465027317785533701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90d3e791a14f3409a09e9c0bd1dde29ef7f9c93b99681960d249be38c605ae8d
Date: Sun, 20 Apr 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745179793
