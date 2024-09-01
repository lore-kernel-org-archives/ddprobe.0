Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5523C00
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725216354; cv=none; b=sDqHU2dj5RVAJhBSJv37Tdt/B6ttpL4NR/+NyMlHtTL7zdbQFXMWsmuhUiCBbY/P8/Q2Uvqoy+orvQzZdW9Xqkwhq04KYIX7sY64/11cIaM8CXoQL/8woXyNPqMY8CV29vYgCrp2Ym6mG+pOjeWkMJoTeDfZrRUShQ4eWZOcchI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725216354; c=relaxed/simple;
	bh=xk5dxzvB2aE5e+WbZzyY5JHFk423oQBv2cVSmLlReUw=;
	h=To:Subject:From:Message-Id:Date; b=NDPbVR4/IxIyGy9DuHnqdcmSxCxCPQ8kFDM89reyyqAYwzuJ+daqd/PlESOk5fUs7ZE5dCrUxKprhxlfMIlc9SZql9N+3fx6P7Rh/q44cAmZAowURRTwwSCge98VlCJSVxDHuE7C+cWWrfY12QBjPFomLFTjOtLPcYt/5CaF1RY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OYYqDpfI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OYYqDpfI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEFAFC4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725216353;
	bh=xk5dxzvB2aE5e+WbZzyY5JHFk423oQBv2cVSmLlReUw=;
	h=To:Subject:From:Date:From;
	b=OYYqDpfImQhp/BvJp44mIBXT3h7tvLmwsJ/FijlYtTWPae0F/Th8KZ9mb721DXBJX
	 Oo4UHeJhZ7zFqegT59Bbq3ZX3J2Bkp4zZFYZ7ki2Kn8gqhlQwKT9O78pzCGzOaw+gg
	 oqsy3c6I7h4C+fA5X5ZMsLAzfOSxl5+S7Ow/d/5Udz1rN2tA4t7JK8g4VwH4KGPobP
	 2IoLq+BVEklXddiLdTwed7Z+76uMj1ILIwA5q2eDBQc3+oJ90ge243N5vHC6Z7MuOY
	 nWsOX6UFb+exi5ry6PrOpWDbSQ3S6Wr5yIXcFv75Mrzf4D2aLhtonLL3qHIw1gFH8U
	 gNPAn2T9NevxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9756FC54FC6
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172521635359.16534.6388997996838703628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebd54b54ded2b23e14c83afa0d8155bc622bace2db0b6675c09a678b5986eaf5
Date: Sun, 01 Sep 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725216353
