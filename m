Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2731843AA9
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749238194; cv=none; b=r8mzlVa2esXHrnooA2J4kOrmERBxI41Wdg2w8YSLru+JLMhZ0+RCh320I86HEIpeFMN4FozIVLaPNkusXl1jOcjf3dfH1OG5g2PMWrNZxANU1W4pPs7uOYUpmSF3B2rWUvq5VU2laQZXKxc+gElobqvCOH1tnXMbbG9F9eHaaUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749238194; c=relaxed/simple;
	bh=JB8BqJzI3kgd5fDo2gnaYz5uaQp4kqH/SdnygtECThc=;
	h=To:Subject:From:Message-Id:Date; b=dKmbA5Z8Kyc5feC3emXu2TfjZcews8BUrAgBhP/CBfHhelKoUyVHw3nZ5g0mcLvdex/0MaBbKftzD0Owks3rwrQRBD4jufxfihpJ4s86YZCaYQaOrQyumClFVvUefipWPiGK7lcmAG45XrYFFzr/R5SZVk0V9W/PhtvzGU58EW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MPCu8KNh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MPCu8KNh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30ABC4CEEF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749238193;
	bh=JB8BqJzI3kgd5fDo2gnaYz5uaQp4kqH/SdnygtECThc=;
	h=To:Subject:From:Date:From;
	b=MPCu8KNhsht8sMuKvOx0ESV0Eyuu+I8cGGTollbNJlUIWeicOZ8YN7zPQSa8Jsyya
	 5YNpt15zEFy3cm3IwEzkvKCHXY+YdJbwld5dfEgH1lKaENyaL7YLQPXHOz+0yOS3r+
	 jyXpzPcsRbi7EpLe40xWVh1/mGXaTKK2zIZPU+07qQLURm7R+uR7mZcToLsaFkMoiN
	 Ke4FzZpg9Ez1YLCaWzcW41VWtElCVk/Mc2ZMNzWa/r73CGEh6zNv0p/wilgTEapfIa
	 5qPTLc+hjfi4lH3t/mNhy4EcqCoDfXiZcApA0Itkp9lKZKS8MOX2az2EQnZrIMWRhQ
	 TQpDJlsmJOJ6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F612C5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174923819358.8646.18343342411559407200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 652dd927b065ba8aeb7dc12888b76c1865d886a5fa62477942081caff9de1148
Date: Fri, 06 Jun 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749238193
