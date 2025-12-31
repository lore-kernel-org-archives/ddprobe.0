Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3239A2737F2
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767184434; cv=none; b=L+rOmrY1u3AcRxc5VUMDMQg0mLcRBkxNfseFVeG7y54mXjVaIiU/Vk2QPtaiNNzmUuz6NCo86zsNsDgPWgali9BdoFQfZW7qufhI8TTC3BT9O8gsoQsRnRgK5nupE4xd0gNkN9MsRuPZNFtgAHHT7gjH/2YUO+SNWoYzi85Oz04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767184434; c=relaxed/simple;
	bh=+vNlhPq+cA5JO3hla11uYaAYz3fvaF8cFp2bEVyAdss=;
	h=To:Subject:From:Message-Id:Date; b=EO4CEOM/LfYYRADDzoWxs8bhLWX/GywT6H9A4EnzK+PFHjr+pFGGZuQzlugjqpWwTIBPzxWJqAxTjujSjIz139yXvjHbJ24hVMkopg+zPpeUEbW0GcidIp2cWgdyu3/7MMtcgVir38Yeu2WUyYS6mYUnAuNOMrkWq5L2DP8rerQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XSZLONlG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XSZLONlG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B9AC113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767184433;
	bh=+vNlhPq+cA5JO3hla11uYaAYz3fvaF8cFp2bEVyAdss=;
	h=To:Subject:From:Date:From;
	b=XSZLONlGyu9AlYSALiS3cDRl/biE6VziUspjfnS7r8RDevFWsmtplDNglRxG0zuW9
	 Z00g36O1pmMv59iXXXmv3yTE/reJ6DuJL771lfi8GiGUarn9ODMqypHqI9hTVq96Cy
	 DNf7bep3ZFLkgDGDSlazG3Q/AzUKzpVJzSgYDpnK61dR6ZIqduSeDGq+OGZgBzlLxA
	 0e33xTjCIa1jzyDfx23SFg1gFUK3WbQTs3uT3BVwyEwhGNp/aDJGP4sqsHOvAY9AtF
	 WCj4R6Hjv5s0otlRvFYxrUU0EJT2FIfntrchpovzd2aTbF3sgjTuImOkPdWPV3Uv2x
	 Rt5XtVvkGtH1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CE8EE642F
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176718443360.10355.11991838590553052124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa937ec876e98a80b732d0d0b495cbd293e379dbd83b8eb0014bde5b397e7427
Date: Wed, 31 Dec 2025 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767184433
