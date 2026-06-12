Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E18723C4FA
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 01:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781228794; cv=none; b=HofnQsSc6nBI3+oez0k+AbU4CyPcVS3lAZ03XcldZfx6UVMwC3XAYfu8H9eTHFN3VIYjxr4uNStkex8tk6tujAxYIpXcDVFsjRoLehj/HwbOU465wAcBqKJ1T3IBlQ4w3ITgKGcd5hYB7kC8m0v1ItdERDlxC0YVG0c24Z3xOjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781228794; c=relaxed/simple;
	bh=B6h+iy3PjUVypbXvZhd12mEe55QjNBwExw88ft3jBWw=;
	h=To:Subject:From:Message-Id:Date; b=GEFTqq/nPIdrI0hMww9PxQcPR6FqEbHMytHfuRInBD9v671RMxO6vVTUV9q3x11O49WhT6tsuUAf5yh7BnJu70ZzQCHOJbt62xKFwVS80OuMBLkuH5YycwHjwW5VGwRVi7hcwAZ91Wr+GTgoBpU6CERt35eqQuM3KzpbBEOwZa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BhrKIQH6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BhrKIQH6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E80C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 01:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781228793;
	bh=B6h+iy3PjUVypbXvZhd12mEe55QjNBwExw88ft3jBWw=;
	h=To:Subject:From:Date:From;
	b=BhrKIQH6YiwWPQCHrPJ98NHZ8/KJkDUcA7zdeAbbxPmqXJCUknAmXhl8Gkf2hB7zV
	 Pm1QWc26F/Sqe0Ej2S7EU1PgQBtgSNBStUM9LajGLI9y80VCejFKOJSxjXPEw6tWpW
	 FMvvvVW2mocjLwBM3nEFbe6sbOTBM+88hX7TFHx37ZDb3u+/PXLimQOnvPl5G61QjX
	 vUCNrLS2dyFPQf9jo9uO06Xx7osAt/115kxmLLJQk9Udroln32NNQ8jG9BuVCO4/OJ
	 voMTglyLMhyLmkLKRTVU0IUtUFygpyukUdOr8kzY+9InoIQetb/KvkSE4EwglLEM40
	 ryquVLooRobJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2BC3CD98CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 01:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178122879372.6655.18242839940138710800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0e0321a924f65f30c0e03f20f55fec359f71bc238855cbda80c9996f58674cf
Date: Fri, 12 Jun 2026 01:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781228793
