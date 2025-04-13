Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E06222339
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744511394; cv=none; b=Gu8aUSbvvhovealbtFQweS3vc3Gmrdb4EAXeXPMfEB+sso1qy2jn1Jav03lYTZ0wSEDiPWqNbaxM4srIgbdX4hv+A9iEYfv9+Xo4KUoR4Qcg+PxkB5W2tjWqNdd91mq1HCIi0fu4Rn5VGAvdc4bVgvutDQ4Odwlppf+Ypqcde7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744511394; c=relaxed/simple;
	bh=Zecqsl90NDeLBf6Ienl0KCCSkyvG5+RiGgiWNeaKBmU=;
	h=To:Subject:From:Message-Id:Date; b=sIMxSmxvMzWiLEbFivvf9Cbd8uD0w89Y/W7ay7I+F2UBO0xzWL5CX7JQnyfRTQXw6tC5Y34RSPoQUkqJ2YjM7WY+CZFrzO23ArIa46lKfnsk6sImMpBTiidklrDf87gKRe3ZUHYqz1QFGKWnIujpszbVJxEhYZJ9NJXCnVuK5J0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KiTYJxgI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KiTYJxgI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A919EC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744511393;
	bh=Zecqsl90NDeLBf6Ienl0KCCSkyvG5+RiGgiWNeaKBmU=;
	h=To:Subject:From:Date:From;
	b=KiTYJxgIRRNITH8l6TZUwpCheHK03MFgtfOlcLNGSduF7ymsXHFF2tBXfHLmL1WNi
	 B29f5PV6+fhGR9FZ3YFOsFpoPs2+CFvNJB0pDIx47pdTEuN1QdMa82hKfd+twPVE7w
	 tMWLpuccq2Uh7dwziMtT5TJlSFBoeeV6umLwX6IEVPk+zr3w8s0eNdBWyTvUlF1ln5
	 0nCZ92xj0loc96P6L67TC74LPQp14t0Cc0fRnMloHbgQKeNbJdBmWqjMJzTPod5+bQ
	 JrZrBkBOLCZK2AZaB5oWsx9sgPGtCwavUzQZUeXfi6HK7VaH2Xew4GKIuLopHkyMap
	 jAspUt7Ci7zjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986A6C369AB
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174451139358.27038.1823075007575666936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa32b666184e03be94323628213b9368b2dd679e2e507d95e8d76b10eb7999ca
Date: Sun, 13 Apr 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744511393
