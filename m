Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0382206AA
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744022994; cv=none; b=J8Gn/Tpr0vTP3usqkoPIr2DSOOb6n7a9l3Po5+xzxNGMYLX0zxtThU5ALdcGLaozY2MKhohaKyP7drguzZT4+wPgGviNwFH/YJOZXFQL0odxMXxqGi8d9H/INJR8px3QCEHQ/Oe1kLvvjj/yC6mtDNiJRvh+eajRHzr2zSUfF/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744022994; c=relaxed/simple;
	bh=5KzrkLEkZ4zN+14Ytdk7ffJqKqRHYNNhoxaCBZhbjS0=;
	h=To:Subject:From:Message-Id:Date; b=KdK00Bo8qfgO/ds0zLWeFKoxBjtrlsGdytTnV5aIZtYtrpUYuwpPeWDOgq7+sqdNMoQvShH1tQRyQ6GERbceULaWmNN/bxRNeSpoYRwenzLqlsu2U3y5KysBYivVbEbHVMdS5G4OG9Oi/5lJFzEAyI4oXGKGI4n/0ZbYYsGOoLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mlp1xG6y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mlp1xG6y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A647FC4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744022993;
	bh=5KzrkLEkZ4zN+14Ytdk7ffJqKqRHYNNhoxaCBZhbjS0=;
	h=To:Subject:From:Date:From;
	b=mlp1xG6y/cx2e8E4CsUTlW6z7DHMCtUjvANC2lmC3t9nbkXvO9sSPl0hGNcgycfht
	 zWOBP2ch2YdO6S2fNSAoeteGCKJEVEVQ/NBc53JRi+qdXJajLMVvOGojP4El6pOAfz
	 qZIH+ctgO8e66lqFugoc5mjAy7KYgL3zwHLCw+5jXSqeN/SkX86ATydf+ni9/1Jmww
	 Cgree6ldxIoZtu6DbJqbWq4Iavpp5/YIWxF4xGOQhhXOD9j1bKYEEvGZlvibJ3cFlV
	 o0PCFXQNLWAlmmAu+ilIq3U52ppf7Xa+B5tBZD6XCP9IYvsEGS+kmd0nOQ3fyL4b4J
	 B6tNG3Rqed1Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97424C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174402299361.26835.3821240086420459983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51c3bb54878a98c5c3590a8282d1e2ee00c33a0d91c3c984bfa6b9e568fd441e
Date: Mon, 07 Apr 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744022993
