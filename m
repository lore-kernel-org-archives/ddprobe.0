Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C09E1C8621
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751695794; cv=none; b=JJgPSEL6qh0gHWlwabRFM5DOmToBCejlN3nIYPmXCbMb1ST+JFmiXf7Xl8jTkQzac0F2vlzCnn/NHqXyUqK4xt2Z9MD+k+1gT0Ev5CzwjBsLGpDRvtPF5EnwqS8p94ilmse5wea09FCq263eYxw3sTXhWv40JJSp5e4G8pW8Kcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751695794; c=relaxed/simple;
	bh=unB0Snk1HYMK4Ws7J6cCD46nkaYQyphZJ7g/wJwo5xo=;
	h=To:Subject:From:Message-Id:Date; b=juHcY1PGZFCuDqqAYK17zHxK0JYV/FRnhAW0KE8fSo3ecEsRVrrRcv62brcFrvMKgJvVtd6k+CCxANZmZNNFblpmO/gxSF5eo/5GuuTQXLUDizx2nvv/aGjhzxvdECA7eyvmy0JaGLrYXQyNp+Vq35e8w4oLUSwiUWU0VSVCAcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=APMND+pN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="APMND+pN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27E4C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751695793;
	bh=unB0Snk1HYMK4Ws7J6cCD46nkaYQyphZJ7g/wJwo5xo=;
	h=To:Subject:From:Date:From;
	b=APMND+pNCF2aYsI+jN5DiFeyPVD+uO15RU2LmrXNwx49oEJNjqFSqr8eLSAspgxLd
	 81fZTuUcBEH32+0Djrboxw5VXKNec9knk2AUVm6JWeJCoVHBDF4IyR6nXra9IRzPUQ
	 evuHihyrR51hDadmuJIjDlQ1hXtt3pY7dW4ytyg3fal6uSX7BkDZWNlPhhARUU42NV
	 fR+Mj3i18n53mVpbp4fg9nAqBT5zyKfJ8jpxjz4O8sD+xOieSdJvPP8KzZjlGVs1Tj
	 kkhDSjDgoEwVsu58t2+00upaYfuckYhza94sQQcKlHISP0Ay1goihvlu9Viv2RVKpw
	 NFA2aoLnfYGRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DA3C8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175169579357.4561.1047932406309172546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80897fe37b6c9ebcade8e63bb4e40e9163e1c7a152d9c75342369be785da5054
Date: Sat, 05 Jul 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751695793
