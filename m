Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 726043AB272
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788981634; cv=none; b=Dd7roiXZ7b9DgF/OB3ba9yMT6Hc85/zOCIPQfZEpHLn5NLxxuNrUhU59kPZgpPa/ste8yvxLISbH705/CNtooyhGmE+gRX9jqJPi/MVaXbRzWIlVBnxDytIZf3fBc1CmtOFMVzNgktkX/RFzDkAttGABmzHO2MJxSU9NWSzGp1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788981634; c=relaxed/simple;
	bh=ERUFmo26dh2NdH87E3pSsm9z7S/TXkRYDAeDaBbd+ho=;
	h=To:Subject:From:Message-Id:Date; b=isKPxygZ3JHkYG1EHv6cBOVTjUXrIAibDEzv6BDXFUWJYdLbFvHe/bcH2enIUBvOeeNaTjToVj+wmWHbOBnxmJepEnsH7ARg3h9yDXZUbQxpBXWAuG5Jr40Cx21ScgHjsURBKIOduZ/qSgpgJBhZrMYNkc5SqGW4OjsDhKX+Vog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HKyEZB3j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HKyEZB3j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAFA0C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788981634;
	bh=ERUFmo26dh2NdH87E3pSsm9z7S/TXkRYDAeDaBbd+ho=;
	h=To:Subject:From:Date:From;
	b=HKyEZB3jCKX3iMQt3JtETHWYASvUGAb9qcSZCUjR+CtY9RSf5E4EMER1F7f8EI+sY
	 YEg59Wf1QYf7/XVZ/FDAE1eEnwqnp1+iuGjiRnocYmur/HAbEz8SZloViste7zwDQy
	 6oggaVQNTDssgHCHGzxJsaVrHsVARoZRWR5a0K+bgeaxPDU5cHLMyX2BJH6VSjt+G/
	 1TjTShX1rx74cHc7lK88vQMUiBVnaDMSGcmX0lct7HGHNc/mchZhUQEoR9IC30Qmzk
	 8O8TeT9DmFIXqHInUqE15FLehFep7x9RRW1dPiXE96pRVpo4CwapwZQG1WrfZBHctl
	 2PG5wrtyIRJHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09C6C79FB7
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178898163371.15225.9536167318960705644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1002ab57bacf088c6e806f882bbee2e12e88407ab4194c674be825d8858285d5
Date: Wed, 09 Sep 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788981633
