Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DB52DC323
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771676094; cv=none; b=hFZoXOtTNqZfHmOCOKFlA5fMs5GdRbHcZmHubk0lZuAv0zmrZ4kpnHQUJQ24qHJSNDxBpARDlUyQ91utBh2BScWmcQxCtJWO4lMmbAJx54Jn2YSOvj8wwGF9pMCLRb9IA2p+PW6DYK0Hhvm6p/7L5WMmuHW12jUNtLnUBFL5djI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771676094; c=relaxed/simple;
	bh=+w8yHC8Oh8+4uUtNDPPxE/PFp2nOjIgpCXTcxc9l8is=;
	h=To:Subject:From:Message-Id:Date; b=PBIZooUz0MVjqQai0vCBn3ZBR1ibAODHsUw8eBNNfvc5UXJwcc/F5wP1ZrcboBY3K/+T2lnp4RTKvOc3P/w9BwTtMVbLdjp7qp022U+Wojku69ad2vnSM/xSRuelvmAl96wyZLWrK7txtRxuMbisNxz9AUWxn1pB/+j//T148aA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hEwAUSja; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hEwAUSja"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD5DC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771676093;
	bh=+w8yHC8Oh8+4uUtNDPPxE/PFp2nOjIgpCXTcxc9l8is=;
	h=To:Subject:From:Date:From;
	b=hEwAUSjak6E4Cm2R9smUQWeIewShwUPUmC22cLh/NODBydvASWSlqcEAh4q9roGOJ
	 Gqd6CxkKflk+9Nr2h2cfP8ZUpDwp+8soU7k1LWCdZGpLPM8HqibrGv/zuOlN6LfeYr
	 0MY8NBxPyCeIY3rCsc1a4MmI4kGGoCjRxIkvGQteYrDlzcRtlqfql+xpw2JMviQWYX
	 0P9lFHIFQ8UGxM6CWBTWe20WH9gZGKt9XDNj/+BN6bNqCntVpcZ3Rb49JVoVDTJ1ul
	 iagtF3WhghrP3qVLWVC9Dsel3H4m4CemDVwWYrd6O/jobCgf6B/1oscAfVPjze7aJh
	 6ugwAw1f0yfVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97601C61DE5
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177167609358.29020.3137347465594681179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c60d61a8f3247f611566a6eb639cd18e344d147e6c40520b3cecda5f015cbcf0
Date: Sat, 21 Feb 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771676093
