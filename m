Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5552513FEE
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745267994; cv=none; b=NQW0hlJXi+jOzfJ9plbTOYkREafGamkEIzit3wdJ0fbvG5y+LI7RoYhDJXMK8cvcHurKOCNf/qqamiYchVTaRtvqQb+qXIeWIJCgCiw792QjfqQJ3r8CsNeBbb5aTVtxFMxXFzmkmAjyg+11N4k/EKBB+iS8t1+X3novVljAHM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745267994; c=relaxed/simple;
	bh=F6hQvU9GC3AHkLIzJr4oMdKpc5g5YnbYTvcrPTZ/AaY=;
	h=To:Subject:From:Message-Id:Date; b=frCaIz9txSAT+a+2lrAVHRmQRoKNaGgeeyQHzFAoXI0RzVgmBELjV2fhnqH3uz8wB8iwWYVHmGCMfLwEpTJi/qT3Kczyqrp5+uSYIPWcuynphufgFag5KJlxBDtl8S4ikl2Lqq70FXiMj6i+ZW7um2WJ129UzmEtkSqt8l0H0f4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lyk4BWlm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lyk4BWlm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C04CEC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745267993;
	bh=F6hQvU9GC3AHkLIzJr4oMdKpc5g5YnbYTvcrPTZ/AaY=;
	h=To:Subject:From:Date:From;
	b=lyk4BWlmfftS4CpWetCf53dj+PvMuVZpLF4b7YaTfrSwrzd90yfSE2yot28xisoW/
	 3nzzSuGjcEawOdVrkOK1yovo5Ij7LizbE2ctKdePPt289RNmvwy00r6OO0Bp8IQ4i8
	 phuSHuGhx1PTzIY+bQHSjlrri5XsNY7j8nM+WcNsPc5UhyfPNNjrDgvRDC12dtQ++M
	 /1dM5MESF0/PgY/owMdifzc03nFtMyP60arqgz9I5PnGjkcGiLnZjZK9I7iXILr1vg
	 djk8G+l76eDaDJ7K3JTtuIR4G/zCh9+dyFYl+TwkLpuFrlnPu/k+G+KMxq8JqRN4p9
	 OvadXglUoq9pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD87C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174526799366.6047.2314758108549381637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 948ff7cef3628446cce6a414ee56fd52bb25c74a221fa66d75fedcc3cd397a3c
Date: Mon, 21 Apr 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745267993
