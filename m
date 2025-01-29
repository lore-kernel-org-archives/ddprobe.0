Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C9281DDC19
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 17:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738170355; cv=none; b=cdW53wo+NUNO1bnSRgud5qnPzAYddp3Z8zlu9e5jrCRNAYjGnWEj9UbuGbjVcze3F2DSIUida/d7hgx3b0phSuVHrKoro0C2XvZ0GChuHoJhhN2ZiYDoQQQWHuELGviffCGW0VEaX87ok3wwdG6Xvhg0LTI28hlencQ72vKHJcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738170355; c=relaxed/simple;
	bh=Qgbd2KPEkIk9XZkofKz9O7D5BKS/2RDfMk3mhgU3QvY=;
	h=To:Subject:From:Message-Id:Date; b=vCVNw+a2U9SL+CUoig/j4vzDv6LTA6Tm+6joHdhO+2x72VhmvE1vlXLGVPE0g4zXP/1294vt4OSeg+NYMOPWg64vvcsrYAaKyn896bO4xKeCZNpK7WnXyiIk111tFyBiIztnRILwUVK0d57MmBRmI+4lTTx/U1NlJ4dEUnIS/rQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WJyDivOl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WJyDivOl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEB6FC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738170353;
	bh=Qgbd2KPEkIk9XZkofKz9O7D5BKS/2RDfMk3mhgU3QvY=;
	h=To:Subject:From:Date:From;
	b=WJyDivOltu5o3TfBPlrkR9WH+eyvyji5rQdLSrGvaZubrkdUB1sgqm+sdlt+Oqk6f
	 x0sirvsVTmAGZZfLJVbvX65SQt/8V9fhqvwWbgv/sR328AWzMKjp4RdYSs/YYSAquC
	 gzhS/JUFfftSguhDHBSX+q5vwuNLtWv4RsLA6A2zlh6z0MJ1qjrwMxf7ssNdFX9ALk
	 x+czDuGJ1aHCIsxmS7hGHUcQ1o1tNmZ2PRA3Xrq5L4TDjI5bsuML2RALJzYqPH/ZW5
	 sSjBjXuisbipQI7X9WsFAmGLmg9tPAd2X3NUANQli+rkoerW3v/MuFG4EOG2hAKyVO
	 BE/J1CBEBjgNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9497C0218D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173817035365.2177.13294746537745148736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a95bf529cc44f4bfb856f73c3cc3a2b1ffc81d7eeb7fd1f2cd23c01a929f26cf
Date: Wed, 29 Jan 2025 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738170353
