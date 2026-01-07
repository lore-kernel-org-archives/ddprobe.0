Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C9913AD26
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767766434; cv=none; b=g+DyAMj8rHc2VxbTR+BOjYAQWCHrIxvCtM37srVLJUBbR0pj09z6YqvK0QIcyHo97tQDcWXuqDLL8vrl4p/G0e5jIUS2YyWGt/UGXVOkSHNRPJKkfPIBeyJjHG86qLkiseefRM4rBQW3FgSXbOAuUjp0IVI90m/aMmrhCYv46/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767766434; c=relaxed/simple;
	bh=oOQo80cXeVUBXdKAZTYSDmhqVlrZePEsDmDkXZzvoYs=;
	h=To:Subject:From:Message-Id:Date; b=mQOWIhuZFGuHme7Y039fIT+x91BpnnKaqsunm0Jfmh9XXbsE3jTkFjclM/Zu+kB0y1UFAIRrDWA8icFQtDwDpn5mo3xBGYm9aLhcjCE1dDeoOTyj5KyOpZMandRFh55/GuLhfzAK2BfmedHMcri1W5G8w2OAxzsfmvMm3BcJL6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t1rkLiR/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t1rkLiR/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1410C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767766433;
	bh=oOQo80cXeVUBXdKAZTYSDmhqVlrZePEsDmDkXZzvoYs=;
	h=To:Subject:From:Date:From;
	b=t1rkLiR/oL4PnhVmyMbtsxYpPiyvu6zKeRtwyd9r9B8NQskdp9EA/hAA+f2KvIQL3
	 GfTRhv6eg7MhRoPbp5BhTQostR28MNFYklF0UdE3I6FS7tq1P8GIiW9vd719sIKdNR
	 Ab4e8I34aITAIN9e2hSv3yiqE04LBR1RfXqvdXmfwdRw3bIpzFqrD4guqrJnBMEdz6
	 eVYf1QYlM3Kum9qzOIQ+mzC/YCDrxLx4jNb6EiilWZRUMe7rkjopWpUnKEhuiF1IcE
	 CCPD4XVY7J2sc3MvADogehY7GjM3GFfkzmbWVJwDmJ+LrSSO6Ed6BzSoitGj0BGNeY
	 +pYdMtnypdXyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBADCF6BF0
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176776643357.25772.8793426546862172951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1af45388496126b2adf16de44a763b7f991e74687d52968d1dee9eff9505db3d
Date: Wed, 07 Jan 2026 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767766433
