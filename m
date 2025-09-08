Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D89188713
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757300994; cv=none; b=aPlP8yNthVX6cGhceCKIr6fVKTnaGcdxpGAgtZOSfzEj/oNswUJ2SXPPZCLaODZ6R+cIc30uYUDg9LgcSA8rOrHU6aUzc+MeRGbcBQk/2GEUswYLvRXwbojHTqRy9eVmWqvGgHEKzRSfMi6RVOXerN0VmbBTA3r/s1JJrU+gkoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757300994; c=relaxed/simple;
	bh=tV3nUn3qLCyrv+0nz9yGfesAVlGxDeXKn9xi09Gd3+0=;
	h=To:Subject:From:Message-Id:Date; b=W9OJpLXCllx3qtiuzQs1i95IP3el1FSnF8Gc0UarfIZqNvo6NDR6T2utMIt0rCbcsKqH+mkwBI8xeHo1nvDiiaCuHw4Kdb792CWSWIcGnml03RoRKmvlaoTVcQlkALEJ2MelMSbgbT+v0Hb8d/JCSJNZUxnSNWbNb9I6ORdoGpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n8+FoGLW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n8+FoGLW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D0EC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757300993;
	bh=tV3nUn3qLCyrv+0nz9yGfesAVlGxDeXKn9xi09Gd3+0=;
	h=To:Subject:From:Date:From;
	b=n8+FoGLWAOW+OUXjLxdahjaXlEvskVM6U2jUPu1gVTjLsesmYZIn9xJR1sYWGSOO6
	 0GP0XzJe1BVIpuok+HQLjT1AdGMLwRFGuHPgnAK83htSpq+vougM30bL/zcjHCPM24
	 xLcY/UspTkMHpcyxp8O3gaDIgBUa4h1SII//vnDLG7+BkID7dbOC/ud8BviySZ2nr5
	 T2T+j5YVG6ITWU0+r8y9q5upaRAloT+3GbChEZbdgKjiN7B8tlcw7jqCYwhWWmTsXu
	 KpffVtMA+7hXpNtwQQFf3ZOmdxpW6KEFWVfQt/W8pEdoOSQN9cMqT3A98qWindIyqU
	 NfFrH+zIa3uvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9E6CA1013
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175730099358.13946.2871360309089282310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80af28e2565e39b9a204c1e5d8228f2ebfd2b63221eeba512280d9b3b4563465
Date: Mon, 08 Sep 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757300993
