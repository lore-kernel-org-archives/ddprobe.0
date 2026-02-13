Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13A0726E6FA
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771017294; cv=none; b=WdivKkKUbBJxDOsIBojdX3R/KSoA4QirPiZEOfCsAM5ZiFBR/Dk4xdEu+MjPgnl5ACO953Ga90X9evek27J2CAe+hKOvNkZBvnjo3+k1+ooKekSZzt50kuI6CZ3qMPa5yDAKDQfQQLG7RXDWBvKfnj04U5+P6pXy6FOVAW8p3aQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771017294; c=relaxed/simple;
	bh=MpfG8//b8BJgo2ZGERT3luKVF1AHiY0hmVrdeCsWkQg=;
	h=To:Subject:From:Message-Id:Date; b=LDMJ4Ke9Z0/iV/i0OHo2WBTUmFgCKpidLaTPNPOKbLhKJeSyUexFrY3FYU9hUjrpIa6u3spn0BPhB61sYtFvEN9x9YbTnRoUOEJsTHwH1UG7Iem0QolP5ZCAlRDghd8anokeB3oxJmwLIKet5EvpRl09o7x4fYCfO8Une1OAZow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bFvYpP23; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bFvYpP23"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE778C19423
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771017293;
	bh=MpfG8//b8BJgo2ZGERT3luKVF1AHiY0hmVrdeCsWkQg=;
	h=To:Subject:From:Date:From;
	b=bFvYpP23zFyvrRSY3olZMxgBM3BhVK2bWl2x8njkoZMtnRVWqJaK4IMZMp9SkFgQ+
	 tJHWbw46QXM5UqaDrO02gakIC4n5jfAKBkPjAxq18jGXBzpgwswBFErXxj3KSZ2PBD
	 M/cBr7CgMlTaSE0tfax6P4Ysd9vH4wO3njZ4yrCJkO4PRNlaYwTd2YvOldvrQ0fidS
	 uBtZhkY3/8jUWcTSXbc4ZD5Dcwbh/MD6pGeVZm1V/kYPgFJ03/z4+D7ItxLRheqYGT
	 QGzUjuV3OpstdBMC9uvbZl4O9BPOJYjkp96iOOe3gwvOgJ3PEviY8xIvUQuzBmTNfX
	 vKJTFa1ZJDwcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96073EF99D3
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177101729358.16082.10661237398566380341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 692d19d28c8e0370292cf132e841937040879718df659d2aef72ce17be89bc55
Date: Fri, 13 Feb 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771017293
