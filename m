Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD7792E3B19
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 22:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763765514; cv=none; b=NJrAgGimcf+c/GzUaulZtP8PqOXzCTxjQTWhXJ3oJmHBD5vKb1qIeO8/PUVDIwfheuO7abCZcQwYaje/CNT7GxWQG7McfB78+uiJS2q0SwP3fMruIns7RWJjsVThtHrP8GPnV1B2CaoW4Zu95T4n6NWMtIIevcSI88rDoa48ZL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763765514; c=relaxed/simple;
	bh=oxy/dRxd5+0/jIcTD8u9BxLyBKDaNapt0wJLrwqDyPQ=;
	h=To:Subject:From:Message-Id:Date; b=IvrWGxGz6ENi7Gdmysl+GnCJ6xq4k1/kFy2i6N0+TXYmvJgVg4NPgEhpDSkqcVcU4blMbKwt2/zzIB7gabaV449BMQTx25lQmP1qMOBbrFrEP+/4Ffu+jBKiAuo35oeL2IBkVkmoIeTWTm09xrphLnHnbrJJevOb3OBsd/o/2LA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TylXFQvC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TylXFQvC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6ECAC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 22:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763765513;
	bh=oxy/dRxd5+0/jIcTD8u9BxLyBKDaNapt0wJLrwqDyPQ=;
	h=To:Subject:From:Date:From;
	b=TylXFQvCFK2F7vK0J+ZpDNSGt1nU3XFdSpBvILT3PnoyvA7BUwAQOTLO69hQBm3mI
	 cjUuxKAtxLH5s8TsRWmKqfLLrgvoNlS7IaDFQfYQDRtw9uebwMwsDNIF/x9IgD/ZXZ
	 rY4amF+tm4gRBim34Djd1olhO5NpKNIZ7PlHsB/065obmnePzYqGETFnCcqZ6p03HG
	 7tLPQUqADKnxRV+N6adDIZ+zwEvIisuOQZZ/x48GbX2W+mwZZb6MxkMx59cn0KjrYk
	 +uZFfBQunApLBIDJD2Vheqdn5gJD1RlL4EvqD7+iv2N+jBgC13a0u3APBf9G0SrcVi
	 2Y7cr682+5Qug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9471ECFC50F
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 22:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176376551359.21286.1084496163743143126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed531ba25ff88177e615c341892cd96e89babb2d99a2065cda92d057334a8165
Date: Fri, 21 Nov 2025 22:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763765513
