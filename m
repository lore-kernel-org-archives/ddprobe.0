Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C823D69
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751291394; cv=none; b=hw86AW4wFJ8ViRep0kAYVkGRaI6ILUIcnNJG2O8JmKvuUSEFeHsAX40hy9rCwUglhVczuyzQp3RcExHO2YFJc7BFyn7QxzKw7BDDCsF665h93DUTX5x+iaoOCDZr7lc8wO993aAlhqUfSeDHumWj6YehrSZCAa9CxrJZbwhECqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751291394; c=relaxed/simple;
	bh=hFR2yGNmpdukSRcLp+QKldiV0WHxYM1QU1FoG8pFIzs=;
	h=To:Subject:From:Message-Id:Date; b=LDjL6m8quFaxHa6dK/7HIL8eTEhcmos7PFt76bBI1xbLszKInVyZPun3z8B79iitYG/TfALGfiKZuXe/49D5dWmcz3O0Q4lqJF2qkO0po9SujR+1mOKnyDW6066zB2Ruh2fNEWybKRvkrelqd7RsSjsfsrRX0GNPIF3hcRANN5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XwAKghLs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XwAKghLs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C47C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751291393;
	bh=hFR2yGNmpdukSRcLp+QKldiV0WHxYM1QU1FoG8pFIzs=;
	h=To:Subject:From:Date:From;
	b=XwAKghLsvC/1hqXSjdpvKINhsZOoa+ZAIzL1f23MWCKEeMygNgpBKpugaQ7fA5f8n
	 FLilH4dr7GdYel77tw4gev48eQjjceMRZwXz11xfXLAQNIPL+onmDgHeM6vh54Cw6p
	 mhbXMRdbHVwqZSs+1Xub+rr5vAL7t4LmClDBuMKiSlON60ag4sVBXZHtcABZ9rBgc2
	 A3QCeUj5/ZbOigkBrctrUyjaqHOIe+s/Qb8UN4sFB/7zaDdnt4aL4Wcu2EDIBBrtib
	 XwVlG/0jZNZL0+6LJrMvNaMZXIDhjlew2dMJdTV71EEUDGG5/rb4j4ieyp1jNlU3ef
	 hjQEM2+HK69NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C89C83029
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175129139359.13694.17588959821909689071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3feb24bc4bddd5fc6e5c59c64d01e5b8abd95d9b2bad7e7fa9a3dc3165932fb7
Date: Mon, 30 Jun 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751291393
