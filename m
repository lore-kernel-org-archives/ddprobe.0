Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3007D19AD90
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723566354; cv=none; b=irmFeKHrZ44ZKY6HvkWhkCw5WX6ny2dEyLYK42qJNYQsC+2XN23te4xuoE9NrhXJ8vO23hM+jAeRQIOAUyYGtU+u3M3p5DXmDfkIGCL+3P3uVzZezn0W3uFr6Uhd4jdFUVnPMqo9iaqaYJ8J3WOvNavtd+Q+VGg1qfhinY9wwYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723566354; c=relaxed/simple;
	bh=oIjGOhevPPzwtEs6g1FWALkQdmQ/GiNY/EivrDHNH7o=;
	h=To:Subject:From:Message-Id:Date; b=JFedZec2KYgTvdxcd3IOobX0QynlSAVJ4PPtiD83hwWfwkFdHhbVgEbkrbJMzV0uH5E1feFtDwvmxYw0Kdm6StwJsALChxub9AFhnF3zqKE7xKLLOtSAmV8ZieQYld85RxveOSCx7ENO7XidnHmIlAW3FNPjSEH1S0CKzhdRIOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=turGuq04; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="turGuq04"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A185EC4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723566353;
	bh=oIjGOhevPPzwtEs6g1FWALkQdmQ/GiNY/EivrDHNH7o=;
	h=To:Subject:From:Date:From;
	b=turGuq04Fz7E6TP2VjokX2VPTEfl6N4wVrTlojsECETAmUiWisjzJ3Dwzzt8j0LHY
	 D2+KGNror3CObdPie+1XHFuw30aTKBGupRWzFPKmL8zqeXbqCHREdjoVTiCuclWS0A
	 N1AVAu+AperNd4b9iPhzASFmqXMTXXrPvK7VM2w3mFEbvvGBnHTAzQO0ygkP4MCITU
	 t0ZdydvAfHtuzctLDcH/46h9J4PDx6rb4RCqXz/cOi1rzNagBKmLorW3HGsNAUyMKU
	 d6lqNLsPdUloK5HQVmuPxcT6rJ2d43Hx5yCOANR4NakMjhBrA6+AMeVbxLefdolUob
	 hqKqO3rO4VeDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93534C52D7B
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172356635359.27263.12104775949269544597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcb1594e3c23f34349c1259a082186d534704e8c61be2deb38f1d32e63550ca4
Date: Tue, 13 Aug 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723566353
