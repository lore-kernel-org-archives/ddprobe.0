Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC8E2DCC1B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748793596; cv=none; b=cU1KTogzGOtgi9Nr+m6zjR9MGCKvifdi6p3F2DYrloWzhpMRMXZMJH2QMKRRLSa/i3GsRR/tZLuSOmQchZJk0dNemhj/SXJW4jW1srSsQC7CtjPJlP4csnQnwDxWfkAmRfWJjkdrdNHVUdlXMVBz472FI0HsiiQJ13iljSZsGBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748793596; c=relaxed/simple;
	bh=OGCX5pQnfR2Z+51WhoGBxWOLiQkyRf0KHAdsuAQr1fY=;
	h=To:Subject:From:Message-Id:Date; b=WByuXZRYUjBobUVilpi8VLl16tRFom8TtfFkHn/hpGnFc1azOiILbfIf0oF+ASyTE1SXhLh+k0Th45jlzXZ3BPxgGuK4JnIX7e+v8mSLpngnK0chDcf5Jvez2GCSiJAl6upCpN1fQ6clUEQnZOE8t6915UysnQ80JYD3VxJej0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uaflCpLF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uaflCpLF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A40C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748793593;
	bh=OGCX5pQnfR2Z+51WhoGBxWOLiQkyRf0KHAdsuAQr1fY=;
	h=To:Subject:From:Date:From;
	b=uaflCpLFcYu6MMyOvAM6FKhCdSpgJRx8jSgYiVkK7r0buItzXdpj//w1UnEVHVECC
	 kDZVXQ/a0QQX41r39m5rLJjLydjfaF6me/MPklGFnpx9Npiy/X7cmDG6tUo/eCo8bW
	 8f4gKQsq3TN02udqh7WzhJXRDC9/jO5HkEpEy6he5xSrpnyOufKc8OC+oRo3qC6JIh
	 nJ59ulUIH7gJyVqgbNXlrfa4KLEOB35X3slAHiL54qqB0o9VV+i+LbgnAp45aLLGvU
	 K8oA5g20uCTqv+4yDDmXmenBmcIxfBJ7i1TM9lsKM/ox+OSbjYPMwUhjFBzUyea3/j
	 vc0xL55tG4fqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9549BC54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174879359358.979.11516390950487603728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8d8155412997d6ac08ed368d7799e05cb6fdc7284497f305175cdb2c849572b
Date: Sun, 01 Jun 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748793593
