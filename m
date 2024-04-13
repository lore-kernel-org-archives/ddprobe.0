Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5533A1361
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 00:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712969363; cv=none; b=CBs+Jj5hyZO3IeCdpuwv+PXnuN9BcHWuhcp5lFtIEdPQi1ijqKoypQ46gvSh1m0Qtuhe4Ywss/DF90652IixuahXOg4L0i73i5vI08OHvzMYLixyxiNfdLCrjBkDUjiLb1nlcaTQbu3hXJ7F3nUHqnIEWWGaOkoaLU6etP7PgG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712969363; c=relaxed/simple;
	bh=bmA2SynoCt3cLneGemz5C/BNfDNz2GGlq7dWlGYDPkg=;
	h=To:Subject:From:Message-Id:Date; b=EDm6J58GMqIp0vdaWfwSbe1jtwCttHhjgTMdMGIbBU8x+hz2ZGwX4/1lENGmbXvY70VY4/4iSRzjik2QO6FbZIEQ2SI1Q8uS9w2i0DXC5I2qwVMh0e6N79KhPi6v/4AypiSTu/3TtiVo8Qek0kB7nO8zHvOMQAQwuLLN3esONSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mjrwBThX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mjrwBThX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA5DBC113CC
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 00:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712969362;
	bh=bmA2SynoCt3cLneGemz5C/BNfDNz2GGlq7dWlGYDPkg=;
	h=To:Subject:From:Date:From;
	b=mjrwBThXJrUJdSGdvhFtJveOj3bple7E6n2JTCZTOOcCr/TpL7+wbb5VcdPHRwRzY
	 ot8690lxRCYHIr/tx3H1tflBomXhEl8nkK22ds0h2O+IgTKCVcdzOMx6o8zerj4eK7
	 1F6/clLsqiSPRXoDSwLkjoB11JNQxIMLMVegPKYF6cCgzuYYQZibmv49RHoIMnSRPU
	 KvwAof10181umbpfNjWB2LFTPxuqOKe3Wo55ht1k3Dg6Ys43ECw6lbjoy3yqYCFU96
	 AaqvRcNYWIuiMUuh+3xOtxpwI7pKwKKTnaxrfo4wPlQofkgXlCGtMcJbnMBfFAxDDr
	 9bXBIpOnNOPOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0B11C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 00:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171296936276.20310.13138126692041026244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7efc9794310f2c2da1ddb750f4c01e5b32137790004fa0a9e23805dd333d8ff5
Date: Sat, 13 Apr 2024 00:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712969362
