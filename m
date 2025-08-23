Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC93237704
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755937794; cv=none; b=N97X0wbs+AReIAXMjTedM3A12R5XL3MuQZuczKFF+cMQimnUf5Mka+Sg7JT+GcWgNz43Zmk5r2ngR3l1VAOUPCX/LeosdNTFaa6H3SumyT2q05L5Tpy02nBaZD5PEGlrcIT8OulKSLRlQSV83nivYOC0NjyqWBvvAQheKki9HDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755937794; c=relaxed/simple;
	bh=YyFgnrihq2FTbi1DUojqq5RtAD1Z1U1yiBVPVfLCTnQ=;
	h=To:Subject:From:Message-Id:Date; b=ISAlKzVH3ono3pYrvohwVkwIeSMrEujZM/M2nqIvYPRtqETq1l8Y/DUUpK7fa1J55ck7W5IafNs8MFhbMXpkr2EDsSn8dLkjVhmH5lIfJFs/Rs7OBaafzZSIjOOzBQxGHlAoVuP9TJanDsNzZ7B//iHv3F+Q+yy/Q9zAeRNhqOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rwZ0JPtT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rwZ0JPtT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51CFC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755937793;
	bh=YyFgnrihq2FTbi1DUojqq5RtAD1Z1U1yiBVPVfLCTnQ=;
	h=To:Subject:From:Date:From;
	b=rwZ0JPtTigpIzM9r+5OjY7wlpLjUn3+cpD2Xed37YWSQ09QRJkMShvK5O0+VWz61L
	 tJXEh3XmnkXY28X+mi3exRm6OIOo5n6yq3Q4rhyBo3FVzZJ1/fjznAKtc7RJzift9B
	 5+N58Gku6G+M4/Rqtmpx+WEQsvBzUMY7viPRdPuQmbpCgukZcKeIx2yVWAOkSOH1P2
	 +CDqDAnbhBpSCnnBqt4E7BuigpLIWy5NLOvhPCzHa9v/j8UT1G4AmEADGxFu2/LV2E
	 IAEbqRVCgGyqgXiwDo/aW/2k9t4WkaLAeaKzIL5W4rSRGTyieyx016HRboBkET66Ti
	 efSg/mV4Rt4lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902B1CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175593779358.15764.4686943717295914854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bfca6aea0ddd151b22b7eb64b39a63b9b742bc7fd174de7a810f52d2f670567
Date: Sat, 23 Aug 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755937793
