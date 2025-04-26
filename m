Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FAF93594E
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745659794; cv=none; b=bcbgAma7Hq8X6S3fUYn1pwUzfljFs8r4NARrbOiPOT6QuPLMSrzcgsnVUea8Ltzl33v3L2g9RL0Ig3PCEMUvSEZFOYBuITcPB29O93r1TEV7+hfTPrrkkz7iuLvvnMT86+S9ZNVedb2WssfEfK5OeOlLn9rmdW50dowLywQkqXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745659794; c=relaxed/simple;
	bh=ODCtsAroRq4WEqBMeLpOqXE6o3vZhUd8Lm/J+J2mpXE=;
	h=To:Subject:From:Message-Id:Date; b=FXgIH4deasOt1t3HjSszLJ2yGKnQVoKe3RJHlnv7dK4KWTXOR0KSvkf1MwbtVRHdKKfWN3Dczahcjp68iA5yR2A+LYGcTDIsX9GJig7K0V6gSZPBg3g71+FpGMKKxgRNIu2OKiCKovlUsAWjQ7J7rHepIsVdv786eL2FjRAE+/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CNvlRpPj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CNvlRpPj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A654EC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745659793;
	bh=ODCtsAroRq4WEqBMeLpOqXE6o3vZhUd8Lm/J+J2mpXE=;
	h=To:Subject:From:Date:From;
	b=CNvlRpPjjebX81PmzHPIxCBOcpJOK+fm6hrE7GkbuT/qWyTtBmNihLccBbeCGjcr7
	 NnVwuNFVQMzUIIUUCtDtNHbKp7otXyKiSUd0okk3C7BVJPc+9lGuPf5m1VkBFtzwoX
	 nXWPebTL68b2h7VHZpoNicp5Bbiq6e2kkE7o5Uc4hkJa5OvNSPQO4ZFZv6GHc7UzLy
	 CHJcgAZ/8c8rpa7FmnwPgbkQZi3xHyhQzvcPy95xUfPUUvzhKJCffvC28NNg1oQRhN
	 MPSkF76QbmVhniyq9TJ4cCbR6qbzLSV8nVUzAjJUGC6SCRVy95xpR/BOJKYsRQ6hTp
	 3y6JxdZNw/w9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943B7C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174565979357.5596.12532473978946784717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87a95850a066d6cd49a18cb626dbcf9cafcda8541c82cc2803ac7c3d7ac3e32d
Date: Sat, 26 Apr 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745659793
