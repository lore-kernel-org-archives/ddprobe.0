Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3306486352
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761944394; cv=none; b=LYoD2VqW8JHBM9O/S/wA0IBee+T6QTB5rKhQ/ncXsM3hcQwXLX5+qihO4vGE0unAoOKhca50HhhHOh7WO7u9NWY4DnZax0W6M4P3JKNZh+Hs20E0FJPhA3c9nrUp9/xvLiPrP/nHqY24xHzf2o96Er0xPSdYr+2zjjJW/trpNGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761944394; c=relaxed/simple;
	bh=TB2m6VA5dj6H+V4DeMuuwFG30x1jlqpaREp8jjfLti4=;
	h=To:Subject:From:Message-Id:Date; b=Rq1dI1mBNcNTwL6iPF7BRb1Nr6FZ7f9ghcLuvWAQXiYwiPUhy9ScwcAvRYwMZe5BD3XC1o/yKXhcBDK5imboR1wVWiK8+YAd5inPM6LMW7PhM33cpO4B0R4oI/6fWFM0fa8SBHlwZiyGlgleTWGmQLfLh0sDUKpRzKsTcnnmgwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SRf/xHgI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SRf/xHgI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7983C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761944393;
	bh=TB2m6VA5dj6H+V4DeMuuwFG30x1jlqpaREp8jjfLti4=;
	h=To:Subject:From:Date:From;
	b=SRf/xHgIdmOwCB7prTeoNb3GDELhvtqQ37wZLnSnD7mC3z9n/yP54ew1Z9l2QE1yN
	 7apao77ldBfMgV6orlNTtLxdAWERLeNPAhiRh+Fnnn5tHDaxGd++KcCV0uLi6o2Sp6
	 ggVh3GpJZIxiBKpdAAIX0zNjptIJ/LqRbQen53d1Qx/C0U3Uy4rX6FhjrLl4j4NQM/
	 4KdFSDKvlYFpBmY2kTNbIooSIzOJfFapp5dKZIjQ3pKSyKx3IZlT0o65w0/uLAiDJc
	 W8lrAA9v4pHoBI3L+JN4rYTkVSd2UVm6rF/3MWhZiKvc+2YUVX7Kp7JhPGanYzIA/0
	 uwKgveFAlzMRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92741CCF9F8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176194439357.4620.1967615913747792974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70d5de18102d4ee55dd1403f6bb116bc0f2ccc9a1a68833338a120a509f9ff6d
Date: Fri, 31 Oct 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761944393
