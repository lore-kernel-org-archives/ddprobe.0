Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5D22AE97
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727670354; cv=none; b=QfqghqlcwOU6uM28gkC5rFPQ+xCnANp9x1+2kXNWknvLYB94yWd8dBM3OG+StbAwo8qKf1Qxv1HA5hyDUokUSrvoQp0NOB0+4yGidEsT2RzeFSyVe2Bkdegj0X+Gxb0bogKWK/xrXOcXWo6Ql4k1HFS3SxR0aRuVW8WlohO9MiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727670354; c=relaxed/simple;
	bh=nXet7MU3WRpkx9Dtl+ySops+CDDjVkQFhwDGvXCzUWk=;
	h=To:Subject:From:Message-Id:Date; b=sN9y1YUhIM30ySgLhttUk5IG99SbotoZZ2b6NVEhkGwLEw5gs6qTqrYJQjI26t7cLxCw5F5W8HuFl8lRKptE9BeaVkselzpr0uy5TTM0BjGU2ovLyBuIlkPyJimjbIk817J69o9lt5/HEATTQS7gmblHS6uGvuCk+81aI++skng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ou+tiJmD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ou+tiJmD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD12BC4CECF
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727670353;
	bh=nXet7MU3WRpkx9Dtl+ySops+CDDjVkQFhwDGvXCzUWk=;
	h=To:Subject:From:Date:From;
	b=Ou+tiJmDpVs46rsZc6O/Y7wbO6hl/+JlUEjg8NACT0o/ZNDTe7B1p+5+vmipDTV+S
	 +l75COitAHBdBlJ0tuxFd3GBM8Xl4tKVyzemiZCJq5ITns6sktW9HuUJKB0WUkDyj7
	 z50ypcrEKo15Aj6Ds6fZ74s2EyRuaCwkdWroED9ZVAjQeKGD3E8//JySFtI+l2M9dc
	 XMWlR0O7IQQyjDOmH9jsKETA7dtiL4phPTWeKAs8/HlZmi4OctVUsFW5g9rGwL88Np
	 Kcm4r1nT8HuG7dkVR0VwTqWV9lG545jhVs6NQHLRHx73e8kiGBqkGOKgqOcLUgnx5I
	 F1THq53Xs25mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981A2CF6499
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172767035361.13666.11418497746864567797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dab7c76c102d29349eaa4285b6ed9eceb2e28fbd2f109127693858122fb1a4c
Date: Mon, 30 Sep 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727670353
