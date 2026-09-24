Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 595E625B0BB
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790218834; cv=none; b=i6s5UR1D0Nd3YKjJZbAdutZBGxg5F6xJKzyH2rdBMuw5Id9helKqoPGJZabkYNwtzUnr0rT+xwu1/UjWlOYDdeHivhaRf6e+o3TzGnlvQAuJjKxYgGa2hwaZKMI4kJUGIhX2ISAeC9OLWp57BLtDaIHBX9gbR2AOgdBZgmHh0DY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790218834; c=relaxed/simple;
	bh=Sr7FtQVWN+s/fiXuvaRp8wdiDB36fgXrqSoR0zL3BIw=;
	h=To:Subject:From:Message-Id:Date; b=rNxFrVEZyV5hS8Y1WxM2QED4t+Bljv1M+C3wgMXow4Gpkobcd4989ZlplLmtZDcJHjiCbhIqFauwiGLzCHVmMCM+u4+wxC/aCdtE9whuEUSAamNMq9vET5wGywwJQBryJOniab3pDQBXwvQBgRYJuG2aUlaFnYt/6GbanxBLQUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=grbIjBhz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="grbIjBhz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D99CFC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790218833;
	bh=Sr7FtQVWN+s/fiXuvaRp8wdiDB36fgXrqSoR0zL3BIw=;
	h=To:Subject:From:Date:From;
	b=grbIjBhzoH9FiPz4RYag2y5m2eqVVmwKiuRjCMKKQvsfaBTCu2XOJk6x9TFv7RzFw
	 jkVdo1AllqkLeYnHCo1z/aDuh+P5zfWnO6DbjAdx7NNk7nPMV4z7Gbg/O6LwvkNESy
	 ERpr8gyQa+dJh6gBFGdfqQ9LFJ+ATnpqRiJAHANt+bgI6eptHm5Ck5qHDwv6NKfzJz
	 HX4keJNSbZG/yYJOcxRm6fT8yT6QO1aZSa7cGyv5misrb6NQralIPhy2+zsvLpMHPW
	 TjtPUPXUVkEorUlOksrB8brUq0X4lh/NTOafJ/9JLXeH/SA0yF8gpTJHzWXe104nOI
	 FQ0oiJHAIHxBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B58C9830D
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179021883370.13852.267308074336595672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d655ab3d23283fdf829a5d2d591ef3b3bd23e05d85d97047d481fba289ebb5f
Date: Thu, 24 Sep 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790218833
