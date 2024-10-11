Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D481E529
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728674154; cv=none; b=lgDDJi0DRFBfjnh+uWaX1kt9M54Qoq8MRsQKvhePMo1UnwTI1obXqKfsfgCTpwxK9ylDmx6maOIbH1s2vEcmN8BSb+N3Y9bcujdD+blOhFYaAxkuJG8wWZ5edWSnN4NWjqcqEPjsCNiTPrAoPuZAas+0ON4M1Ajnp2bSvLXmU8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728674154; c=relaxed/simple;
	bh=IwQUs8L1PfMkgEO2nGXu7zQh90tsFRGCtSygt4yhgr0=;
	h=To:Subject:From:Message-Id:Date; b=L62O8Tp9HswIda6VMHuVh19t5NkeJHkbYQMLD3YbmOc4rUJvsAb9HdfeVtuab9DyeJMItxhuebLfV9KADSIy/lbQwYWkXfpzi8LdcsUs6VxDdKu2FgLpHZHfN75ngWf3YC988+sB3i3wmBnV/DBYcs+CtnpURzyIOh10BqHGnYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oX/jpvZv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oX/jpvZv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C113EC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728674153;
	bh=IwQUs8L1PfMkgEO2nGXu7zQh90tsFRGCtSygt4yhgr0=;
	h=To:Subject:From:Date:From;
	b=oX/jpvZv2DtzqypJ1rM1MT57C3g6YmancoMF3xW5uO9Ut4f/MNfO5CQV+HYkXLKHF
	 p0ddxeNctvVOo5KggjhTrX17QhibDgfqEkwW7ZrKcXv9v4P7Ig1X1+S7SZm8Yx9GvH
	 89vOTOXD3hgUw8h0hyl94NufQMEGXZDIeiHhL0nK27sQxtSNno92zCC+s9t3pr8JMQ
	 QkO6cRDUdgvHecpDISDymKLzL+2MTBlt1R8jGvhER8JvowybMPV1gRn6srf3XcILnr
	 ojJH8q/FfG1bRnmNaQzF9+hZwGW5SyIg7/96a/XErBUXNzWv4hAe9SjhnHLwfZOvkS
	 MT3G1pt7Qa+7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04FDD0EE24
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172867415371.27895.16353681670813550012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57efc8bc9e7fb658cbf0d6836c78e1588a505b940da55ae20fea85f185f64837
Date: Fri, 11 Oct 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728674153
