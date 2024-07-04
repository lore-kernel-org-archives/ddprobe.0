Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 574C517BA0
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 16:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720112123; cv=none; b=Ok/LpjrHj1VeKWFKZd8kBF3YBPSr4C4CCzK+UXJTlJrLSLMKXaSuKHwD/Fv2CMT0GrtHRPOTclTS1BSQC4JwpX5uVVM4fCDv8x/rQo0WSUt9bb4PNUhvbFLl/aZl3D2jHCVqH5jE+tKDfPrQAgSFITugEyWEHI6mDC+GGqk7oIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720112123; c=relaxed/simple;
	bh=auhNyqxm6xj3XBEnMl5NGOKI6YVplOvy3hY7pgSYRxg=;
	h=To:Subject:From:Message-Id:Date; b=FwjZYhb9VOXceVsIC6ugc0oRWYXYgXkB/r0fZHTqot1H/CAhrgno+jgiG0yPuxk4obBBjlfKmqSrs2SwZ0+m0hfCYeJblELpolw7pU7/vS9vH6AkowKjkh6+C/ftdNwn9yYk+Vm7g9HL9VLmNpVt2dGuU0+xn7StlvE71qRsaf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JB3mnQcP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JB3mnQcP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDAAAC4AF0A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 16:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720112122;
	bh=auhNyqxm6xj3XBEnMl5NGOKI6YVplOvy3hY7pgSYRxg=;
	h=To:Subject:From:Date:From;
	b=JB3mnQcP6KzY/1I+GksCM5teSTGa/8RISytyNYbIpNMcq8mbFx28xU/RXdy8w+twI
	 eJy5MzJUMjOVRKTuvICGAe0FAtMg86xuvKxEh77ssjr4nkTHKfxy+OZkykpQSQydEp
	 tc/ZGG6lX66o0HubyVyAsPHCdm6mMrjR0mPPylkecir/JI4Mr0CehYGN8FONOwt5Bd
	 IDjQ5oOcjIArns/tb0sSaqS7KwT2PVXzoGZRjHBydJbBIPbCXO/SI1D/zApWih8+FX
	 ggKtj+rhTIacBTRrkfl1cPkir/U0KF1WuA/sHRUh5b2j1dVd+PWNRHR7it47PjilHf
	 DzgIA4ppBcveA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5A42C3271F
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 16:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172011212279.22843.401064694666104269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da09b4bf29ec1845c589056ec16f5ea77b5c7033c322e0d73ae57a794358d861
Date: Thu, 04 Jul 2024 16:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720112122
