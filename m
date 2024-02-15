Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E9F1362
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707963497; cv=none; b=LhJVFX4kfMwh2BRvllF6bcc5CZobDDsEpeFKglGog0EyAU8ac5gdBGBPO/PG50XSCtxXpyz2FFtWm8/R/2JgDgYDSHeHK2Jwtshq2BYKR7fXa3gBv3MvgE0B6Zl+iR3VLi6YHdeB5iIo8JjYobVKUGSRr+kSmcBIwROx8L3banY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707963497; c=relaxed/simple;
	bh=Oujaut9ZXrpeEvCohKFEsW4j8B2LCMSCcVLjSRBLtYM=;
	h=To:Subject:From:Message-Id:Date; b=E4CV/kf5DDG86LAMWzibXV/WJN1aWljdlxReoW7mDL7M5Aq8FBKLvAJ65jbB+IS3kvXHmuZ7wPMXaVsqXY5hy5FLNpB7KQmpdejaRtTMFozDxhpN2ACVvJ2/YpXNbhc4gZXYwIT1/7YNvSZ9SVHoCirhxNRvPS5ewhH1ViOfc0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SpttW/40; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SpttW/40"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8ABD8C433F1
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707963496;
	bh=Oujaut9ZXrpeEvCohKFEsW4j8B2LCMSCcVLjSRBLtYM=;
	h=To:Subject:From:Date:From;
	b=SpttW/40Cv91aVV7fq/i/357vhhbtVEiB0jWwqSzrLJ266pLLljsJWVX9uJIxi6M1
	 j9/b4JjX2OiO+Q4HYRWQJSz+vhKE3OQYlgH6/nuSsvZdAcFOfFb/i9qUYnbM6dgt0r
	 iAwLY8FOW6StBL3OCbTD/9C5eOU5biqVajpslTzauwgD4azXe3iszC9tcw2efYeITx
	 S3IzL+2VVQvEuEmCNWM5Zm8Fb1vegWTsQ2RGptk1ECaoGLsqfxsBpsGAjEO5beMosl
	 SE1NYdvko6qbGdY1C8V9I9NduJUMj8GhW0YKTwsVaIGrGmCkDySnWQKf732ZiJnAnt
	 RYtfTRKn+vKMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67394C48BC3
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170796349638.20884.7687089984119482706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0882fbe94a850057c48fb711ab0abba2104791800e00b36f810f8e1de2ec47a8
Date: Thu, 15 Feb 2024 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707963496
