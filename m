Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 537AC624
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 04:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717561583; cv=none; b=D3dcGlUY1fCdeBsJjZhbII5WEIvnLncIk2N35u13kya6y3Jjys1n3W9ku1nwKX8SAwc6FDkeFkYzifpxJvv4qymAuUDHJzFaP83Sl9H7MCvEJz49RUog3qAv8LbJmreRwzIFzz7OJUgekaqjynzGJlUbsCckSEXGZVI99star2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717561583; c=relaxed/simple;
	bh=yuzJbCYxZMT5TI2TCvuSrqD616vcbNYNqpAk3lGheNU=;
	h=To:Subject:From:Message-Id:Date; b=o+FK0vT6nje0l8GBiWA9r0H1b28mHmC1Osg4Am1UmIwKZWUnnX92Ih57qGimUTKZSbuTSTG29AAQNVWzhZau9MEhtbxP14/Jkqq8Zwl/z4R8wj4oAGLzr/9atTZZ6ezLf3SB5K4X8x3xPgvzk5BqpMfOgwz98+djp6NMn3gCReo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L4ZjKxlK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L4ZjKxlK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECD25C32781
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 04:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717561583;
	bh=yuzJbCYxZMT5TI2TCvuSrqD616vcbNYNqpAk3lGheNU=;
	h=To:Subject:From:Date:From;
	b=L4ZjKxlKHpxpg9RENF8o2vNL98D27txadYqu5Zk+4GUspaDAE6LxJW4V82UR63rOA
	 Nu5a1vQ1Kf1ZVsuXVH8rTvM+tIunqD0xmBW09czlPZ/BjdnXCPiloK8X4CwNhdYn7J
	 AVmiE7NV+brYNEazxTwP4sYakB/diYYRxuCEq0maqZHzN4LBVymMr6Otvs/fOfWClv
	 FpgvcLdAm9r0H8B5tbKIjHS8rUfaDGAbS6eOztbITmdCXAhXk7i+AQ2DFz0yPdFuZ0
	 oWgj14b8LdVHtsioz9tUoARN31IO81rjeYzkJs75AxB4JTqLaHsc2AXJPjXMBZTH+I
	 JDyHZ6/PBv2HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D21D7C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 04:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171756158285.31098.1486918564772987938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ba6a6c59fe363989aa42f12375d369d9c6e563e3923bf39b4d0e6aabaf458f3
Date: Wed, 05 Jun 2024 04:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717561582
