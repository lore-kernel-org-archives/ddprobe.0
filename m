Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E8EA18FC80
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790478034; cv=none; b=PBQtAkJsNounOzuVEV87t8QWctK+ddU+lU2MP5MTGBrqtVT6dKGmqmthaQEEJfq+YZSwhfuy0UwRzgJoZ5RPwX4FGmEF+A2ZMFioNoppdKTIAxJG7t/15xBf6DG/uC4n8SfQX+HEG5ulV74jh2VYZ8xHgrQIM1gEuvRiuruVCig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790478034; c=relaxed/simple;
	bh=XujMMdST8uN4+lTZ3DQgGGiqrwao82s3tW4URC1KQ1o=;
	h=To:Subject:From:Message-Id:Date; b=pEOWigq5yRq4jB5V5sb7rzJwZ+SVQ74T487eNzh9dKebZZfBIgKk7mPEGg4km5TJ4nKcSRJ33BlG+PYaNzK0645F2NC7Nhxxp/cz2D9LBgG7HrAK2ioQZFXruot2U4TSqSm1z2J9w3trfEfi8yMB38/cti4k3c67rGmRD6cQFOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dbA97k8m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dbA97k8m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D768EC4AF0B
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790478033;
	bh=XujMMdST8uN4+lTZ3DQgGGiqrwao82s3tW4URC1KQ1o=;
	h=To:Subject:From:Date:From;
	b=dbA97k8mTAJJXUElVzr48TMYDjJ51aKJ46HqP4beMyNW7ueubfIKzlPxvhhcxsH9d
	 bkISq1pGBpixATDcqCDW0o2GadWKXFNPkDLEBKlLaFLwzLGeANUuFyUFY/RirYXtLR
	 D/VEO0dZuVD2HOqydoBdgIoIR2+lwXuVTovNW5nly4F+UBZF4QUXBog36ZZJDnzVCW
	 N/XDMaUbmt6xaAyeKtYwoMuPMAMRe8o+oc8Zc7jzXEQvkLcIkwP6ukMIer7ETpQv5m
	 mnnxTCJ/pGq8B/X7s1UpQXuGEJyHc8mUxx0Tpk30pxCUOwm6T+9q2ehP7t9Os//Txv
	 AZ608nQOxyOrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B055BC98328
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179047803368.2220.7578708651784754852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01950d00a251a75722d8d5a07fbbf5ea415ae9bb1c83ff45018e66397e110c6f
Date: Sun, 27 Sep 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790478033
