Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8011F417E
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752442794; cv=none; b=EuT5QOeWOhDboxKY0esHoqLrGCV+N+MaQ+cPJSinueoNFH/dBpn1k9r1JoAYcoohxZjCnmFpVYJY2I8mg89woVdxUGsAVvJ2CyAiAje7X0lVON8MkQJsMyQZQ57Pwk2N6uheAocQ4ARN6VtRcPoC/A1kwmV9vy3lgEgKq7E6MzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752442794; c=relaxed/simple;
	bh=xoFdtxHD2LdDEFDEeVYNyY+4sKaEYN+Y9SslKI9ILOc=;
	h=To:Subject:From:Message-Id:Date; b=aF4QnqKi+yAr3kzHj7EyvMEZ4Uqjbinvyci3ICdghJgMBt1fK4OAaYF9HY1G1tJGeZHMGl+MAI3HYrnhNtp+GIQENGDClrXM6WYoOcSqABKA7e4ERX8XsnpzP9rxI4bGdIW6oM1nblY0H8WVX4w6Dv4FYu80kFqk6WtUhN3QUW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NG9UtI3Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NG9UtI3Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABACC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752442793;
	bh=xoFdtxHD2LdDEFDEeVYNyY+4sKaEYN+Y9SslKI9ILOc=;
	h=To:Subject:From:Date:From;
	b=NG9UtI3Z6X8lLCULQ10qeRosiTBPluiSGLDaXoxvZrAoOALHwWomyDHZ0mxOqdgYr
	 KtMFGojce7O/exgmYDwKGP0foC4kSUGKEYn3lXH1e+M9yjtZ1QpTrRl/UVaHe2LmCf
	 ynJPKJnlrM9zzIHHLXhOI1RaE0fuM5fMUGinI5RVrA7nTrFyDbBWORfTHzjk/zPa1H
	 xtdXAOAwSfRxYnHeOOHj1OpFV8CHuSFnOjJWtCJKEuPeDCxUCvOyb2FtWcDwJntAHA
	 /VPVRyo2FnQmiEG5U39aZMgKws8t1xOdddQBlRjE0FZsVbjLP0E0kkfBCjnimyEXDe
	 Mx3k59xXm4iTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A1ACC83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175244279361.14575.1217499513162454307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83cf4d8f18bdbb76171c00276c29173913802974ade4790069c9dd7d9c11d4a2
Date: Sun, 13 Jul 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752442793
