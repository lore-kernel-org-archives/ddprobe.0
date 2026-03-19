Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D5F3A9624
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773908694; cv=none; b=SP8yBQXIW1xWNI/k883jezWJerImJvSxckMpK5NqYhwUWdS3NB3wurY1jWawfQVsvke78/EXW9BuBWz9IHwCULuvIiuCQe3u54awNUUcM2GjiwM358Iz0qdNz0gze67WSGbTiGMSlC0/bDl2pA4mL1HddCt/s2aFzZAgyUhHXEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773908694; c=relaxed/simple;
	bh=Y/+WMCnnV1h/PE/nBhUv08CFBc6L8bUpn8Ve5w5zzVc=;
	h=To:Subject:From:Message-Id:Date; b=ROKOo8wSGSjYq85ygglOlS2f1cm790l39B2usLWMdT8O1Kmq3m6kGYcDi2l6HzZOecx+2sxKNuIdKN3RbklBBTjkHRHKv7XxQrtqwJDvkTLi+8OekQLQkm1dxgl97QHRFuVPKLe0AWi4yW5m13nqAtYpzKK6R2aeU2B3f0En/wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oLtT9X39; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oLtT9X39"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FC3C19425
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773908693;
	bh=Y/+WMCnnV1h/PE/nBhUv08CFBc6L8bUpn8Ve5w5zzVc=;
	h=To:Subject:From:Date:From;
	b=oLtT9X39eutljHwB1owJwG0QZnBFWxuPL5xMSfFwkklC9U3M1UguEezoxLK1uKzZB
	 rT5m3QGNtKRnNgeDhvMholrxGZ/pYXwUMxWZ6L0QCv6kPbZqdtUCYNMU/U4p8nB7Vx
	 Bj7AkO7MKp+UT2pJUD+/tMC5Dq8v3eWDyPYA5tYKH5h5BvPoSdFX51BMPBAnnrmtnQ
	 TCnPyKt3xvtlorGv5BtkvQTk/LkimdvxnA2VzgWLOV1ICTSwZXQgKZLM2IS+1nhHkx
	 n63uxUWfbNX5+Pm4XhSpCD3ksP8ERkBIF9U1c2665jMsSS4Z7RHSVQrb/HwCEKUJFw
	 w/G75+XGrIB3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA191075276
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177390869358.16651.1672479496266734921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 029d14a781221e98be51f11f08b2e238ce44b1aeb4f102d0a1bed6ad714b3a91
Date: Thu, 19 Mar 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773908693
