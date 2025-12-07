Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDDDF72602
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 00:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765067573; cv=none; b=O2GhrdiQL1cuE1R8baIahyLAQbqrEySek1kZ1uj4wu++UJg7YRGKQ7bPNOIKXlczTNGrnyhPg8Qtzi7kfehV6E/rovPXB8arFuMz9P88eThP/0kY9YEHBW57LQjLy/SE6PgqW5Ig4e8a2OEVeehenP/zdE9XOMvD2JHAgxSZxyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765067573; c=relaxed/simple;
	bh=xZe3LRcohPcwLoziXpM0kR/5keZsDTlALg+VI8bIkl4=;
	h=To:Subject:From:Message-Id:Date; b=kkQ0HaPxjvREXUPLad18rCwZ5274AJR+Ocz8gq3G+pNBvDT9nJTKlm9NxPSQv8QzDPbfYzHNDKuvP6WdQNx42BvQ25BAh46Vj1A64Ow3M56oQwL6RihO+yrcl8RL+udYjt1Di3mNYS+1wmF6zccdVveJufxj/Dmie/LwUEvaYLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OQxR0rjO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQxR0rjO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1C0C4CEF5
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 00:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765067573;
	bh=xZe3LRcohPcwLoziXpM0kR/5keZsDTlALg+VI8bIkl4=;
	h=To:Subject:From:Date:From;
	b=OQxR0rjOc9ltaEGGNQnfXPm6yOCbItHlWcXW52yKoNxNwaX044C2ugK02RxepGXzL
	 v9BMPmhiYDYOlU4JjuZygri3+52OyfPyqaRxboNCF14OhPjweF0aQVkjTfLF13XNkM
	 wcnZto95GeyM1jxDsnvdHPjHGETCkyh4+XCrJSW212MDVITU5Vl4UokAYr6qCpBzTi
	 crE474cUpUXaFqKR1GcbscKJm9+I4JckwaiHw9gt2huCfHiVPKZFB0ZoQP9XniyYr8
	 sGZDL9Jp59eZpo8D2+btgxWiPXVhx7fBr39Il80OltU2wgY9PGEHz3XM/Z0DlAiNRv
	 Sn6MqRWZoU0Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C357D3B7E5
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 00:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176506757359.14904.9566333991215790626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 961b29512cd834c091b688ed54494e5ec3cd65478559b888de02fdf87da8a705
Date: Sun, 07 Dec 2025 00:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765067573
