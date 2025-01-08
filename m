Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0C532E40E
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736308554; cv=none; b=TkYpo10QkCihyHE1K2ZKcMuOayKgoq5m6LfeY1L3khLCj3rKkvPDyrSjU2cWAZiXvBzbDshOiIBBh041h3GwmLeJpm2esmo59cTejX85bDjcSYEeQnkHjwHNez9F3gG0x3C9uW0rDFhqkdEe3O/DThPzHtK5sRx+BZrS1ZoGL/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736308554; c=relaxed/simple;
	bh=gcNi41ZyLeZILWsqE17B3gNXkmkgawXHHyd2HIe4LHM=;
	h=To:Subject:From:Message-Id:Date; b=uYwLCi2vatUimfoT8qtj9/g9VnIVZVx0D2koS6Ri4XZJ6l+qaZPTDfM5pB3DuQZgKUQRF135fNUnzbFozxaphueWJPKqXWePLiAEZjQ/YzN5qGKd98wBFAEAwL/iDqbxv9FXRwcX0ddG9kH4UU4w7WbuJOnZSUslCBEs0r4gxlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBlkSgU9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBlkSgU9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3393C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736308553;
	bh=gcNi41ZyLeZILWsqE17B3gNXkmkgawXHHyd2HIe4LHM=;
	h=To:Subject:From:Date:From;
	b=BBlkSgU97fYSJ8rzC/QRlVISnLxSNeTivi8ic9Pb9pcsRILO6wDyRf+3NMRnZcNE7
	 GG6ZDRebiqDmiC4WMS2Fji2ejFT+vYM7ue4UTMBOeuMof4+EWKqzBx3ESHRXrPU2Xl
	 hhBonUYYd42mFX5GHITdX3lr6V5V/y97nqO+lKm60SkrCAcQ25B7ZIlSziVY8A4eDb
	 V8V+HYjq6MUYWgZEImdXTEPcoE/WTEF1/X7pfKV/14EvHXDxt/BsbooCCgadEwFxn1
	 APiZWvgt4NUAK6CcpHJXNVCF4jd9YXu5Nw5p8zSal1ZTcEz783xdhsahSSYqHsgnw+
	 +X6ahLH1+qVVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC91E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173630855357.28417.15590704329353393280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 310b29ea53f3f44417e66e430d34a9a0a92df319453c807016f437243bf36c8c
Date: Wed, 08 Jan 2025 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736308553
