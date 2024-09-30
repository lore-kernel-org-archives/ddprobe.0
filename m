Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC002904
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727663754; cv=none; b=JSL8XKTJ/gMEjMevFIG7tgp7em3ZrkcC1S5AXfhbx9onjW1Odc7keB5qzCbaurf0xMY47U09NLrHtNaueIh9XCLklCd+in1Qx3b5TCpAVknxzSJKHWf0Kvyqvkv5ZD47dba/o/g1ipzGQfdKvGyHM1efSFd9WlCgEig1XtetjnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727663754; c=relaxed/simple;
	bh=28hG3Hn9paIPLIOEAbvJEYKnH54R3rfsNLaViz5varo=;
	h=To:Subject:From:Message-Id:Date; b=SLtfqUgX4K6IlTHhU/LjQsqHZDXdGMR1sjgG2SspeubijYpOxtxAb9LJ82HLDyA9AxdKYNWpmpufT4ezRq2/p8IasmyB+a3IwKw+lK4iXGcohuYDf4iG4L3i9apr8gDt8p70mm28yc4UgqbUl017iynTaS+XQHwjLTz9zgsVsEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WV0kcwRy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WV0kcwRy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9714C4CEC5
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727663753;
	bh=28hG3Hn9paIPLIOEAbvJEYKnH54R3rfsNLaViz5varo=;
	h=To:Subject:From:Date:From;
	b=WV0kcwRyS0a12SN4H+aWrI3n1IijO0S6Gybpx6Tij4oOUrBz0FPIciMVDhiPAY1Qy
	 MD+N8QgDiXgFiRE5oEQ9iiiW5xH+EDC83v/KdCRWjMhCE4guMOs3cVkwc71lgubTml
	 SLac6BFVIBBZxWBF9EAlzueoJMib02MIgjHcWY6IFbI+5HqD4M4rDGHjHDivV5pM6P
	 a9n1LoRCaPZJolD8hH6hBdHUvTh86TSFyVWlPZWlqJOTtzMjQysYZ4F+n0XpaSbbIR
	 m1SaVjTJ/kPr120W7N/JFAigLtBhCfBQZKeaUNydlFHBA3uo8c4ZIXGY3NvIvSwUtr
	 BrLUoxRnX2sNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9630DCF6498
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172766375358.27052.15782385915990715479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb389b1e45a8ebdddffe2ce93e819be25f0144beaae2ac804e955d481e9aff5a
Date: Mon, 30 Sep 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727663753
