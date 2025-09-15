Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08DCC24E016
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757908194; cv=none; b=exBIIUIz4HZZlEe6JVt8PC06MDsnvjjDeqPNfjScfR4vNFwCyEPpWGivUOBNGZcABUA+SvcMn3F6RsNspQ/XVR2iyVdxyz1hMFZnuBKPP4VNmOUPdXrj1DwFf1QSgMAluBzr4NgpuRC5zMvIRz8QR+riTR/JaGMJNZWrr+jG/FY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757908194; c=relaxed/simple;
	bh=zLBL4w2UfR9E9aURzsizfysrnUBPmoF55EXa3qhCQk0=;
	h=To:Subject:From:Message-Id:Date; b=VBtyUiKrNaQbV/BYDavgUs0MgcDshqBk2h7hD3EOo1b7Xov6dTw1wRLCbcfLgcrHxjfjIQj8450DybEFCEMpCHkfq+/S3n29Bf61sKNd88PSUUTOnoELSdqEp9CxUlliVxwwXPPHK9HZgYVn3Df5kKs0yEF5fl1D1G09Iro0ljg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b0MJnWD9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b0MJnWD9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF54C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757908193;
	bh=zLBL4w2UfR9E9aURzsizfysrnUBPmoF55EXa3qhCQk0=;
	h=To:Subject:From:Date:From;
	b=b0MJnWD9afds+WQ3RvZvABuu/5BdQl339Y9z3MFftit0MMUvPBWuKWkccS4g94bj8
	 AXcP9EYaFrU1myyQSfT8Mou2w+W3Re4wioTqNYe8gO9oziP5+BLb0iFutAXiLeZ2cJ
	 W7sj1YC/Q9Y0S4Y0mfiVSDz/nbSVV+YAYGn0vYYwRUw5Kz6sOGrh9EqE5AQRbYuY3p
	 RfHsp38rYhvMo6XVZoTIhHYs7YL44OMXH8lbOVp94oJGL26Ol5xqL82iK2d2EhVnCT
	 Y34bQrrAIckAe+3WuUsmwIanhYy5ywF1SNi3LKHgS0hRPgbA+kUgSmEcBHiUqCH+Mp
	 pQtlfxlWkli5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E797CAC58E
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175790819357.29293.2090078426584942865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8fa5e456348631dbac977e440d5d3b22758e4d9151b67021d96e38e979ccd1b
Date: Mon, 15 Sep 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757908193
