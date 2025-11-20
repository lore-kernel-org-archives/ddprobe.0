Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7773358DB
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 18:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763661714; cv=none; b=IUKdZ9X9pGi+SFQWi3wnRdF111rAzv9C93P6SM/3rsjWM3Gr07GFub9QzhP0WikT2XJdxg+BkWwJGFR7HZnBRskizmgj+/uqFK1TQb+NyZZAGeCds/SUH45lPdgpqqSsTh5tRyiVO2HuNUMtRbik3//SQMcepDPqrBx57EijJPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763661714; c=relaxed/simple;
	bh=lb8dU/61b9M9sSXhz91OCOH+LSMgZCL9QfFGpSF9kiM=;
	h=To:Subject:From:Message-Id:Date; b=JqVMivH/bTTNcieFGhboWSpFi3LqF1YyHiVPcUVrrKRvukDUdCaLvUf2Vk9o/s1k2oJ6lNTh0BuVOZN9EgfvOYL4llaiIt7ar7AWRPNojIC7SHnEWbVS3yVEDjUg87xTWuZ+/roWbMHQjs6SOE0hNDkpkuGtC88OrId9j4AvlOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KhhMNYJ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KhhMNYJ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A04C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 18:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763661713;
	bh=lb8dU/61b9M9sSXhz91OCOH+LSMgZCL9QfFGpSF9kiM=;
	h=To:Subject:From:Date:From;
	b=KhhMNYJ8Qy8Nap1/rdan+y0gRSmSbanS+0P+GAGe03MQaXyHX8wf3pPry/dGN0xjk
	 F+ctEFrKhmPHM/iW8QFJRzMEMcmLD50VZiepaopMq8Y94uTheqTEtr2pqIxhXzHLm/
	 zAbcNT0ypD9n8qDZpLXVqwyZtM6UDfAVlj3sNvOWV9t11ZlqEYVrK7aCV+ez1GXrhl
	 RB+BQ+ZMPYiBYN8qdJAG121RtTnT1AB/9Qr4JLRFEthyjIcTd3RTpRSkujg0MNNDOD
	 xzCDPZqEQ9D45IcXDl5zK3juuPMFmqKlKjv6PP2lH5s0YkgW/62GlnWCEj9DRxM7+R
	 cufyDi5kstMCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915F8CF9C7A
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 18:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176366171358.1588.17821528174651947498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9adc32b89046569aeae88c7084c261c2b44e307e666707041c2aae216c2fd0b9
Date: Thu, 20 Nov 2025 18:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763661713
