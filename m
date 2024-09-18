Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5328828EF
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726633554; cv=none; b=cMtsHE8IbfCpoG4ukqXZQAB58sszSt8nigIU9dCTjcpTG8XCe6g4Ka61NjcZqMhGfcfydeOinEtcwjfMkN9/kP9zM1Fd77of+X4eA+5mQbmppRlztkExpHMlFVxB7qo6nadnygYRMLT1xn+pOnbpzy+PYbAqOFzbyu8F41oJQWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726633554; c=relaxed/simple;
	bh=1aP9GKEqA1nwQw9OsrYvJ0ajJsIkggNHB5wecjdT8MI=;
	h=To:Subject:From:Message-Id:Date; b=gvKw7cPFJSmN47GLVgt+t0N7UBbfuk16UTAcfa7YaVpVErVeqZtswlsqthW+6Iw8eoP7sdX1QRJui3/2/B0rmZqdbyiXXvZiPuMJ7ykwiKxtA4/SSgjs3FlyaiZi8OgcUKpz4v5xVy7cFPJ6sIaBPPUN3XeI74sqw/Da8eCXyrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qa8m34Hi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qa8m34Hi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA5F4C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726633553;
	bh=1aP9GKEqA1nwQw9OsrYvJ0ajJsIkggNHB5wecjdT8MI=;
	h=To:Subject:From:Date:From;
	b=qa8m34HihLrzcHqQwZ8Tj37P30sOsMZux/izOiYR0RbGGPmEXPRidj5cE0iLTL4gS
	 z+AZH0YNAGhEzDD7GO9f3NTaI+8/q7RrozSDxAMGFrS5Z0XozqpKl2jCCuKOotC/dJ
	 O/AoBIMH4L6Np9aedNUAZfSJhxArHovWfYk39XxSHAG+b6i+e025eWB4TR2b6B5Ozo
	 lV7aVq6XagaAZl04QRQ+IaJ7VEGzIP36DPNl683TK8mITDXTWDqK5kUKOdp65L8VDN
	 Uji+X6p1g/sOSFCvauq35omdeWzKWrYXgQ9j/ThK7aslVMbhZiigIYGr7klGAHwRs6
	 A3+NnB2p+hQLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2C8FCAC5B7
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172663355364.22453.1865451153699516235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7db949cace33449f815d1a41853e83512192be9a7219c79826bf1ee4bba06cc7
Date: Wed, 18 Sep 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726633553
