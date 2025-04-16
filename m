Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4089521D5BE
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744766396; cv=none; b=fK78nK1z7Qt9ZyI1moNeM9NddzO9N+Zu8SbXn+8ZBKnmtSCcVz3ROKPLd6BAPDvwd6f6hZYYK63JzP+xEV/1O6JmBC2KJCwj+te5WpK3yw2INiFnHzSJkjpoP2UDuZwKgst0JU4ldn3miFmMZKg2uGzphxajqjLCQySAAML2tUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744766396; c=relaxed/simple;
	bh=PdGBcZoPJ7fv9/4Je1Mdo9Us/tbyCeevGz0KvNdmpa4=;
	h=To:Subject:From:Message-Id:Date; b=sTo72pza51Nt7sUw54Hif24eqS0XMhSYe4/DBaU1aAE5th7n10WMsqEfIdYOee1E0D++tvglUhO9Bl5yzggOFJokwm4P6rwCLdqdNjgSFNE7ksZoQHvngyNh2vKfish6NqHthdNZXew7S6jzr70w3EZze80g1UNpmFZCVqo25Ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YrlWAKji; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YrlWAKji"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8219C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744766393;
	bh=PdGBcZoPJ7fv9/4Je1Mdo9Us/tbyCeevGz0KvNdmpa4=;
	h=To:Subject:From:Date:From;
	b=YrlWAKji2B2/NoKzcxilrdeTrBlm090ITNQRM1KvzUQ+94xWaHsouUSq6r7Xed7qX
	 w0/BTfv+otXFrajd+oCnPtD6nCLaIrn8vO0e3FYe3n7OM8ajg94JhlkuuETG5O5rSN
	 wM2hetO3vFhUfTqpSHPoy2t04j3NWLy5q3EQZNmoG+66lGGV9kuv32UV/enjCGUbs0
	 r+mVgBDDMnITi8FFKvryByiuxsyxv5okJMPjlFSqpf6bLSWKa4fQP991ib8fgWGKJI
	 s3xWePuI5qEmzdwZM5eeHd565nJb04tj/ly1vfmQUfvV0CTPglB0+DgjN6jmNRHbHI
	 8hQO4fwXP9Q9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98232C369AB
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174476639361.16673.9911987009367147795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 889c13466fead98810b068443ff1f04bd7b95288d7a07f8ad2336277ec71be4c
Date: Wed, 16 Apr 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744766393
