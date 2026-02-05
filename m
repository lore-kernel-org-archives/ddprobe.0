Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11BF13EBF11
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770260034; cv=none; b=a+KiZTuIGofaIqcKlvyvYspWJiHevlZLy5jaJght+VOHx1qUTSAkhxpYgvVDC+wdn2V6Z++P0KJXtF2940mz5gtqzJyGIkZDowNLPAx44/TR/5EVmMa2OxmbV+FoSVvTQuxQZBASIi3Eb4cor0NbYA/iyalpzeaFxIF16tkA8YM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770260034; c=relaxed/simple;
	bh=aKx1xvXphRavzVrtB1iy5/TFw3XIOAxMAN9S5O4Uhk4=;
	h=To:Subject:From:Message-Id:Date; b=JCGnCipw4eldr8FoiYCMczM8EGqYwr/ZirNV+uyH0rmqBICwvjdULwPZGgbb59UeQoADAkX+XY9slwLglWk+R4gAYgVr2D2x4mNSma9h9GwZdPsUke8YZHeSZRQHq0jkSg4orodwuUhIdnQF2bZl733D6cV7Oteng662RtDvarc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XPH+C974; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XPH+C974"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF87FC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770260033;
	bh=aKx1xvXphRavzVrtB1iy5/TFw3XIOAxMAN9S5O4Uhk4=;
	h=To:Subject:From:Date:From;
	b=XPH+C974lNU0jgJ4vaLtOGASJcnNcrMkkQBQn9VbUfqFlC2z1shNEyZvmAWTozgm1
	 6g9K9tTjN+PFei54o2KLbfruujaMcAU1PxhDsEZMNZzwddRr4d2nyrhRCKVszUT6X6
	 WFZg7Yzs1s4V5ymCXM8jAotnZVxFm8Y4boQAtgVlybqQq00ND55PvTaPdf7eyMq0mw
	 lB5BIK6IK1ruQ3ZGioz1hqORyLlm2dEO7t2RCLyykhKLsfHTEX5+Yetxq5rpjhjRWJ
	 iyDZZAp+tEstMm1Ob9WWUW7rlJ3YpgH+25TcvATdq/ulhXetA3bSLIdG/cfyQNvQf0
	 TX11aNsB0HXCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98544EA7945
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177026003359.31028.463892022085610818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a01b229b7e3733fe966d46a434a86ac2c5da683699b31c841c12010b2b17add
Date: Thu, 05 Feb 2026 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770260033
