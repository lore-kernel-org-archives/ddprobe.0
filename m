Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3E89223DE7
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747793393; cv=none; b=YQnwf2hxvjvVlbP1cRuVfJMKcz/Z2pgscvfjZYN3AmOWEwe3v/vHsF5N1tRiT8ft1du92flRg8E4nmourzSLwHfx0VUIwuxPaRa+m51d8SQkm/CDdqowLtmlcCr8P0LJf81hQyH3hCG72yFpVLAnq0Dm+onTFZAbxjEhz+ffZ6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747793393; c=relaxed/simple;
	bh=JdrRrdLzlnJ5ipjsnQHQK/9NIAjh0kUR4YU9hKtF0D8=;
	h=To:Subject:From:Message-Id:Date; b=PHjZELeyr+nT1ePCdlCurM0t2bCeprYBy0xvdHjR4dULCMRCNhApd38OGcJ/dm5jWpl+JH9vaxMNz2hGJh45ZOYjyYphAodYpBr7SFpN9taU38x5vXxADx12PlEyVYWujjGAx6LzOzi153MK+q32MQIFqmRydeaGTr81mFuLUps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfoEshMR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfoEshMR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DD6C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747793393;
	bh=JdrRrdLzlnJ5ipjsnQHQK/9NIAjh0kUR4YU9hKtF0D8=;
	h=To:Subject:From:Date:From;
	b=sfoEshMR3yx11mbXC1ZZPVLif3tda2cp1WkivaWhpZuUsUPjxn0GHG0YsnbLlT7QQ
	 rlCP2PscpelCghK/SHwfXrR/Hv6b9GL2dUgUajDzON4pwQGeiK8pkVhhYO2TG6NKgs
	 8LqcVHoRujbx+Zjiv2FAUKboQuvtDx+imeqJcwncFXNh8g9ByZlIjeyl17NHOlAnHU
	 oTjJ8uQR2WIY1KH8HiNojZHzN4t7UN+Ik1B/+QFEl3irvLDx81U4vkSNtR+5XzazVV
	 /UAFgWRQmJSGTFbHp4g6YauhcFj6z1S864MjQxBe3cxe3PlspIQxzlOgN42m+nAx5v
	 jcf7BIYcHgoTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91168C54756
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174779339358.29060.15410842480088310887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5448e56433f422a881061fec94212da41ce472c665fc21d0b752694f9acf5a6
Date: Wed, 21 May 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747793393
