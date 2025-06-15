Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9221E3762
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750014594; cv=none; b=TUEiSAxeYWCWTi+e93zhFtctXnklRbT5TloU2W6UbVD8ZJxjgMX5wIAggGoVwv6YYTzXgSFHFtGUjTOyTjdDxz0Upap872bRUiP35r1xQv+eKFvHDQfk3wyOV5ZcZlCNxJ4HHXJIMLUHUJpqY+zViSFjKlhPzeDHXnYdgaWBg84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750014594; c=relaxed/simple;
	bh=3TvoIUAbSz8wM5R006RWvN7SgDzovMUUw4foOz4lT/s=;
	h=To:Subject:From:Message-Id:Date; b=CHg88GmE+rtjzR3m30DUsDqczrhq3PBENkkmC2EK2RBm7000L2+do9OJNugW3y2I/Fa1sbMVTllbmGgIPs28x4hcSpfxLnDbLuy0U+G7/8EO8bmGWKl3yLo6GL/JBMWbRju+D+UkzuyeGkCyTJGvO2epc5Eu7GJRx2A1lp0QnCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SVs/X2oa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SVs/X2oa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B163FC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750014593;
	bh=3TvoIUAbSz8wM5R006RWvN7SgDzovMUUw4foOz4lT/s=;
	h=To:Subject:From:Date:From;
	b=SVs/X2oaZ6Vkl/nfsz3nDbYBKDszVATRQ079FJYZUYzTzSH0p4bxVD3GrgF8NMbfP
	 w/AK9Vro634tqAOju9zNRHu6i1fuWCbcQBzGhC9u5t1qGIQpHCXhYYC8STs5Vg94Ak
	 xLBMRJC1LB8ev6XJnlplFzM5L7A+UFjlL0/YSiGrADsu3QyTklDSH/oSU0CxymOMhY
	 oRlzbNQJ9k7pGWvxbzFqBEeB3kJvcpbVQSkYUj5NuCfKGayh06p/HUWnjDcYmLdV1x
	 gJFZd3l1pQygFYU0ZDkSM6ig6T2AyXluevtERdF2lDtEkkdRolWWUinYxFDmRRHwb9
	 5WyozRC/Ybdxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98EC8C61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175001459358.26735.1586491153636295809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d413a4e3e04bc94e06019dd9302adfd2f2c2e6b3807e5b93854a5d386a7662c
Date: Sun, 15 Jun 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750014593
