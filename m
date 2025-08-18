Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D53F2417C3
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755560996; cv=none; b=r0T0Beyls80DYzOsQqFQM+v3cmWrOthyMX709guANhnn70M3JL4RA9cSK9tw+py4gRu0sKjAScyMv3LhY/oR8eMMZ8H4wBZgHFPlDiVymQYuN80Sj3VKpJiMHjLHQaiquWhJHIkSikBTdIhMymHuSmGqghiU7UkSoGKDT6rTfIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755560996; c=relaxed/simple;
	bh=eF57Zu8HXEePwdj3EV301FYnBRAnLdi9vo5CExKGXlc=;
	h=To:Subject:From:Message-Id:Date; b=Asj2Hld0otHhF6yi7o2TOCy4mAd6FXksWIJrrSOySKSMnKiPZenfxE3XSOnYyQgwVoftmxi2hH9Je8X/KCrflXWVRQZcYSXcOsxgMP38MBOzYwYrdhJN1UKDAn+ee2BJJpramh4qRRIc8CgYoWvfyFCJjwJJYQI3G+3s0GOsySI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rVfJo4Mx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rVfJo4Mx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75C3C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755560993;
	bh=eF57Zu8HXEePwdj3EV301FYnBRAnLdi9vo5CExKGXlc=;
	h=To:Subject:From:Date:From;
	b=rVfJo4Mxg26FXPgB6WmpxAbs7hpuaiofYMjOrDmfy1KkDzvjtOfu8t6Dsp7x+dr+v
	 6dUTGxGt4+1igByefsTmP47CDnSMC7Ey3Gk6MZeM/6U2iDqhFE6XeRToEljVMxQ20B
	 sgLGXaASNA2J1vubnrD45bT2MQadK0lwh6I3eeDG3eqz0JWhTx1M7p80z+9ff5eDY7
	 sZnzxPfP7A4VdPp29aBOmYZOQmUZGxqpFIu4n5PX8FqLFYNDn+nc70QKtcIYXHkWrz
	 W5xGwFzyaDhgQhJxsTjBEqarngAub9J27Dk70GeTrWInEGPJ0Jam1nAt1LV8W1O52i
	 zJiOs9r1wdRtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95338CA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175556099357.6371.1772274837341489340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b55d5d6da8ec6b0e59ae4961b4d9ca0ee76f5a67b116f8d5b0e247101bb9d95d
Date: Mon, 18 Aug 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755560993
