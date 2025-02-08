Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E82243369
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739055954; cv=none; b=oHyvTi2h/0krpxtNz4UUhictvqIp3FK9dHsONDsfRoAoiGBMQ8u3YENPV9PkziZdbDnq4k7KsE0phrDmoq2ClIgQKNsTR1Y7mj3ib3QLfy7A2/RboAXIwMnoVC9fLPd2BDasvumqiHaiRFxmdIoPTxqBkAGc/4yDByZlr6OiXpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739055954; c=relaxed/simple;
	bh=cbO0q8kMg89Uk7KPz83rst7uioHo0+04lz8+fR4wO58=;
	h=To:Subject:From:Message-Id:Date; b=mpNyLcB/kcST06tV12Glx+UCs9XH32pgrC1GXXW5zz5RO7HnlhBJl9jm6L1vmIWYwQRm6TsBu6hKEImXhgkRFGFCWEK+K6IiKN7ih5CG+51bW8YBuUyyUN95VoH7ImHp0mw9C7Qqf2n7m0/FcflJjHy/tLVMzyxKhoGfy4jkCfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AqPCFqkb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AqPCFqkb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A688EC4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739055953;
	bh=cbO0q8kMg89Uk7KPz83rst7uioHo0+04lz8+fR4wO58=;
	h=To:Subject:From:Date:From;
	b=AqPCFqkbuSDvmuttFWtFVI1LyAybgBQHGFvLtcYhko5CrmhwoawdOjJGl+Po+pGDR
	 9mPk8rTJMiW736kuu2wp+ex2+1YE3X8gAEoNCbGU5ZioQ9EUbNIKkO2e287FTVmK0b
	 UR+N7jwiOIDUu61yviFXduYe72EZk8GidSqopwbuLV9/ujD4p3OmGlqAbzc+7JpiEB
	 I5HhY3mZYidwX+Rr5D0y6RV8YUPObDPjmSfI6tgDRVr0zo8oWzkUIhaHbTRFOilGPV
	 KoEosrlMVhCfXji/lZAnRnUmnhmb2Id8pwBfxsWehDf7h0EmjtHQa8zOia1yfeCn9x
	 YX8rHf276mKiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9222DC02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173905595358.6607.2634681195315085830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ad2ea0d838b62d9b7546a39ea31702e80aee2b8d6d737cf3f9e49aa51498bf7
Date: Sat, 08 Feb 2025 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739055953
