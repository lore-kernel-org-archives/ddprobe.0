Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13EB92EEE7D
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 13:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780837474; cv=none; b=p7vNuf6NcX+VQhzObfPOMAFrkNDS1Zc63HawBO+UuOccjIUufyQvVweecrtcH/4Mi4WcqqKdqQzIpXb52NhP5Rt8jS+0v018iSgiHAqyLAvktrmZJ/yDrGZywgWG1zCMqW+vQwbXDCpD7vNhnwy3mCQPZ2LdGHm9+7X3rS/KGRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780837474; c=relaxed/simple;
	bh=l/qlMcuHHq8zZ0dH5xIJknR2QoF6THDcI3XBZ8EN3lQ=;
	h=To:Subject:From:Message-Id:Date; b=QKQjkn4iWVr7l7hXApe5xkcyDOYEntF5W6wii8a+7nYpOrGNc2Zdfqacvz9SrnaRYwgde2BZMfIflzzTsWBTLklwDrTJdABw4q54SN+MzWoCct3/IgKKoOs8l31GhlD3pioLEuNtjiDtvYdIO2Y6wqwpS9fE3EdRySZTg0AK6RU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=senAmvNY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="senAmvNY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C81E5C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 13:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780837473;
	bh=l/qlMcuHHq8zZ0dH5xIJknR2QoF6THDcI3XBZ8EN3lQ=;
	h=To:Subject:From:Date:From;
	b=senAmvNYhNW5bAT6v+CUHSP/ldpqKm0x+gX9d+sjp1ctl0OULf32E4aQe9oLP7HFl
	 ouzFigYvMCsaKCq9MoTREqYp+UYFG4Z0bC7HIK9zISMpUaKFoEX9JUn4rYDvJZIv2t
	 mDYFBwS37K+jSLI0KKLlzJvuG2BW2QLUih8fKzHV2EPRIZ52ay/aTRql6FOzAVcCyF
	 DJ6Imdqcxsk0eamOZgzImiWR2FNploJ0hNCjfxhUGDB8TeVgJMW/TXYzfjKJOyVjVl
	 r583Maq3BZkXVH9lU4t3BB1S00LiMzBMZPlUjOf90bW5D4ZxYbE367s/9ot0VkSDX/
	 CCKGlmZdp2czA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA26CD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 13:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178083747369.19840.17477343405757157822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5ec39ac7a12e04d3793f4536d3d13b3e9e0e7f8fe94eab0e1ce14649752bfc0
Date: Sun, 07 Jun 2026 13:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780837473
