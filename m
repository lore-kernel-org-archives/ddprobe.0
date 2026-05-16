Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0D92556E
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 06:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778914234; cv=none; b=VxGCgWgxqFaGipHBXuG3vJt3C88LJskxZvsrgsXYhcy6Dz3u+u3Rm6HxbFzGYK1V/F3LVpVAf7h2cD2ghwm4KvZp65oZLiZYYKJE+jQiuUPUMtQwlQpDGk+6jVTLKjZPlQefc7jEMv6N5Ydv4tOa+r5k1QqrCU4FFfK94QORhAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778914234; c=relaxed/simple;
	bh=5CgjlCG4VHU8XnuTWfDtTX7ybZLYgLjRkhMV/6YHUas=;
	h=To:Subject:From:Message-Id:Date; b=spyoxOjVVohNR6+273yfSP8q+cDbkDd6FVIot5EWBzUmIdQvIEuZnZiUqlvk9Baj+YsnLWmJjbwrtezsoyoGfJlc6mFX5FlHU3LVZERYepkU1EOmHA7N8uwacf9sowek9uXmdi8YdRRwtZG1HQP3LKHSaxC7BArzyJqbcaUEkn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gkbMawan; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gkbMawan"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB03FC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778914233;
	bh=5CgjlCG4VHU8XnuTWfDtTX7ybZLYgLjRkhMV/6YHUas=;
	h=To:Subject:From:Date:From;
	b=gkbMawan9avhydVSzk6Ff5kT1J0HJ3i2/f41aK47K67Hq/0mV73b8ebPTwi9PXF26
	 vFaRkqelmvAxioiD1UNuCuHcYTu8J23tNRFnY/PamH65aHxI5WKLghpJ+y3l0ezQ6T
	 A5WrtaC5PiVctktg5y0+PNYgoOOzXlY6WqqcO+t440d7YsaoaASl0ErtU/w66pBmzk
	 ZlRIhEjhm/SxWDJK0EWRPN0prmgaILaARdLlDyHUTkjWeR9oYJDS5BY0iduqBe06SZ
	 uCYOv0SagFTHA4fz2erzhce3jmskTU5ub+3SOnVNUUWzmtPVLGX2HvGpWeGuAk/yMM
	 2y86SP0QPMApw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5BF4CD4F21
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177891423370.1521.3875031714003481901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f699dff359954afedd65021164aad4f67439e5d19726ec146550b308c665f92c
Date: Sat, 16 May 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778914233
