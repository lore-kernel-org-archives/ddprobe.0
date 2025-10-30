Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFF7A2EB859
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761853793; cv=none; b=SkeqOEFhRDuQs+CgBwQXTo0ByrM9VZVJ6tOy8KHn1Qx/FmBZxOHCG3Sz6NWoAgJ2UZUC3aTuv6P/EzM0/ZtNh2Mc6KP1/96atMIPAWf/WcCrNwSuUct3FPjG+aCdBsLVNed/BKJeaenHQ98bejk1pAJOKjZn3LiaxAHRhAzYJz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761853793; c=relaxed/simple;
	bh=pb2jBs6D4bHoqFt04lW9jDT/cbOi/x1HNsT1jph0c60=;
	h=To:Subject:From:Message-Id:Date; b=kHqUP4/1JJjiyUsyp8UAvLkav9dYVCpdPdtnf+BfJ/ApcclMCy0nXOeSv6G2kt+4Myxx8r3SPaRVTmUzqN1KES9cbYbLHe06EyGvfKTfR/soCox1gIt/LEhNK1RiM9Eis/LAIhul5cPoTlZK5VGvkVXwfYyST15MxOZHj4YeTTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YvO84MZo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YvO84MZo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16ADC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761853793;
	bh=pb2jBs6D4bHoqFt04lW9jDT/cbOi/x1HNsT1jph0c60=;
	h=To:Subject:From:Date:From;
	b=YvO84MZo9gUFz7z5vYonrBTuJKdKKIH4T50GORrHVP5DUALWIqDNXqWjNf20fi2e2
	 NmfX0nh9ReSnTaXwan/8UuT70RIyPgVlZ/tULJ3Do7TTSEQwcMKdE8rud7lQXdnWAa
	 jsruI4oopR6r235L3GUAPkERLziFZ5tQndFDPXTGV6gLtcXIwV9G1liAuD8RrvQDmi
	 5YO+rWQ7+0doWOm3ccmulh7IUBgkSxgdsfYUSpLW6/mg7oKLId7imLRvuU4wfxgXAs
	 aRzrLrCfOPOe7V7boyrUKZJeA7ynqIpgmTfHzG6OhrT3g1rx7242muoPidAKFW/S5H
	 t90Qza4zbk3mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C23CCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176185379358.16473.11798268100026635846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 843e034ca3c1d307ed0ec6344ccd94807ccdae6d84580367dcd55f26b0df48a4
Date: Thu, 30 Oct 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761853793
