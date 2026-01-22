Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189A2472763
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769059434; cv=none; b=cZ9qFjJa+uztU8jBl4kmdQeMWumAYbS1tj1alQI1AlIKqdbIHk27mDSRKf8AKmgXg61jQIW16OKmFd79iMQWhrNtY1pkkYPg0Et5KO4D5wrEkCjwDIMdrfbM6IN2pwvNipzSFvZjfyOSmhVsCfseTdzpNN3vQFGHfIgmLi4Ewtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769059434; c=relaxed/simple;
	bh=jpNgdIhD7HHQNUGFb0j0L7n2YLUPk9MZ3UF1Itf5Qnw=;
	h=To:Subject:From:Message-Id:Date; b=th/3SnEUkiFFfaC6+epq3BxgrBAFGJcvq58hr7ggMCee+nGQmt8U3KqGboXSKh9I9c7ipkaf19mbE585RF6+nnYSRo5dQRAihB0sEAwhpf3ObwmokCm0GYNE9uLEyP5esX06flm33ssrBzrQIZmncOXuFJGUW70QNcJPK8sXht0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VIzzwO09; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VIzzwO09"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8394C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769059433;
	bh=jpNgdIhD7HHQNUGFb0j0L7n2YLUPk9MZ3UF1Itf5Qnw=;
	h=To:Subject:From:Date:From;
	b=VIzzwO09eQjYbfoP5jXpFijrU2L+joOJDPJTYnxRGsECZp2tKOgP0gfOEc5FvoQuG
	 HH1HzC1WM3UO3JVzdHu4A/7VmPV0K4dRQnhgt/OlmuMBfFvzvAxTZLOhjICWGeHTC5
	 ugEHVo51q3AQPVI8daN+itrkjW1r3qr+Ua43oZGIxLtPD52VW5l3Jl3ZvJAgFQHI9x
	 L3TbRk9mQFo4F1LrNiIa7O6z7qi3QwNpXlPhS2KO30YjYIpVntoeXltNOjm0ropY2P
	 COU7FSS3oTtswL+ZhFj3l9cOabRgf67d/eyKcUUYQQCG5Vfgx+Qcv6tq5ydfGthb0e
	 eWyM0XYapHi9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FA3C44500
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176905943358.21237.12805575506036220200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83b227d96cf3cc5260de57dbb246ab2fd42dc6fa4ea96fa4716a5b671ba9a1f6
Date: Thu, 22 Jan 2026 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769059433
