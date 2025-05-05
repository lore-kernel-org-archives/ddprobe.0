Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44AA81CEAD6
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746479994; cv=none; b=AERpmGCxEuednZ8NXqCbLrN4IeG/OWc2l56KmPGcbEo51/yxdTQc05/qK7sbGo0SBIK0gmDaHyZE2ZOIQRCeAe3Yj9fFeZUHW+m5fqHkcwdTm1n99iS7U7b9yWqQT1ioGe8tEaXdGU35A9Ik/x904b7aGGjY09KFIMOK0fbHkBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746479994; c=relaxed/simple;
	bh=favPwLIQsrop9TCA9OQftRhKWUiwsR8q9uR7s8fr1Fk=;
	h=To:Subject:From:Message-Id:Date; b=Lvl770sYNizB6WR6MY658VEh17GobCyYyP2N9Y/O8GyV7gODMRDk4RrFhFuktlnafXYI13Rfw/lG0pM07DzzuYjF/o1UvPy2mIh9LBT2Ww10F+QU+SeJuGLLXZxvXHiRMtO25FgupbL6Y845ne+yrPe1ufoiIljcbF9oScbd6Bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o4t0lqT8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o4t0lqT8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0413C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746479993;
	bh=favPwLIQsrop9TCA9OQftRhKWUiwsR8q9uR7s8fr1Fk=;
	h=To:Subject:From:Date:From;
	b=o4t0lqT8ftkQ0V9Q4/yGkavZXKIoYq1hLGWZcwbTO0c3JwHyj6Bl9zEFvXA1rs3/T
	 FXJZJvvbH6OL7qIpUkEEqu8q65H53+rtpSjmy+S8M0ct6XP2j3k6Q73h7H8loowvrG
	 i2GEcppuMniBAw7/HA19b/v7ixCzoXzNouFoBvILZ7gNEoqGlt8bkVKr1YR4CVmOzj
	 wuw4Z6IDeHFClquptQ9doiObRk9UqesjeBz6FnGBrCX9JW3PN8iOLbuBC6ANKg8R0M
	 tV6Gs3mT3dTeisek1VIH/ihhMbw+ybmItAPWqZQlDYacFyR0SmC8o9mCE31M/07RC7
	 ZXCThXfBRCs8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E982C3ABB6
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174647999357.18153.13127377186460409118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06d25b20fcda84790b831d6a8ce609fd468cbcc2a88662bbfaa979cec7af3527
Date: Mon, 05 May 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746479993
