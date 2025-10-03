Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370AA13A3ED
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759465194; cv=none; b=nKCiCcXVyykaC2XlgG14gyjVzEnFqGMgdeG7ZJaxmNOjuWHMHPpS2ZGQjbocoINzY5U6VbWyPtYYLCHdYoQ9qxFOI5q5ORenQb8kgYEf9vLi1EaF4A43VM7jflyTSQimndPHQjTuXNohm/IrOonPVRduWFEwmwCs4LRKgRYMeEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759465194; c=relaxed/simple;
	bh=WwAHG3z8y4R9s+NHmQHI7oDjMvh5RFpIALBC/Ca3bzU=;
	h=To:Subject:From:Message-Id:Date; b=CrcdTZ/9wEgoUQ04JS801lTsm+Q6FcIuSC6ICKHHscxRknCCf9ALL/qDjbHZH9AON2y68jzEPIbaOOmvyQC3S1RgY2X6Tc8+NPqXzeGQ+xeclSC/D6R1HZkLbcwzWyL2gKOZbDJrTIV+SpYHT/GbuvPIuckFJ5QLY4xTeyJxYU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eG9Uj1Bb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eG9Uj1Bb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5571C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759465193;
	bh=WwAHG3z8y4R9s+NHmQHI7oDjMvh5RFpIALBC/Ca3bzU=;
	h=To:Subject:From:Date:From;
	b=eG9Uj1Bb6DjKOZUnZqmPenB3qs2Gms0+cxNby0evWgfaNTxoHH5O7sPDZbpM/bibF
	 6f4tr3G8Z5yCQq+Z2+ODExLFB1uQHj1K2u5Y6iM4OOxhzBVvahTajdpgwJO3Jak+a/
	 AQl2J9mPAZGWNr1GkbJKQitBzU7sGLESMUclUrtZaPcJUXHoGNkGTo3hGKwINkm7Zd
	 W63iuQcXRmsGwkAn3rZG61FuxB+3/mhutChTfS2dQ6qgoxEpFru7Nq07XWIAEEsqev
	 tVSsOyrhDJLt7pHxDwX7f8TzQGPuIMSpi4V+gZmSqUHSBVXYTYrRqVVkJTT7Pb53RR
	 tXgyfYiYUQVgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D446CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175946519360.29294.11688396460436289802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 870d732d6f0e3b9c7afd19339991a44fa3be3dd266c6599ceb7015fe13043c2a
Date: Fri, 03 Oct 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759465193
