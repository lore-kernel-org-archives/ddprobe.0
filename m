Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BE63B27F6
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 17:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778433634; cv=none; b=OW4RRT1Z7j+DI7+9zzGU6/319HmrBQTYMLyCJtNekLM32uSK8mj0Rk6Dt8kNjx/u3d7kaeVPiAXDCc/mhHoORgv/vd7CES/y5EjgE8uNKrEbZlIn4OmW+LlU0tZy3RRRVVQrDqxBztXhjWdUqzmjB7e5tZRD4tWfZEnOjFlxPFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778433634; c=relaxed/simple;
	bh=d/cRuVLXtJBSwFdq/YYSqixsIfIeAV55/BVScPTDW/U=;
	h=To:Subject:From:Message-Id:Date; b=kxKJ2xsvvxwAF5mMcC2IDDasXel5jGGj/EU+fLF+GMYujTeNsrmpENMc431Vo10kQsUJvj+vev8GhcpaxwF0HM81iNvmUjKUAOfKN+DS8zcWkRwBbypOkysbjdx9d538a2e7c7NEiqA5AeEk8SO7ec67B45eynP63ADB5MrIZco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MK4HgiXj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MK4HgiXj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD293C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778433633;
	bh=d/cRuVLXtJBSwFdq/YYSqixsIfIeAV55/BVScPTDW/U=;
	h=To:Subject:From:Date:From;
	b=MK4HgiXj1TyqbL1tYQyIN5QBA6qeObzcgbKzQQIV2RnR0bHKR0Sv6z8F6ct1F6qqS
	 AlkvCUwvtMVZxo+/gq2G1h88mgozikyfY/utRJbFyvAcdCrnidwb1Dhw/AjDUjiu9I
	 BWKtuOgem/Fc7RzEtcZCfqjDTCHCvHokI6uvLjS7n+u/XbX70JLcddwi4eCSnIEvE9
	 LfqDZsBQ4fBAb7vweUVh+PVKmSmEbJSojVyEga3og8FN221gX/vexj/LktBOTaMRX6
	 ghwZv69KXfccFqS3sV357DJ23ZmJbTYDo728g8OC3UVwD9Pgqbr8tEsSd7u5tJLcCm
	 ii1o4ZKq7vmKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD1FCD37B2
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177843363369.13298.10341383398721412238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34818a08c94a469eed1131b113625046e577a116b984d6c4c0ad7c8a60be6c21
Date: Sun, 10 May 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778433633
