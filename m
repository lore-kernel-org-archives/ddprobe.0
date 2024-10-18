Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2CF370
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729274154; cv=none; b=FKe49X9Bd691r8Sy/y584UjK+PiK04VCEwegPrQJeXizP9VM9ijWtpJmXvAu/JqV7WvLrEcWPtYoqnQAiv6vdCpOMh0dbHbAmvg8S/CEeviqBRiEQlxffWGaAPEMevI4ifJbh6sSCSMdWmDU/xldgV4bdGN5z8BwjbadLYeRlB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729274154; c=relaxed/simple;
	bh=BFIfcgdIvytKL7HN3cg9oYxcTIeKCofXk98cyzOiaM0=;
	h=To:Subject:From:Message-Id:Date; b=g1UWoFMrCRtTodBxYZwP0Ak5Hk8OpkpvMtR3OePPm7T+1nRXA2h/jaFz0bg0Az3oOZAzQjmsT5MWl8oddEKCxcEP5bmrVbu1fUQt1+wQbYXPZXOJI+h4tRrb5ZRNo04IlXeIoxCgWHGTMwMsTjegEL2pmtni/y3OZ3QExA+CkVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SU59rBGO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SU59rBGO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72ABC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729274153;
	bh=BFIfcgdIvytKL7HN3cg9oYxcTIeKCofXk98cyzOiaM0=;
	h=To:Subject:From:Date:From;
	b=SU59rBGOuSFZQTilCU6YVlHzv6nJuiUENTrqxRZJb0WOuKvM+cLiYpQkqdVcYykut
	 Zb+FsbdGxS70LHkNne4iwXKI4GDGxqvD1jv6owOHKARspvIxoh6Y9Z811cWQHIGuYy
	 yUOI2aHUkVkfcang6sgCvgVoVYXixbFHeukdLqo+RRoZwz1KwmjxmQSIV4blEC5oAV
	 ypqmFfXdDJLDlOOE5taeh9/fBSW/KvqP8Q5r0gNfCdSvvykpMvR+DxnJSDNaZmAOFC
	 MHRqGGjWt22vPYb/LIkPt3szIF271p7ARRaIOBZ0XLPvWIp3c4BrLBviwhOOujzhFL
	 LYQwkjSOh0DCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97167D3DEA5
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172927415361.17983.7672270812457068658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a059cf5b6e6a947b8e7986ddf1b5564efd7280ce6123b87f22ce3bd203bf38b7
Date: Fri, 18 Oct 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729274153
