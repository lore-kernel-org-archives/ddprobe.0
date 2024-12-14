Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD94194C61
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734203154; cv=none; b=c9yljNGoo9wEZde9UVP4Ft5YR5M7r23tIyST1Wbf8Aq45mZXSbsFBefu5kgj61GwCPcgkgkf2wglMTrZpnxCR3oZvyMf6E198nB28EmThbnNcClAzNxv6tGex+mc15P6JmWPjDPZx0eYuDigqGCoELNJ8EEOfrRjk8Enq7V+YhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734203154; c=relaxed/simple;
	bh=YB3s+tnIfSMUUsX9LgoLPIKUExyG4Z2obK5DKM4XIp0=;
	h=To:Subject:From:Message-Id:Date; b=Q7PuZjyyXG/cJXBNYw4WQJ8yZ+CgeLgbXJT6jU5CenFeWIESa5fvt2oFf0FKT3vfbqyjXOPbcKKXaQ6jl79n5QE0ag5HFIh9OnKEycRSxj4IAbOKPS4z09L4jtOl4Z1Hq/+yE6DAUM/hdFKKo07jLFvJLOFISempvtLuD4+l65Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YydRFC5G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YydRFC5G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5504C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734203153;
	bh=YB3s+tnIfSMUUsX9LgoLPIKUExyG4Z2obK5DKM4XIp0=;
	h=To:Subject:From:Date:From;
	b=YydRFC5Gt9SbruKbbWYgCAQDLsGGAGhPCRWVK4zPgxVPWtSt6oJx2m/ZxY8seIpfN
	 S9H/aXf8Qx2eq7Jt14DcLQHhldYOdOAgL4KeRjAobbBLsvXeIM3/rUg38j8PXoFVGY
	 U7879KOt/RJvpN2gZlrfupfeXJ9B7EPn5JPxrqfNn11e4Vx944/b1bvwiOv800SiON
	 K6ya4reP0+jfuQZi6M2o1k1arJnHxTGsmT0L7omQiwkSeDbH9j7UBt7qILiilRxT7K
	 zkrw37e+bIVpyh8zN0gmn1CsreAfUJ1y3IC6SX67V6yWHv0Lm3Cjk5R88H9owbvGU0
	 QQHJQEh0aOA5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95ABFE7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173420315360.16003.16296440965990853621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dd91ddac794804c09bbb2ddb0fba98bc993004534480f3eaf9ba43565212814
Date: Sat, 14 Dec 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734203153
