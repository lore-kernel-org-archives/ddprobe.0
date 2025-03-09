Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F47916B3B7
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 21:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741556934; cv=none; b=ctPVzAPEj2K/n7X9n+X856tD0pidThXw9yhyDyJiStRi36xyh8haoQIdB2YxG8+9c9wkNOllUPIp2evMANSrF6OziOwonHqXgtaAhxvBDPAGAaKYLApdF6bPIcN0Zz+FTm0yGqqCW23xzz3HZfCVZ9qVj6CDp2if8leSEku6KTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741556934; c=relaxed/simple;
	bh=E5RG/FZASisQpzQSam5yYHeno+1x0d6kYY6XBkI9yPU=;
	h=To:Subject:From:Message-Id:Date; b=V6Aqe52IP1pxSpsB/1Hlb57nAs/TNzjGhC8Mk9h4jZ0Wfrbr/Ei6qWAnkA1JG8MwZUaRozLjlmsbF1Z6prvdyy2s6DE9vRP8A/x4EYuIigYhq81cdQUTbA6WSB9smEKwEkLMZXCcaZdUEhpW1qiwQfYMPU5LChQH63ZjBGwWrs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ffEfBNuH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ffEfBNuH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC04AC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 21:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741556933;
	bh=E5RG/FZASisQpzQSam5yYHeno+1x0d6kYY6XBkI9yPU=;
	h=To:Subject:From:Date:From;
	b=ffEfBNuHjjSytS1S4I1Tea36ILPE3Jgp4UOxCQ2Q0sCOxA/0kLhbmQz2VukzPJ3Ur
	 cptzpwSRenDmLT7jkMoXGEOgMDKrLVYTWcF3kX1hc+NwDIHFk59xEE7fBIoDGK8HDy
	 KOP8cZOnk7sRCo5BvPwRkTJXOXqbycGPaq8IBxyc4KyAuXS6EWiLWMbV8Lda8ssDcm
	 q51KIaEVUEVoQ2o8aAxZUyeEpXtphM21OG8yOjaKDvmYu1HNix0iiVBBP5IyrHXB1N
	 jSvdZqHMynmuJj4DeLkMf7jrKneeX7EdnZthlx4tOFZ50wgtuJ68ZGQNnA7tIPC4XT
	 Zf/TqmsUB0Wyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D8FCC28B28
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 21:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174155693360.22407.6477099775216414016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bf5d5197e0a2eecee3b76cdb7dabe06b9637dc31518e8f45a584ab98403f936
Date: Sun, 09 Mar 2025 21:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741556933
