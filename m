Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 478C47082D
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 16:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781801194; cv=none; b=u471LKN8NLguCw0InQJ78QMAx4P9rRx+YcRmEfE8txGE15t5S6wrxpbVZ7M4YX/8HAUE/C+RPjmqE7Pbq9rDYnSA0MsWAi+utQ991UPuZAUl/qPRZImAsPSys1mvh9BoLC+INQzIvCDguACPLhOfHn++Z6AGWTfGVZqLELKxpok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781801194; c=relaxed/simple;
	bh=FtcxmlRJDP5PigsY5zNcAI2/Os/myJ3KzWowJzB2jxA=;
	h=To:Subject:From:Message-Id:Date; b=RRAMFj/vVQ1bGpWSxkOIckO/rwa6odlbxeSDFvqgkr7IidsEGjdpM4GiyqpaoeE0M6aW5g9yIZzD+oqqgjxjxhL2XwqI8LGmO0Xk6SAnr1aHU+JMEir8C5pIb2quOC+gfPK6GIIiVuyS4g2MLkYxX2C71U6ret4VjWNomUCwa1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bbgxrb5v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bbgxrb5v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3818C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 16:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781801193;
	bh=FtcxmlRJDP5PigsY5zNcAI2/Os/myJ3KzWowJzB2jxA=;
	h=To:Subject:From:Date:From;
	b=bbgxrb5vkzyh8IKJuW/xVgtHBLFovMSo6atkSI9n1nWRY1LiMJxJpaeIJOsgpPrJm
	 SAhHW/wz1w0IVzBrL99xe9fMC8JwqguUFJLqtZ1EMXU3LtM5+vLv0mWbr7wol1biq3
	 wvG4MMHa+FLDsA6k+8jTGShlRkdWd/Al1mihJmaFG/Z8FFFGtSQou35qCMhf/an4k9
	 lyWKl31VQs2rV7sQzChMp8K9Z/bN1ouM9Arwm4398jTFAN/wPKPIEaFcGotqYJJuGA
	 U6KoOpwhyuHWo/8yA7YZDtnLbhIj8RGsge5LWufIWf9USo+sFPwFe5vZ1X3J8s7KCw
	 GYG9L6KrLXrOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB75ACD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 16:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178180119369.16123.9468899997809822807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4b525dfea1170ef988d5922a10b606c90be821ec2de15383d4ae080f49cfe43
Date: Thu, 18 Jun 2026 16:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781801193
