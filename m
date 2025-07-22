Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8A71C5D6A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753158594; cv=none; b=oP96HCbEw1FEqI6rTSaPacwK0sv6FBNfFXs743A6fVRKAlJIdXfl6PhYxa8BggliU8uepDXo2uhaSo8++6SUGgrhN5ItwB46AhPELSzwXZPY6ByfLRgH9U2DewxODaTp0x5tFSJhLoe0hz3pwlso+L6l8NVvKW3WsWMkRuuNbb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753158594; c=relaxed/simple;
	bh=a6MzUIg6Dud5vIDu/oAfk7RNX67kD867JMeQkMd7aN8=;
	h=To:Subject:From:Message-Id:Date; b=Ca/97L24Av88sHp2qW5Zf7Fz/zK0rmR2vkXG1XBZUzM9pKPXFt+rGiDCTbW1zeJdntNM4w+7JspwMSpHrfaQZcqUuCxQHEYTIRxZcu+S0BeBAo/lI0DQbWhZ6eUMH0A/p6LWp4cp6vzM3KqeVwUbwXDVZOcrShQx6r1HPTg3dcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o1X8qDw1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o1X8qDw1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C0FC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753158593;
	bh=a6MzUIg6Dud5vIDu/oAfk7RNX67kD867JMeQkMd7aN8=;
	h=To:Subject:From:Date:From;
	b=o1X8qDw1bIOLg9nyRXlLiaUt/oqvNvKIoVkaDkDO203ItTDf/rg9F0oV+PjOWll6U
	 GDXHS8bzRXYUuUAd/R1lZi45MDMOYTR5r5fF+gzUakqrswD3lA1UfIcTvXm1L7p4QZ
	 WMpg00e+QUO8XTMg1/t6uysRmh6vTnB7sTb9aTje1QbK1pon2KFbVt+2ZsvoYCUaxa
	 9GeasIPSQSTaBTOutXmhuLKn0+J+32gQUVaQn/MjF/LfTZ/+lqXa+DP/aha/Ei4Twz
	 DfbM6WIcgvLlJ1F4lZVnm1uj2GKT0MK4j1D20MkV8OgW5WWPMfyYeeDImoWufvCKsH
	 r4UgHpNcU1t1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96875C83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175315859358.19396.17514795393963201943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55c809995f24c27040978059ca127b14a254b8886d800615b26111006f3fa1d1
Date: Tue, 22 Jul 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753158593
