Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489D840E8C1
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788770434; cv=none; b=BTv/kCbJKTH8CTdiK8g+ybnnBkUHbV7IF4z4Yeg2MQXvoxsUBb1qyRnFmqfXzDYXPuSFQJCjEducoECtaFRmUc0K4wwhkHFR8AEl9ZgnGa3Jqv2wwHaa4ySwSZOKxg7U4j9JDv6djmSvkGDBZO4RBRcuxi/hbT7ZynyY1VtDQmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788770434; c=relaxed/simple;
	bh=SscwmJ3MGblepc0A7iOiJgZbBaBrAXROwMqtMWsdC50=;
	h=To:Subject:From:Message-Id:Date; b=FWRz4fPXwPMDkJ/b1xn59HtLQ4jOGJklzaJKfy7ni/QCEmSqKkCUmfJ21bD1VXyDFLU2ECLJ6gcvJGmounK5NlY6+oYIPUkd8k9PanlfFGxEmV6mx27OK6OGkt2SDVBjShAS/Cg6PyAtoHzEiL4BsHk/Ss3ZLe39CLJQ9SiHgo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZcoZrQyQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZcoZrQyQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF49EC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788770433;
	bh=SscwmJ3MGblepc0A7iOiJgZbBaBrAXROwMqtMWsdC50=;
	h=To:Subject:From:Date:From;
	b=ZcoZrQyQVILOoHdjCeksMqm3iItsG8DkRtH5VrdTfzknJDpy2jmqcogq5v+K8r0D+
	 s555bYqwBtyRVVvwZY1cpkI0Mi7SpVwuQj5ZSmms6rzvanAdmA7OeSUJbgxBML5EN5
	 +FN2euAOS06Fo9CkCoMz9qgmL/k+bW1ie4kqIMw5sY+nDnlsCBUsBv3kD4sRlaRLoS
	 chrtNg9e7OcIJvvf3bn4SexliK4IRvO9YT3PJzK5s1yV1pm3B8olIThrGmuYHr83Yd
	 X7Ao75T2dR0XRnOpPtzX76x0/YSrusqko8BQrK/nuAsDCIcFczziRGY9XcIlemPGHy
	 67NbWGhlRVl9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4C6C79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178877043370.21243.3736227699026328224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd4510280953cd3909fb6a7dbae604ca5cbad11953ddf489cab5bd1de9129a40
Date: Mon, 07 Sep 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788770433
