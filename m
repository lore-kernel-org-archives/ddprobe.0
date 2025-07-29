Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247973FB31
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753768794; cv=none; b=dac9VvuBNIQcVw/ohLzQMfuJv+e8BPL9kDOK/EiSvl9OKv48S6SLIptdMcXVCZ/yrp2oEwSzYX5qdMz86qRvuBHPvzkZno5nVRRHqsPQM4mlNLV7ZS6Ts/j4u82Xzob9SBeHLYG9W+wcywh82iTxbN0syFMEcRk3O+HYejYY1hM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753768794; c=relaxed/simple;
	bh=7r8OcbEqEcCTtc/avDae/BvwCx2T/Syvj3sGuVDwzw0=;
	h=To:Subject:From:Message-Id:Date; b=rUobUnE/foxppkE29bHzSaUTHO4qylyg1SblHlU/XhtFYY0aiGtD1Ki8XIaYG4sDKBG8tC4vdT7EMnpwgOzg7uameeG23Z7ZBnJjdRoyONGXwuFboQmgNe180VorCchUQk9cr8Fh1Oas9ZjTbC5nChnzG51WAyEu9c+geScaRVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DnKZXUuk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DnKZXUuk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1E4C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753768793;
	bh=7r8OcbEqEcCTtc/avDae/BvwCx2T/Syvj3sGuVDwzw0=;
	h=To:Subject:From:Date:From;
	b=DnKZXUukSPNyq7BSoq8DeZzuw5THW5bF7UHvLFCTVA6ZHRviklB2PA0EFknF0Zil7
	 RteHmfUUY3FwKh9R91QSk6xVJwJGZAk/Fgwet/PxL6XMKGv26QlgYCeZWPEL5CgEyT
	 qom5wcFyiwdrNak1Y0f07nmFEOpmyOD0TpAlf4lFeA9MfynoavUd6I6JtH7rKXJlet
	 0+AQSVaFb3wvcnrkR3m+t4/BIFHo7XeSHVpbfGtURIq78RbnfW+2ekah/oAmih9ciD
	 AcueQeePb05823G/5E/R6CQ1AABG98FO+c4gjynTXF5e7Z+GlUriJ3SapFHnzERgEG
	 3K7l/Xg3uNVDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909B0C87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175376879358.23528.4850326314894418077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b66279fd75760118d5feae92eb4509a4a68ecd66a0cec40d73282b995f175f74
Date: Tue, 29 Jul 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753768793
