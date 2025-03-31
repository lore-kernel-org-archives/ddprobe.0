Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56FD6215067
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743448794; cv=none; b=ur9RdECrNoi5nZv+3SG6tNJnM1UJW/SOrCQG2TAtvnbshRXwgfLADGkMaS1PFnOkYw3fEKwu4kdISFBhuR0i40emJY+hkD1MjEI62JkM+JV1+SoWw/p8OeoIa37byG3N/Mf2g9eweIS5vzjZiBL+SopLMYUkWGatsBqNIM5Yl6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743448794; c=relaxed/simple;
	bh=UmI6dnnDCyj+IReFcuQ2eaezhei1c6bRtIVoFVFjCoU=;
	h=To:Subject:From:Message-Id:Date; b=uVjnPJS9cLtxpfr7awB9Eghp90vSMHX4sva1Y5o9KXYstG1W66BVUsr8z6Kz3X/jOloS3KZNICE7XIeKqU4WuDoBBknYOb0wUhI5B1eE/ol/QeapLe9POxynl1RhnqgS5vpjrUZYrRLM0XzbnYfPTKU3zisL15/ihbvyodFgJno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WNGHbz0n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WNGHbz0n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4EA5C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743448793;
	bh=UmI6dnnDCyj+IReFcuQ2eaezhei1c6bRtIVoFVFjCoU=;
	h=To:Subject:From:Date:From;
	b=WNGHbz0n8+GpOtXDZtmwpgD5JDnevnGwELvXLNAVXtyZTMb5HWmt14hCKRG3k6sAf
	 CqTbNm9x2z41KzpJXSAPYJAHENl3Tt95/OLjcb8FT1h66dguzIYVeo5kPV2hSL9Er2
	 /TvqkMUahM6UmcJZxeT1ishiGvuqqA+kSLaM0toOkrXjvwlOCn8ttPkkcMb6RJu+Ms
	 qF9pHNZF8XDKdTfxUJta4pNeH4hPCSSlQSYLBtDvodyEwsGNcjvOtMrsQgqAGCkGoR
	 iitLQYuTObYAzPi5NISD5VIhFd4ED10fTXzGylQPrjp6cx+7oX3Bkr2805ZJt/o0Uq
	 wwumSOkUCQZ2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F731C36013
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174344879361.24311.918917531122285155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0700edf335f83bc62262a089fc6416f07663b725c99ba37bb5b2c026d8fc1c08
Date: Mon, 31 Mar 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743448793
