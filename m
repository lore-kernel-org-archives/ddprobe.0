Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1219224DCF6
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 09:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765359774; cv=none; b=NRaGZYKOsFAR10urUHOm8GxCka95sUfc1Tpfog2G8LMm+4YmzyPge2TrC/IhAUOEDu9cr/O7WWE2sUZcSnDY7XurTTi5zWoobrb7qyD5ai7898RM4xrKDfb24JrrKn+qHbJgPCZ+9mgRBmhvaQ4iJq7ZMkrtvet3gNWMvQgZY4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765359774; c=relaxed/simple;
	bh=Om/VC0rTPDkh+agxdWWg86GeWsKB0KGbVS1uvbtsYH8=;
	h=To:Subject:From:Message-Id:Date; b=nHA8LQWbi3q5ZaLwAUMmrtMhT16a9pJUncqR9weTqWqYfPUX+AwZ4HzuX1ObRtZ4mP7KKoFEQR2pvwH8CVTSk6GadK07gd97iHUFnhVU2gEKqGEs6C7L5nkCw2qL20mtzsFzeEQ5+tY81Doay2Qcd1TJMyy6V8+H1MK8xpOCUKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJI5TJCx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJI5TJCx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BB0C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 09:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765359773;
	bh=Om/VC0rTPDkh+agxdWWg86GeWsKB0KGbVS1uvbtsYH8=;
	h=To:Subject:From:Date:From;
	b=SJI5TJCxzNdz2roP7mv4lwDqQ2wWJDwsqCD6bZrk29lihXoy2f7VSnaA6jlTnlsGj
	 MdkGZEtSie9MCIXi/4UWEJ/5RpblExZE8yB5WuCv4LZETrw3YpStBIbFiHPKi/f1tY
	 I5UsBGfANkjukDtA6C3kwIrREjSTHA1Jm3xBB5X1OjiSXthfy6r+AsUxTlKEUOAmRb
	 2smWv1kvolSCGn78CC+B3dPVUaQFRB0Vx/oWnS69ouE7LrM1Nz/glRelmDqIbGGFSm
	 pxAxFzrp58oibe1jLDaEpa98OarB3xOkQ+G6z90160vgNKn65mU6NnNdYi0y6Hlu9J
	 heGDBVM3nMVEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D8CD2CE17
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 09:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176535977358.30149.17502639720791238433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 506d22d996cb331b09585924d93de93ea725b27105e56d79375a3670ce00845a
Date: Wed, 10 Dec 2025 09:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765359773
