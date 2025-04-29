Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39BF91E519
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745900994; cv=none; b=QzM7ktG7GXsR64LifZB5NveK8GY1kFUZn0DeZk7qk4cYDTrGSbjninIEpQrGwGNITs0WIODJX0F1SpHaMJsuEdzgcpMhskD4ZEukzMjizjZ3fZM0tejrMTjuVXisPuWA3nt5adP5FcWOnBmczDWreKWtq61TWWoTbDacs+BQfxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745900994; c=relaxed/simple;
	bh=qAz0XCWTqB5eae/qNiCpAiPYDlP0LI+eY4N8sTlSgN4=;
	h=To:Subject:From:Message-Id:Date; b=Xca62VjQLpFoShVXFow9kqoMRabrWQs7tYcqslrqYT5yldTsiTEI6fdlLjBo2JzgN8DQVLb3lt7eujaCOzzMgE8wohOHUUBOjYmvg/mC/rH2GfQzm63ZbcKy5hF39cF86HctfUIMF4aKQOmIlGmyt/8fdRlpAzt8Znewn8k5Cjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OvDjAK89; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OvDjAK89"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5180C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745900993;
	bh=qAz0XCWTqB5eae/qNiCpAiPYDlP0LI+eY4N8sTlSgN4=;
	h=To:Subject:From:Date:From;
	b=OvDjAK89KQAXHagDSosVeOzg3Z3ilQUK9e4xCVxf9DNlOH0nZv2mzibiMMqxIsj+e
	 60H1NpFRe+52rsEQRsleOrRLV3EMtbvGLALYD8QzlxyHiQVFwuRA8bzpbtJE83FwNo
	 RvYQl7yhpBogXfVF9s9MMe7AsOqKWHttIGATqQs3Ef22k7vEZNc/ok+jexhPa1IYr9
	 w0EOTAah42tQ3v6Ay9zc8JSIeDsuaP8QULjQZk3MYOXuzE7oDWjNQS6thJVIrUAGN4
	 Djtp7Kw3/0iPhFvSDTJfscnJ+V/FD6ezZYLqPDJC4MVQrgPvSs8ATi/KDkMH6oOkt4
	 1u/+ykSuMvPOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D7DC369CB
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174590099358.18152.2283951307943897935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9af2e4ebc7b9d06c1b58a54b56918c8afc25febc8dd20103fc7f7704913ed5ab
Date: Tue, 29 Apr 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745900993
