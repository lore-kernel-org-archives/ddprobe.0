Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3782B388394
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 20:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781640994; cv=none; b=IAJViWFKvBlPz+mp2QUwYEqycYrVM2BLzLqd3PiOxrUtoRlbTGE6KjUdvNfYPOXavcFcrVMFWwRCX1DVwirg6lriYskZizb/VTVrYv86JmRD/Rjd5sTK69UyIvE+gZpiRCnYbBvBUOEXPIZZ4QUvmDV9hP0ZWTcHRxJxRqObaW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781640994; c=relaxed/simple;
	bh=vyeGH31vTWbKcv7U7KQ01lqkLC6l9K0Ie4Cncz7oEFk=;
	h=To:Subject:From:Message-Id:Date; b=qCz3ida5kISCLl1GcLzC3O16gEkJAYlru7DLMNrI+HR4tSHoqU7e6mcQIb1kHNoaFtfdCHhXPAJmZvit8l1tv+LNejo2kuILAe3KMCIjpP1NP58rDFzXHX4u2HwabHXuzDdZXygRABEKwZV6zpuiqLOM5X+DnTzLwhGfYeGKFt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IxaAZD8W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IxaAZD8W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D79CEC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 20:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781640993;
	bh=vyeGH31vTWbKcv7U7KQ01lqkLC6l9K0Ie4Cncz7oEFk=;
	h=To:Subject:From:Date:From;
	b=IxaAZD8WRF2E7uXOnKoTiaplR5SBrBivhFiq+kCzUwrJvqNSs4f4zI8mG1Kc2yR1l
	 PcDheAr4uMQ6ODh0O5TpUHMK5hyOBfmRGpjL57LA9vc3jPfq9TqEriuxIbQVOTl/jr
	 Yz62kgMPJ7GwQdG2/881VG6OB6QOOL6zVmVq7Xb2KWC85aHu+IHDWve2+rcKOQ3xN+
	 W0/xUZ6dMHbuetDCeNVGPlvqQ+JQ16ElMFESYCuK7tmoF9YVQRcK10lrWl4daBa1E5
	 YgYpen0AsjwUDkKZ1uS0yPpAuGNi0KFsIP45UUu92HByw1ErGvmEpiOn/o8Rai9lir
	 ZJZzN0EeBh/5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC95CD98E4
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 20:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178164099370.20522.11329149628129355780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0a6111d62e30d7aae58d906fcd4a7ce01dce6d54ef5296e6379e74ff58afc71
Date: Tue, 16 Jun 2026 20:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781640993
