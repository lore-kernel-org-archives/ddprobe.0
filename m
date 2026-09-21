Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB024A205B
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789999234; cv=none; b=RrFlO5x5/CDyyrSb9zZufqJIWCJAPME5G80LsKt5ZOUQNardzk4cQ9kn0iH2RO8rnqWnR4veGylXRGci6ETu/ztKNGY3VmHUEOTQPUV/K2euXFDMaceLJJGHFaPMHJHzIp8PdOlkGwhYv2aIXBAHUNlxkcLWnWTqFoxy5CpxzMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789999234; c=relaxed/simple;
	bh=uNuoKQ6AYcNQHreddCeWIdv/IPlBBoyW5smCXC7qNlo=;
	h=To:Subject:From:Message-Id:Date; b=b+TrgEbjkeexY5p+JlLCKp7/S4H4zbvDv/VJfTDqxfCKDaQoXT1Pw0ycojrr9JXeZU8akLXPpn8Ga1x0224wJW+S6l+oruqtPqn1H6Fy16BLfVrVRMtCnwAV6LlDghh6S+W3GdXeFHpNpkMI/arzf4pltvDLyb8+iB1XznomNu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HwA7+D1T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HwA7+D1T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBAEC4AF09
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789999233;
	bh=uNuoKQ6AYcNQHreddCeWIdv/IPlBBoyW5smCXC7qNlo=;
	h=To:Subject:From:Date:From;
	b=HwA7+D1TvD8/FsbPpJt5d6KV2+HHddiNswHGzPpjYUbzOMRW6iC2LDFXkvGri4NY4
	 /Ebc0+my8tYMCeYDxQTlG6fljPJz+fJCTGaQRmfWgdtS/+JpoRz6ssD0baz5+gTAmw
	 1100GxA3oWlYdUJYzlLFwuY73ttSL7ouf7LKp54g2RsRwTh2ttMETKk+z+nfQWuey+
	 MUpjErcFcrt4XTrqFow9FOUUMzSJpAeCVajHhrrhxkMQhH6IAR6Dnv7SCp5vxwKTDa
	 9tJ7P0LjJ3jHP7gE7T63skWxH9eVP9bJu1NTQ1txu9kWCixlpmd2EDHeSBH/Hjc2Op
	 X4pxfeIWtjuig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA65CC982ED
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178999923368.6762.8710444956042257573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89383e3b05b908c320e44cb421ac529e72ab6d63211fe224f2aad747858c9c74
Date: Mon, 21 Sep 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789999233
