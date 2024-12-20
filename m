Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF3F1A0B06
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734675954; cv=none; b=WYHJ2KUhV+HTG/ntm9QUoLeuaT51ikirtcRFyjgkz4whO6mhUzdsoKFdwOZwTSuONRQ8E71USgez4DM+4ITbJobSOuMJHIkq3XXL0TYL1UFSf6JVo3nqiSGVNNLLKXjPx8HKFklBXl8gXGvThHChTTbYDE977YHqdxW/AoPpd7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734675954; c=relaxed/simple;
	bh=TSDMLuC0Fi34V018ZsLIGf0YDc1KK6t4JJ1ixk72VEQ=;
	h=To:Subject:From:Message-Id:Date; b=Cqr8ixA6c2ax5e9iZHem4piYTmyOBQ/WbtQOsK4gUUdPAZPTxGVUaibVWYUctbIjnHFKKmq20UgQmwU5DFhRJ+Z+G9xJpGTHLPsT9W7dKDRfptrd89Z6QgCeQN/8qi3hH9KOholgUtf9wHFGQJ2nICBZLyzSukjmDP+Pr572Wvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YPbLGHpX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YPbLGHpX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88FAC4CED4
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734675953;
	bh=TSDMLuC0Fi34V018ZsLIGf0YDc1KK6t4JJ1ixk72VEQ=;
	h=To:Subject:From:Date:From;
	b=YPbLGHpX2f152oKOvwvK26DInzxnWXj0paPoywhu9GCiI95P87unPf21mSSct809s
	 BLhYUbvOglur5mr7kJbX+XipJ/SC9RpG0ZHzFjMf2ejcM3ymI3exIp+xfQYxiFS4kL
	 suePXpNhf4Bi8823TsarULN9CZYePqUCJS2wCo++jDB32bnNumRVNuMDSxvmC0xG/S
	 FITws59V5vEXdyp8MDKirRLxu3zhrVMCf9rFCQE4XT2LF3r/AbS24RInYu3U8W1xoR
	 wluKbr0CsI/FsnUpBVbW5GTJazurSlWr391bl9W+kBynPELpvtj9dA79+XhJb4t/ZR
	 9BqawZreyDfFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937FFE77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173467595359.12384.12620837300035094176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fb1decc98d6d47a523b54d701527bc493cb1f2762fb06e4c5fc91611fc7327b
Date: Fri, 20 Dec 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734675953
