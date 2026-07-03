Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F3961A6807
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 02:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783045114; cv=none; b=UJamIxFGlWh0ehFh4DDNcan1D6SyuFC4UFX8EBnVmU/xfVanGmFlqrD5e2BdEx0UBpxPYj0NbIRU/sbbG2rX/HYJmulGJt4gHiHYz+Oxb2R2ARJzmWyo209GpFMSbOp9kDXKbrxFkSA9EoFnNbd4SEzdxc3bhXM3nVCdVO1Oves=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783045114; c=relaxed/simple;
	bh=nAPambqtb8Jrt7w3WHHzTnIEhselNI97WOW4MoK4tBs=;
	h=To:Subject:From:Message-Id:Date; b=EjhlbXfgNKEFQRJKP9iopK4QIv+dsBYjeukHo7XxidcGpRALGyiRT4GaB12M1MuK6j0JZ7Wy/8E7xIcfTSXn9BnR5zLDH9qc1+KVI98DBJhWmtN1QwS+IrB1hgC6+Is/pxnMh6YgXHO2E2VV2Nd2l4104TwKB53C2XmMKXNZbXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mZi2r4rC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mZi2r4rC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF793C19425
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 02:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783045113;
	bh=nAPambqtb8Jrt7w3WHHzTnIEhselNI97WOW4MoK4tBs=;
	h=To:Subject:From:Date:From;
	b=mZi2r4rCjbVB+UMCo/Yxc9fC4Xb4R/L5KYF8f0oXJwyG/5CIIzMlr5R0OrMcWF9jW
	 0+h3xoGpoGvU1PRIUMhV8FReitPnhrHqfObfAySqPzXrfFzUC02Bz5hpyVzzvxfWAz
	 NGDkOxF8xXf4VsRxbZN3/X7ZUMMKbk6tAZRu7jD8Ybcf94D4poXXc69jZ9MKW41GiD
	 MleTrC2hWX6L3yc5GEm0FHUQ0cl0J4wxSsvo5vvG/Wp1jKinxQcNXvbXAuq72exBMJ
	 IqLk4Y0/ys/2nKlX1/uCTr07ZXGgaAhejekoR1/NwpGVb0sTZBztPABIKzphmYNJJm
	 GKwYUo5jHUJkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE20C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 02:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178304511369.5714.4702573537644309784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2403440044b2e082b48566599217b65637cbacf27df1e8ed3885cfb789ffe64d
Date: Fri, 03 Jul 2026 02:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783045113
