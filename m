Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECD4F30FC0F
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771626294; cv=none; b=Dd00XA9J8UTusdM5y/mM2kkWepZ1tpPLmkmtbZTpwN/BoDw8wLgSGpRA8qrjK5yLv9F4hlcisNjxemvyt16AiHyamoYyOHm7mowcy1PxXDMFJ/l5+8xGDPeDFztQC6D2ag2Sja1iQzRSlcvk9OmXy+ebwWmKu3d122Nsuqk/jPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771626294; c=relaxed/simple;
	bh=SIDvyKBwSJrDONLxPUN6jYe2mUGsEB1GicDCenhRnbs=;
	h=To:Subject:From:Message-Id:Date; b=hVycHtEkiy/DzJdB2om74nmlbq57Ifup0sAetspRkn0Xp9RMGCLVCVu2jlT4l8zUj46EsDTI5ajJ2sW+uvxT1nWYPgldNwQ4nIN4xuN9XUNwR1cDqvTkzG4FPU//FwETAgNLk/cU2GHzjCHXRLgK5McoHdvY/qxpt7nbzL5dXZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZA+WiwVD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZA+WiwVD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F4AC116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771626293;
	bh=SIDvyKBwSJrDONLxPUN6jYe2mUGsEB1GicDCenhRnbs=;
	h=To:Subject:From:Date:From;
	b=ZA+WiwVD1dOBiFTJ+s8gUFkTyTeYSiolylVJxO4rtcdW23sKI4GPHNKAD2Qvvncio
	 GLBJ0VzWaZcB7GWBHsupGulqBDaM168CKPU68+gqn3E7Q1qjvfnvwf1WP+PYCJ5XLV
	 uMgi3Mt/UnQHeJUv7zqHESn+x1L+D34kEnWRos/YwIN9g1xjUV5rI+z0R/Kr9y2T1T
	 +Xf+Lgam15utlBrtfSqahX/lftvTbi6m01qQBchh8fLnMxrZmclj0TwC2SMZTfNYxI
	 H3FlTw97rmTIZxNIPU2t70QJcBODZ7ofol+gBjRioTuzubTXHK0rEdfIPzjMIigKFl
	 W/rFQ7axMHbWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949FEC5AD2C
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177162629359.4408.1618228954511207960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cacbca9fec75cae29f1edf916eb37f4e64a8151941b40d44e7668897696cc382
Date: Fri, 20 Feb 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771626293
