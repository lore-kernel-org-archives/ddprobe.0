Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31887C2FB
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762109394; cv=none; b=CU7cdSe9owMw/YlH+Oj1rV7xdk3r3H3hiR/stYV2+zGk3W94c0a3tDsvhWDkGOk0fRlXN/Tq3xOmNnpGdwI/w04N4rlXNGWYfADeKSDthyTd9l796Be9IoDK0xzq3gcJA8UlsMl3uobkEmJiRg6yNeAlz2skp0anwutul1J7ly0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762109394; c=relaxed/simple;
	bh=8We4+vBYklxm00S77Z+ugOOmlYTMpXSHrSEi/G54rn0=;
	h=To:Subject:From:Message-Id:Date; b=TBRALusVdgR7XRpUkeD5+88ZTi9Fej8iHwP4r0vd4Ogc13m1KiuRDa8MavyaTj6tVKtWKO8AxQmKGFw1jv82CW6SejS9Xtns2n+AYMvRfAduCgNJKyUiBzTobh4/8dY9Y+C1Y0ZkzF/IPLQqkPtceda2NMnxmUvBe5x8K5F0+As=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nySdQWCK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nySdQWCK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD260C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762109393;
	bh=8We4+vBYklxm00S77Z+ugOOmlYTMpXSHrSEi/G54rn0=;
	h=To:Subject:From:Date:From;
	b=nySdQWCK79i6UZTBNO2UTY4yr+58b9FysI1YQcj3loRi6gDbWQ7WYOTf2269u+UVj
	 VfrQYHfEh5gWB5CXH0KRA0NQE1LFB6pz3eO+HvFApgEMK9CQcIMBPg/ro0ysx37mhV
	 rjGhptf0gDNfZ6n9ibI7HIHrTHfMc92Ir5lOo3lP/m1Vnn2Xw6g18lOFzKcrDgNPGw
	 222i0lM4BFY5ZEO6X4xZTtpZcxmLwaP7oFPoGEl+Mkz8ggBhA5wZQSLuR/vzYgluVQ
	 jgsXFZ2fjvDUUrrgLWdqCRdQRqH80Sczcn0HnSYEB3Rc7sUz1XzoNddUTwgbrWolsA
	 ToKQV3EYEvXsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB70CCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176210939362.7476.15733788560922430260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10aa075040da725a7b7a7ba2821afab703f8ed5148c6431ab86e8e45bfb8cc48
Date: Sun, 02 Nov 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762109393
