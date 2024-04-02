Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E15C17BD5
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 05:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712036296; cv=none; b=t0Ab3eu2Glms+1Vk1iY63iYkQmrdXEW32247dCCP2jU7yLTeab9gXAER7ttOYRFq0jhnwNTANdKPuLf5fQKQ+P0ahk6eLMc3/p/4q1KAoOSikS3mRz1rinP6kBlJfYLBVcCAG/St2Ea3DP+8owJvlVKv2Wlq2lF4ZbyXvLIyPrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712036296; c=relaxed/simple;
	bh=RDycKbUR1+jrWaAoA2N7BAvWD2oT3UjqGn6zua4pE5k=;
	h=To:Subject:From:Message-Id:Date; b=RiI2tkhLRhkef/2lV2X83DGdKdfIyUQllas2fl4JaCHYPpdngx07rDiTxrqOsBfCDzeg+KNKnvyVgTTGYxoWx9t7r5A+JmcZK+w0CItxlG17P8ATjfTJL2ZYir2yas/9PpBsejasDUhrm9F5auQR4GQXat9Bd2HnFZHZWfJosCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YauqOZzL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YauqOZzL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74CFAC433F1
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 05:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712036296;
	bh=RDycKbUR1+jrWaAoA2N7BAvWD2oT3UjqGn6zua4pE5k=;
	h=To:Subject:From:Date:From;
	b=YauqOZzLPtcUivucGFXo4C8Al9dWMGhV0QfPTVLF7Bflmkd6Mtz42835jLwR6Wcyo
	 ey0/eq0uKmI9gx0oN0VVQa1j6tszGPeMmkhZ2MIO1vEdJfGl6BwdrGKzUTytTUrGSW
	 5e3PZv9Yh2xOWTuvZa9AWqM2vZPkYe4/53XYtJ/EE0kCsvT4Yi5Z2qkLpXgPH4apgd
	 WHs6mrPAEWee4sHdzS3CQgpggwizavSqAIrHfknk6SCMFWIU1LpQ1Ixue6AbkIyP5x
	 BvF8nKpJwzlj+0DfpF0ep4qufAjiCiwr1ztm7vtYT0eYkrjyX1sUYPOaCLnJ4p5dKF
	 Mvgw+QK96WEYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F636C6FD1F
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 05:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171203629637.2440.12221509993286181796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7867142a8a62b712d4e83cdfc6fe84922e21a96b86a8b24f81cb6ee4eb5bd33f
Date: Tue, 02 Apr 2024 05:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712036296
