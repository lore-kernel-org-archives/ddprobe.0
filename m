Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFD53033EB
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 15:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790521234; cv=none; b=Y76shxqFDY0E90XOM3wsPoWSIR+S0RTE7JDu5fxuS/RR3xYh8u7+agRTPqP8YiXek6xL+9h3tbG3LYFSB7aUQktayS9gTRGF0l7HuJG7YNMZE9J/ZSte2L/DxSimyyXyRe3Qzb3jC6EKMyX558J4gKoJctWaL23GN/BSXNiGeYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790521234; c=relaxed/simple;
	bh=9SCjZbAS+wSfAXyE4L1Z1GQJGjMEqA/BtwKB2TWWLxs=;
	h=To:Subject:From:Message-Id:Date; b=ea6J1TZpyYdWkVkcRu2USXiM7IZ5Kf78uMTIyqOLLXjPG8xWoE2nJrU4ehXwG52hgwNDW+EBYKtSB0HBGh84LSUmQBrrPNIITvirYaZtaSsupk55D+wEDcEnIynJMnFqO/Uv+G+0+3icpGtLvW+idXcuMzfUGM2VrD6DiyWXClo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W4t3iYn9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W4t3iYn9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC81BC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790521233;
	bh=9SCjZbAS+wSfAXyE4L1Z1GQJGjMEqA/BtwKB2TWWLxs=;
	h=To:Subject:From:Date:From;
	b=W4t3iYn9w6HzYdojgZ1w//zL18zhH8bS9RdnR6dO1n0UCsylfYHuUraT1k1dvvJYd
	 gvzW5DNwPGxJC5EsdSO9CZpjgBumftNUjk7F2reiMkgYFr465dNnAkw/hl3jgap8pg
	 fH5u2MGM3Soz5mdCudJ4R/hBne1AP8JOD+OD6ULseLJbs/6pFwgP5QPqgWWyTXoQKV
	 kLZED86CQWNBBejbSYVrJqs/atZG3OepYbE8ghPqQprq0hHR2cYn8Gu/oTDWUUTC0D
	 Lnwf/yXe4ZQG8wibM5Jpv9hY9QYnd+CPqYifMaWOi85y/UnFXKIZTPurRh+HI/FIqT
	 uBnKcYk3PKJ7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3CEC9832F
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179052123368.13269.16099660501678205787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91fd7d71c8f7af59067c5ab76d7b91da7c68ebf2938c154f8f272ad075b24b93
Date: Sun, 27 Sep 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790521233
