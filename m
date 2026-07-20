Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F019395AEE
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 05:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784524114; cv=none; b=XjTTwnt3EF34Bv+0Bdvx4WoZY0w+S3UB9wDS4Lyf8FL54Dn1u+MrCPdeoXqIE7VwQkMx3gjgIdlQXWc/y2/+3qU+KcFs6pcHq4e9l/ApAXXpuSxAqxdzCjkPcKNuNBtz23gQY+4EzlVb5OzW23KLqDCrjxZmeaUGFTDK3LcXzDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784524114; c=relaxed/simple;
	bh=m++EFhlce57plHJ/enLHF87+SgMiPmKfo0YCgt2YCFI=;
	h=To:Subject:From:Message-Id:Date; b=apB9uQaztECZyRQMnmN+t7OHBbmNOkKsw/ArqRmglup1+WoZyI/+UkbXjMevLgShvS4ECxz1BqiTrUceA8cMxYBk2gMUAtRmBFdqYLqh4fQ+QarpdcaeAF30gJgk1CmZR1Zr9YtNTr0vwgNhkGRQ67ZVReXWK4c7w+xElZagy1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kiu/Wo9a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kiu/Wo9a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB6FEC2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 05:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784524113;
	bh=m++EFhlce57plHJ/enLHF87+SgMiPmKfo0YCgt2YCFI=;
	h=To:Subject:From:Date:From;
	b=kiu/Wo9aoXNuzCfGeHY2sbbcffrrLiqFPjnCoSyPR0UtFqbs/KX0V0uc1NrW4Sj9P
	 XR/hZ/vv70bt9TlWjZQ7IYSXS9MYuSfw/cNinxUD/MtdsDjFqTpQKGwQSmRWs9jStH
	 foIFkZOoKRJkh9Keg2Zl/VIxX8zOsxyem/TF327nyIs81V1XPWCBzCE6LeqWCMfYd5
	 33lA8lP50r+Y1KJgSWEVVq7uOll1i5h3tcIkWz76WNm6e3eU23glncbFFBH9KAWxu8
	 FdGg2H+Nrtkr1FzkbqVkqCWXdFFqbdPMRL9g/4822pvU3kMpc0OQm49J/Klo1DL6Ma
	 OebGf/AJbKQlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C49C44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 05:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178452411368.4336.8174875592554724783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56ba3f7c2edcd15a86cd79c5185c070636d6a626f1e61e2bc08a01218b98a221
Date: Mon, 20 Jul 2026 05:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784524113
