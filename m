Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CE737F476
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 22:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718834963; cv=none; b=ZUr9OzJNTcPxA8Imb2r31fts0wzhXBkj2+OfFqDBfjMCzSjCU/dv8kAgtyMZql97gp3vB4ouL5FO0Job/aHxWcD1nPOSfc+MZVIIkiphUyQgpNvPz7oO2SQNzAg4AFdpphAieGOVJH9xARRMxIUZ4lVxnm64kqcuVolkfWgNUn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718834963; c=relaxed/simple;
	bh=5lVdLq69pPaITIUSGdAElrp2Y/aRGNbZgxPrld2IGtA=;
	h=To:Subject:From:Message-Id:Date; b=Agm7Nz0+6LiJ/l1J0AGaeDa5PTJefnmvSaO3zweoyOXO7d6gCUhaUymNTtKj/7XflUqWAJVbDVFyPyRPdhChkeaDMTjyIYUPVgyB3MVP5MJcAcC4eEahvIk1rlRKWgoHzLJEihQAA9N4RXi3h475obMF6+mxaPpyE4OJu/m4s2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJroe0Yj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJroe0Yj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D83A8C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 22:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718834962;
	bh=5lVdLq69pPaITIUSGdAElrp2Y/aRGNbZgxPrld2IGtA=;
	h=To:Subject:From:Date:From;
	b=IJroe0YjSRPJr1+sSONJTi14v43gBTo+8kPfnmBuC8mwLxphRQ5zvP87DTA46F4/N
	 Ib4s0Hs0dYEjV7TmuvYH0/QUEN3v0N7xj3tZf8OmlIizK/ndhiJmRrKDANU1SR6TyQ
	 h4n5rp4R3qYYuDHTRrhYc8JcJyQML8iIQt34td6b0l8qqwXiQe4s6mnaKR0Dyx6Vez
	 1FbFJB1sSjhSygV6w9DLUFkJGH8xRg9Mz4tiuqczMGMNnQVr8t18RAtcgWPk1cU3I0
	 m34VqxVmUR7GntHFULdbhdGpjlydiuF47Gl8pKWQeaLQQQEADJI5qc4/xiVVw4+xVy
	 TP/34qfRZ2Uvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCCB3C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 22:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171883496276.6739.13018828100914639777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 560f0f11f27dd498335617a3246eb23fcce92eb4802af989177ca04cf05af528
Date: Wed, 19 Jun 2024 22:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718834962
