Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E88C2D8797
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 09:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765099374; cv=none; b=K51nJ5hdNK/DebL8tv0oHmqWc1Cp63I8Il7LF0izLCa22xbhXufTbEHAb8jDJFeyn2nan0eQWvXg69/kETbzv7m5sjwtwAUr5FoghCEP7AhJPCFN3dJdh2DklWrhvPhtQSuujUOy+W8Yi/BNjaloWv9lgdijLSbJe0kaVPWrCqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765099374; c=relaxed/simple;
	bh=p/vpszrzjp9sWNM7aGXooEIlkQ/nDv4d9A3qLV5ZePk=;
	h=To:Subject:From:Message-Id:Date; b=oXUD+SOQibdxnajPmfLOhvepdd0WTAzxnpKSuzh3mG0NBP34ihb3/LtakRAiPRNSNuKPEGNdyEyHGOc8An2te/3QcFGmCt2w2ZQ3AA9qXRXnsw1HPMqm0lDrVOvbPp9E2SV421+BycYjglkmP0RooxwhpjlwwYN7n9/sdsYD2qE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ub5hHr1M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ub5hHr1M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F8DC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 09:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765099373;
	bh=p/vpszrzjp9sWNM7aGXooEIlkQ/nDv4d9A3qLV5ZePk=;
	h=To:Subject:From:Date:From;
	b=ub5hHr1M4q5UbvZHX0/Uq/vRkm63Yk9GoF7hvegPtNlP2qZmBZABiTTO3q+B4adVq
	 N+vvp/ZNEeXXWSww+r2zn/kUOJZkRLjKV1gQjQtiDRinssDF8C8cH2FHhPcU/tSR7W
	 KlWPFJb/lI5gGqxy90XUNzuIDp6JP1Tir753DwM19bw24cwEWInoGXZdh2+2TVszPb
	 IQablc6vNOFm15b5Xq79Bj83h9wFmcnvzWvobtoHwwKP87nvv6Lfz47BqBlBeNryIl
	 45p6alGCX8GbkLv2/v0Iz3PzzQWKuz9dVAFhgw40MTRwi8wSpOpB5Dq3E/5ygK6mqO
	 rpSCTEGQiCHKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9261DD1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 09:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176509937358.1707.17410695061254313324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0717eb0a453056dc6982c4da5c73a7acad01d8eafc0b176ca5c7cba00faa53d2
Date: Sun, 07 Dec 2025 09:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765099373
