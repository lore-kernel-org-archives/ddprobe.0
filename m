Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8C71FDA
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751605794; cv=none; b=jOBgAWSZyML7g3Dpje5dvb2e8jUY7MjCE8M9r7fR4T5hgUbqVYBIHCdsaxl4t4ysJao5QO34hz7If58e2MEjOuNPFgGZaiJF3Ef0QoSme2i3n5aqi/3mRcsMY7MdRUK49bUa09ir4UqsJmzr9eWyFWyol0QGnfra3L/q0aOnR1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751605794; c=relaxed/simple;
	bh=GMQXXRE8iWioFP5SyhRPhhNlnEVDGAQHx9Us4gD1veU=;
	h=To:Subject:From:Message-Id:Date; b=QqmJWaDpsG9T+UgLYwiwgLmSJiMPTNQ33FUTWStQTRPwOSU/4lQ3VBcNthygweAYrD/lHB3fa0jScXbGvlXao6G27cMDyAjwRs+aXaOiQR1LTb+/k3PAVw3mL3xbYqmOC+eaIH9pGt5mdyiCUiZ3m5d1UHQAGUfgyOJSMzq5ys0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S2/jJQe3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S2/jJQe3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A83C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751605793;
	bh=GMQXXRE8iWioFP5SyhRPhhNlnEVDGAQHx9Us4gD1veU=;
	h=To:Subject:From:Date:From;
	b=S2/jJQe3z5sI11e2eoV+8P3bhlPPsASdb4kz0n5s6C7U/F3SkUQV5rOTrzsH/LMO+
	 F5o+1vBSXpKEzAe6ExqEbZ0A8AsJE+d/nvUcwhC4LUrsaZ4PM9HeH8YDYELlbv0qGl
	 fBbssnyjUJN1ENrcBQph3OZMyWF5UAvjOpG+9yuWdUMdRghi2l4nP7BMTtQBiUec0M
	 KeKFsp4Y+ca1eW+JdAXemmE3GuJsrkkIEhz3DzbAHxmS8KhbMX57Q5Cd3aoIVO5pHC
	 /2wFxPqJRcswWYCNEteXxnfNhXm8D1M5WPUpF/YpZ/Ay09tz5YilcOLXynxAOsfOo4
	 fJSwuuGdd7q/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F222C83030
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175160579357.3915.6399294747178436106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37681025af9f643a4de9d66ed26509f9439e6c24d35b2727fcdff41ec91cec31
Date: Fri, 04 Jul 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751605793
