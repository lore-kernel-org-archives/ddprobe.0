Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2349A24503C
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769290434; cv=none; b=mfYM1DS2ue2yuEoB/QJaztIcTY8sQpkLuZKF4YHYZrxPXwLI66RaWuvlNcDQW3cNgnhDPHGGIlV3pid8fBNPOYCUdxhcYKjhOnY1u2OX6LKhSakkZK06xczrpF8O0KzupL9Ypy5v4L3x3um+GLfUpYGLQrVvFDI1+thvsLCogDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769290434; c=relaxed/simple;
	bh=PyaTY3o3yTmwvWVqGC/y+LsVoz+d6w+gBydAyh6vBUU=;
	h=To:Subject:From:Message-Id:Date; b=epYbhAwp2SguNQ7oio3tDP9gbTInd0zpMT2Gpx1jBf4Qz6fwKebXZM8u9PZl4+rftNRZd+iELJFefqdKKmPInWVkXEUITaOEn35Pnq3lFoYRZFu3dlaULb/PHAjw0ir8/o+8AER2hZM3ghzVqGSQ9EjfApTv6U9DIcl1s8YOyYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JJAgJ1xS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JJAgJ1xS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6480C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769290433;
	bh=PyaTY3o3yTmwvWVqGC/y+LsVoz+d6w+gBydAyh6vBUU=;
	h=To:Subject:From:Date:From;
	b=JJAgJ1xShFn/GbXXiDg0rHr5F9ytjlQkm7EuuBU00N7cQUtQIdN7qPecZDTRGM/lc
	 avxOXtY/+ggWIYwXCiB/PNY6Q0EjNto+6YmPrPA7xbXNSotTLdPpKcapaFz5NqMGcL
	 gb6hpo2jpWSbAXdznHfurmLz/w9p4cew+vDU3ddUgyKHSvzE655K+5T3Rn8hXhhJTb
	 mUnIZ9wDibNNxXSCKYCDl67wp8I/3EzvGeobG7oqGfLvMUDITQY7FoSD23tT5TTQC6
	 YNQn7QkM1FC+04t3BMzLaQrfM5jklc7jTGCyOo5tLw5nkkCD4wLsFsmq4+KkPnrITs
	 DJrzWd9skuKdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92293D715FC
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176929043357.31783.7627363247811437923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a979b53825a5e5ee717763f8428a0281cc082d4a09b3c4937e7d6c0bb636252
Date: Sat, 24 Jan 2026 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769290433
