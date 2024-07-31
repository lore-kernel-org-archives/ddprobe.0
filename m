Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13DC818991F
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722422154; cv=none; b=RFCEBE0dJs3UzgCsEdPHXZ6/CBWVIhdPs/KvqXnpCjw6QghcvsaSbVB5K7L5rq5mCpgmXLj/G77DJ1iB8n0k7lshCG5ty2mUxW//k0WawxCDT5bw7fkQV6EJMwImCwE5gkVF+xGK+9Z1u0xHGFPOmcxNJRcZZkk33oWrjmDRxss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722422154; c=relaxed/simple;
	bh=w+9M24cwWmDObhplr07iasUArcXudh3wi8QzqPerpo0=;
	h=To:Subject:From:Message-Id:Date; b=hZM6KBu8K7cjlAaLznxvSGpSvijICFZZX8kf4PJdfUXeHadCpZHZS24uWAJkCqiAr7pNWOeyzKeX0HIKwWZpHg1dnqeNkFT2bQ4LEyICl0AyyWyMumNUJzblhsw/gR3d6qe47vJBP+mR9wiTeFst58JwTPHZyfxZR4yQr9H47nQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p5m5Ab+L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p5m5Ab+L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E08C4AF09
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722422153;
	bh=w+9M24cwWmDObhplr07iasUArcXudh3wi8QzqPerpo0=;
	h=To:Subject:From:Date:From;
	b=p5m5Ab+LKxb0mg9Sx4Z9Fp/XxhAonYEVDbzLwb6oUwQIdGW84vhh/l8c1AZ/7EGV3
	 ZtQnh/uTzu3qcy8ktKczNI2aj7Mh5HidxS/ZKPM/5RcesUVLYT3lVdI5nbs15CdumH
	 +hgCTotndXjubovHD+bot6CX9qxI7FWsxts2DM1l8TR1gP4/CeXO/ba4Tb8t3I4M7b
	 FcBQtBOo11K7rk7gLkgn+3G5DR+InaFacIudbBdhcjnlu3EuQQOcE7UU0HKBDkDEBJ
	 6TstlM2d8LIHb6lCf4RUufREZdbZVCmBHBu16lVdQp0vDumORRwsXwDrZHSy+Au63l
	 Z44YXUv/bA7kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926BBC3DA7F
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172242215359.29491.16187883020509751159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5d7e83f9b532cd69acd3bb13818b64e176db7866269bb3fbcefa89b17c04684
Date: Wed, 31 Jul 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722422153
