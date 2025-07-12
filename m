Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E019BE6C
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752313794; cv=none; b=OpcHgh0dnJrmTWhqIAdNbocgE2d4u3kF5Fvi8obXJJHM+mYcRQLdUjh8NGI2RcVjNEslSpR4Ht3hDRJlYyZHRedfKKugMh1rROS9PIbq02rlW6E9Jd4V2qMYoOhsQd8+RHMWDvJdMcD+8TmQ3JfkbLb702BQgzQjBQdijd5kGdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752313794; c=relaxed/simple;
	bh=V+gqYYuRS4H29lXC0ZqSCa8Uf215sGUs+qwkUvEBqJM=;
	h=To:Subject:From:Message-Id:Date; b=AF1Kt5xh1czBbrH6HeNKXu12v4FBTX/kyFzI0KecyZ9kAQDdgmoSnbdVHryF80Gh8LBd6kOLl8UAN/xkwEZV7bm+HxdoAxpQDk1UBEyxC5bGbHHmsmK1a4K30AJltIsQzt751GC+btwHY+BwR62rA8CFSJOG3xi7VNTp+q5TUeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Akd0s28D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Akd0s28D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A227CC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752313793;
	bh=V+gqYYuRS4H29lXC0ZqSCa8Uf215sGUs+qwkUvEBqJM=;
	h=To:Subject:From:Date:From;
	b=Akd0s28DmCUyC1iMrCTUvvpg5BAJDz2C/jdV6ums1q8vyDJOftvG+AvHDiQQ7ONoJ
	 OYSZKxYT2VvUAtaRMZnHvU/jQ3+RXyRAPueTEj0ayZJDrkcMmXriWNbOZ2vF8u9QtW
	 TqTaZGrQGRitiBD7PJMRSP9ShBBqxxtPaUIVAvuWQRHNkmFVTtmMwi7nJjJJI3HxRe
	 kva6T6gLLrO6K8XLOnZxhEp88CK1VG6UGdolvcyxBP8c+D5DsEhjGqmwSQ+4nO3tYu
	 qcOGvFyy5SYxEQbWCKPffS8MK1pTlKK8/AWpUFvrUaGtJMCjIKdM69eA+bLP9eEfrX
	 tBc1FFHX1swOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E0AC83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175231379357.32299.16831719547704809890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 071d0020bc248bbb9c4218d44cf8adbefb63fbbe41d19d854197fb195af987e1
Date: Sat, 12 Jul 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752313793
