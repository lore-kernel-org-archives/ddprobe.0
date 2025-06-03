Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F74F2C3244
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748927395; cv=none; b=kcSZdCQzyvHCAwuAiQ6vGZqk3Au0SDl2nfLydK40x1gzzYwP8NourD6blEJ01OGkSuVRAoPy4wgZcYuIEO8YM6q2Dr9xQ3Rrn1Y0llbtPtMKbeZPvxDFPRnnW5hbG0/J+X5hMiAxA+SxNdi2J9Jxgi/Rvi0LuqdicyX1IBjgyzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748927395; c=relaxed/simple;
	bh=BjTJ4iNbFsGpVsUmfnQvmuLuJE6Ee2pWuvO+RA8yth0=;
	h=To:Subject:From:Message-Id:Date; b=r58Y/aNsMzAx6vL8KR5kmHyQBrL7+WgGd5253yV2inBKHxNhNtGDyNgq241pBi6PAuZbgz2w9IH0hXRQfcQLFMP4UrnyrH4r9X0LM0sK67b6s3dwQfX1DZKOWHD0lHDt6qHlPZOcD5tu9xh2ffhJM5SZ1X0ccT/2oDhAR78iT0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VrKOLKAH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VrKOLKAH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9703C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748927393;
	bh=BjTJ4iNbFsGpVsUmfnQvmuLuJE6Ee2pWuvO+RA8yth0=;
	h=To:Subject:From:Date:From;
	b=VrKOLKAH2CFfNv8fdzT05YbCA4rRfyzEs2VdWr9hLdIcWAT6Z2fP/cZIi0nkRmuEB
	 7ZMqjKD/guSolsoFK7wuUxz48dRNigMwN0DhqjyCbERrL/uPoW/to8OgTk/p5AZm+D
	 GASh22AIDyztwaTZaCOfiPW5EbGMYKDn3sRD0PHlAffEPHRw9J1JE2h/zy3C2QzcJF
	 +R4KLzBI+Z0KLnRsTL1LBdHNXOy8sXYuUpssYya+4IOySYpZiTVKiWpmbD9C8/Wa/D
	 PjFXrS5ZyLIf+T6UydRhBLYDgwNpLDca2ankIfLJ4HELN9SosuQtgfABlOyACPl9JH
	 utuD2nKvIhgtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94525C5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174892739358.509.6214421842462134951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2866bbd9ec834e68af8998dcac1e5f0937f57c433deaf1079db5b0132a2fc784
Date: Tue, 03 Jun 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748927393
