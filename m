Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1E0B36B04E
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768483434; cv=none; b=AcOOBGqQXnrEGwIvR+v3S0OZJGcts4z+rPnIsttptKZ5/NufnkQeFepSbGgtKfU5Ygz0nfvII//zpWEr3IyhxPaLbMQB7uyfFewPQFxZDR39acJwNWp2M00ET45sEiT2STxeBkpV6fh9ZMsJIJDFmB2kgGo/aJ9muww8wgyR1JU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768483434; c=relaxed/simple;
	bh=bFYmJC9OfOlCCYPLAKuP0QFa/MPmqkGWPdKw8Fr7Wlo=;
	h=To:Subject:From:Message-Id:Date; b=cDQbBzdr0hu7AZnSOvhM6l1QIs9IH/M2J1Mc8krzQrOjPVmPrgpZ0pQMz23BTZFR3nYeJIY++MVI1x/LF7Dt2QCr9aPB8ikQ5lEkwUi8s6nx+kdHjYcALiAIWd07Y7nYbobP2W6dcZfa/k6WVyFLM+7iNrADetq2EcPhp+qXBrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qPofrC9n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qPofrC9n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8D0C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768483433;
	bh=bFYmJC9OfOlCCYPLAKuP0QFa/MPmqkGWPdKw8Fr7Wlo=;
	h=To:Subject:From:Date:From;
	b=qPofrC9nkhIjDX0NAkSh66UdgXQ0FvVh02lF0H66dgyQqVqNs6Sw2X0VY3emjqg72
	 Os5ajlN3pnYxOFdsUeWaQsc5bdDbBmB1pGQRuBVaBo/1mmlPef0Q5NJ7JxJ4udzSQt
	 AvNkAiCExZDJ2NZsZ5HlxtP6T1HBX9HTVcVg3/RRl7sxOJBieCA9eNJPMAHNI2xlmV
	 lZ27JCLRnI8OdMNWB6y7SrTlh0sMrA/5M2IRTRLKem19lnHTUGrt8uaSVegAtKDZTk
	 +rboYvJKZwrVdTBhJMigzmial7rry/pCkCn0EPnTwTmkN6w3kJoOnPziQGSXxLKb42
	 B6ozL+hI82/7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9004FD44C48
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176848343358.31394.53557218054591640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff6854a4f1e50305b8752a4c0dfea1e9f3c3e5b9e6805bdd9e0d5457c48cfc1d
Date: Thu, 15 Jan 2026 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768483433
