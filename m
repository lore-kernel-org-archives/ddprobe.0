Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3248C14EC73
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749395995; cv=none; b=Wax97kWDcWoDOToiwFlKuSln5JoHzWElUAvsOU26PWz43HU+jmIy+omZ0La38/+1cmCb4eRkJIBmm+LplQxsYSfJMo52AEAzHISp8IEXZbQuCyHM/I5Yb/3R5c4KX95b43WlK6//RmTj6MH7So2qySvnrUIG22tFP/VwlVZeGXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749395995; c=relaxed/simple;
	bh=jZCxQq4HueLgSNTHMkWRZFaWNXenvTRo5FG9aX6EzTQ=;
	h=To:Subject:From:Message-Id:Date; b=pnYnMokfDHA672gg2R6dK3kVqTVxsVXz9BYzCub225JEL7yxoXgJFdx0x2Ttd3NqMxnwLLMFHtWVYRLKWnzQJhKzgOIJumkCg3LQosbS100MOtz1phxEf5vV2kDnKvgGLNhBCtUZtpiSfdagRwx4pM6g4RzTknc6TSkNDmx+vkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yuv1fov0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yuv1fov0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD36C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749395993;
	bh=jZCxQq4HueLgSNTHMkWRZFaWNXenvTRo5FG9aX6EzTQ=;
	h=To:Subject:From:Date:From;
	b=Yuv1fov0vZOeW9WyP2GEeTXxTr12lVf6h/DZTkuv/aP7iVcFnSC5oi2zm/PZnWQHV
	 OHzDdA+HEl11VA7n5UmAA9aZCzoFyKyD81n9gaveJAso4zChAqPlN9vrdSYNCGy/Gy
	 5ur6dk7jAVF5UI/Y8IObo54AQICZ/3R5Aapl4tU4K8i+9j2Mbl2KEIe5hA/8PurtqS
	 HMjs8FvReY7mAa4fKfOrcKgWy3V9t+BSJj/QrhQ8pEtTzFkzzyTwEVzxCeKB6s8sN6
	 x5gmM5mbE5mUvd9HbKQAigUlt+BhpMdwxFzTRV4Wn/AB2cOR8X2vipQQ/PYljGnp4L
	 XMbVrxTiBJN1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D10C5B552
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174939599358.15171.4567308442461609880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b0c8db0af921285614bf3cce125446c7e17254c249960ecee0ff4c62ecc5ed2
Date: Sun, 08 Jun 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749395993
