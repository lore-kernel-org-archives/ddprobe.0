Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3033655F1
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 02:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783565314; cv=none; b=hhsfdqi7u1WP9TnVP5yCqUx0HCuQt5GwT3Pj/isycLWnOwgEhxAe9Ph/LV78sg0duiBMHdV1Bih3G8C1xnXx2+9ch1hvhwM6l2n0TWJ3+hovoAZ2CbeZ3OWcrJK6h/XY72xXM6Tw0GyY+T2dcZ4TqYcRPjYxbC28JGfqdPaOHZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783565314; c=relaxed/simple;
	bh=Fg6gmVg+YNuwHGOpdTbUGYNQvjV9PQ2TdPTb6265FKI=;
	h=To:Subject:From:Message-Id:Date; b=HvIgiqZw+T3c8laYr9s9yuL5mROH5JevmYl1JrL+6KBosjyf4qGIB4dcB5KF8/Ytt+tz3cw7qYWzvjK3qz2t2Rvqn6TCWIkofWMA1qjcP4O6FTB2J+5SpoCuULb5QgHV5Z6u+iwSpQg/a+4L9GEWJjobujbx8xUBIfEAGrpu0HI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khk/Lng1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khk/Lng1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAEF4C2BCB3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 02:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783565313;
	bh=Fg6gmVg+YNuwHGOpdTbUGYNQvjV9PQ2TdPTb6265FKI=;
	h=To:Subject:From:Date:From;
	b=khk/Lng1Z/ZG3sRkRhz4PmxRuqVwm/A/vj1sUL46v+ZOGQIB/T8EZ9kaGozgybWpC
	 W1P5/0szNwh8qRUqEAtHdOZZLdHAMrHZauucvJp8BzTKJ6EngWwpnSxjHNpoyM6I8y
	 EbXB06Th/qlmz57u1eikD8/T4tk5PjORxqaLJgg3GpfdLCfXqAoPe56hAy1b684/EN
	 h3zPRorhEHydbPAqMEPyqGBEL0qE2aEEK6LkfGAUBjvJCZu18q12zp6ab93uzOndBT
	 V0AlwHWAH8umtzCK5VUnqqUtNM+qix2DYN7cuO8++PKmERLOHh+Y6beM7LZEMKfzkn
	 8bxDkpCMPOXCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7FAAC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 02:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178356531368.30877.8921812371682816375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d513cfb1eaf340d1673f9b48ceb8d7129078f1790ded7bf0f9223cbf072cba76
Date: Thu, 09 Jul 2026 02:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783565313
