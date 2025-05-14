Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D33B274FD8
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747223994; cv=none; b=rH8E0z0uZ8sR9R2adaQwlKCHsIdQD15MY79kr9cESX4442uS3ZA1mjSCG0wHPKEIHaTqPxqFshjf/Kfp02Jak5M2c6HaBPkEISrxhctdi5wTK6zogIdEhvBM58t47jnn/8Cw9byFV4uijzhW//OoVSNmW0z33ufB6it+F9Q+oRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747223994; c=relaxed/simple;
	bh=4/rhdl1TQnGz3hvulTxhINsVEtAT1eDwxGk7EShHAjI=;
	h=To:Subject:From:Message-Id:Date; b=IK2KVnOxywmZcQF3wHaAXYRl27rYuVcE9DMuzjFaYEN0iuu/0RArlOK/4rVltH7jXWDE7Fvc4FeBR0GgUdb2/LCqAmSdOckm6wDeFyRLVop3EppuxdpDOnpn9YIXWL6c2yI8SqtEStZzaOwxhDoPJYnp6Ow3ehSgwo0CODnZIP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cnr1MCRs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cnr1MCRs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F73C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747223993;
	bh=4/rhdl1TQnGz3hvulTxhINsVEtAT1eDwxGk7EShHAjI=;
	h=To:Subject:From:Date:From;
	b=cnr1MCRsduVkR4T3SiAoOqsOmndXv2jV1DpjH0rj3lFOmtZ8JGQ1M4OjprneR+7Wj
	 cfQBKjKCJHz7hcanhNLpnsyzU90gHScBaqrHrhYIPIuPERSeQWWQgYk6L0fkmlq3DB
	 top7pMJsMptN0my08jEXWXavwf9X8vGfMAsN6e+tWRuWGpRDpZ+9n2RZpUolmfzK71
	 M+8VmTKT/Gns9ENuF3jKOUcUEyFl3GTOoDd8NwX81zDuOgvcHk1ABZbCzOtKJFyjYO
	 NBOKPnN0BeksIyjaxO7cIF5yvVo91s2Y4CI3FOBXa4+U1w3msj97X+JGqZTDGJrXEM
	 d+2Xp9mYPjyzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F515C3ABCC
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174722399357.20216.14911513009291732040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04593df114320d2235d137bc34ceaf0fc76f9dfe4e6bc4a31c18c4f6fae5bec9
Date: Wed, 14 May 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747223993
