Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461642A1D8
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746681596; cv=none; b=gSvWQOdoROQy0WrOllNGRMUbs6kH2d2lwiJsnYZ4HvpOrCLHrI4aC3d6kMVpKyAzWMF3xA/jgYktTSopDUB6wTKTP8HbUu8OUfhyFMtONBCS87A1UCt3iHzBieDPdk7ukgBcBUbSALbrvYtnUbyIcpl6S54EvR/MZ0yWvFB58v0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746681596; c=relaxed/simple;
	bh=xT7pq4yU7dmtW+57R0s2EMMwW8KavmdpyDe0LxrRudA=;
	h=To:Subject:From:Message-Id:Date; b=poHgGBW6bmScyzjTAI2L73s+gUV3kggPqvwAonb6BrD5MzKzrejAbBmhxqbmakhdTtdYVhCsFcCRQjzLxqQe28zcgq3Tzcy+P8XAoycm1riVjiebeeuEOeDFAXqdM+5n+csA5/lA05F31l6a2aG/n+F+1FS+2S7hQTO8v4Ojwjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sklGuT1K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sklGuT1K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FCFC4CEE8
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746681593;
	bh=xT7pq4yU7dmtW+57R0s2EMMwW8KavmdpyDe0LxrRudA=;
	h=To:Subject:From:Date:From;
	b=sklGuT1KeFaZ+b/qP05zjPLHbjX/iCY95+JWoNPOG7F42m64urGrOpj7fsbDYow1y
	 t1t3qhqyuPFizkKexRBlmmp0na0OwQjTXQ+/e+sudBCB0KDSXcPbgpA6hTjbL5L69Z
	 yFIDGPiuzv5/zalWpr+c7BrYBLJ2SANiNHTHRWaZZluhWc0bPoJMIt3l1KmnD3/Z6E
	 QtGrCMeylRUgdKSucJU5YgchK4jxkPrFDl1pBl7eOnd3kVxM7yCj03otEd8cgNERpw
	 oLXy7UgHcoSzkTQrt5ij492Syz+xCzOyUy+7lQnLFUWLFQhj9kndRTWDlQyHbMXshE
	 JjNKNTCYdlMVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93789C3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174668159358.22037.8285524110341493240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 053103775d13f4c4de68169fc4c7de7201d87356f27c17d5d1d3ce0390fcb53d
Date: Thu, 08 May 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746681593
