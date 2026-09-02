Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5841C4A8A22
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788374434; cv=none; b=tzeeeEVWZFZrfS1G2/SHeGD56W84ws2udpaOr1pRhsbhc5/AmS2RhSZaf1SXM5CrVTZvf+NBJznauwIcnjzkQNxDAwcpAa8rsVRDfODh6yvcUnWNS5BUZgV7zVjhCPuS41Y4Xg1lbQIEEu6cgNtVOVmRLXQlH1baHbZ0aSOUOyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788374434; c=relaxed/simple;
	bh=ey80g1uUahOnqoB2Lo5IJ7m67QOcqDjesm9SaSRGfoM=;
	h=To:Subject:From:Message-Id:Date; b=koWGPN+MIW4gty5nZ1zI2x2a2tVK1rWayJ8ymCKuwQkc6NzLCUSo1fo3xbhapMkTCYWw36MywawIy3Rs29db/h4vqNqiB5zg/nSs9a85W9JCNTFbLiHExUF0OU+ibABVMP8GPiACAyZBh6xRkl8KqOTd9e2Gn1dbkPG9zDjQi2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZBJIxvcA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZBJIxvcA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA72C2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788374433;
	bh=ey80g1uUahOnqoB2Lo5IJ7m67QOcqDjesm9SaSRGfoM=;
	h=To:Subject:From:Date:From;
	b=ZBJIxvcAK+qe07oBPvQ1tmAZr9tYOUDLINYCU65q67Vfl+mkbyKldyPe29pZS8SPI
	 BVRwJ1EN4u+rSfhRdJHAxFksZYK2SRyzV/qXYHoPdsZPJwNvx8rhRSJojsQN9I8vNk
	 tGPLzqg/fflpr/46X4fhZdB7gq/zgouHlOtsFa3Hx/PFjwmkuTOOvegtZauGLCy0Vu
	 TyTdWdjemZR6vZwjVhI0CgN/YWiBFxfqOMccTzTQjPG2F5H1bsmWDlhy4iZf67HWXY
	 kfbD3mU6jxER4SVRbgTHALBpGIS/XyumslSiG5XQGGHOmT7VEyWzEzI9TmXSPjeKhB
	 znvsDBifL+GQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA339C624D4
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178837443368.27936.9755709422322967454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 838a8d8b79825db34a74ee06d1c89dba33e7cffa63d1a66a950299ef74e21227
Date: Wed, 02 Sep 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788374433
