Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2986B6E5EF
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 13:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714395743; cv=none; b=RDzYipTJF6te9c4T8kDA6FYRti33StkB/6gFxpz4g6s9I8MMeLRV9SvKC9nt7V0a45BRv1kdldpbkQf/iAK6Zmi11qLZd6gH9hhJmio8lGOlbORNLvI+yLj2Uk6OR5hLnBLSVb9BY2S3q4whL929PJGqU+d7CyqUUSOUHLFBdHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714395743; c=relaxed/simple;
	bh=O3U4dVqPBFHPOl9tm+6+2L7SK0i/1Qk22tPoCCbqL30=;
	h=To:Subject:From:Message-Id:Date; b=QaechFi4eriSb4jVcU8GIPFwcnHV+WYgEHm4n4mh6OtO/AWCuyQ4g3ypVGGiuE0i2OegaUueY7qZvtndd+XP1nwo+lY7qz8XjgEqoJdLrnFicLsIvmz9k7B4xfOfHB+lb0XvZyV56B+EXIB0X5N4f0VI6PdPqGOQVjfJk28mJMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tJBhlh2k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tJBhlh2k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD9A8C113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 13:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714395742;
	bh=O3U4dVqPBFHPOl9tm+6+2L7SK0i/1Qk22tPoCCbqL30=;
	h=To:Subject:From:Date:From;
	b=tJBhlh2k98bXepVU7nJOJABdkqGn2agyBghRpCeaucj5XlaqOy7FAMjGggIeYOXlq
	 ILiHQRyit5F+RP2Rca+5AudDz82AaRM0YKiGi8BGVg5E9l2C+Xm/SvAW7CEwOBRD9+
	 MMd0vWhfSVSjnKG2jjvM9aP2cGF77ihkqBqDavtbYw/87PJY/LOQlBLtrfB3qwD0Mn
	 tbjNnhZLkZSjUQU5My674QRhnYR8ldniBSIvaTLj3obAAjG7eUzUtX3mFqg1C9kzDd
	 1OszZcFSiT/9REhkEluFMTxMQNnEJj48evgGrTRq2MhnFgAdub07YIOa4Imd4JTrYS
	 jTvkwU8homMCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB69EC19F4F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 13:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171439574281.10386.14312996052289050542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b31dce9f3876ae76543526021a4a93650d08f867b5014f6aa0c47d01782ffd8f
Date: Mon, 29 Apr 2024 13:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714395742
