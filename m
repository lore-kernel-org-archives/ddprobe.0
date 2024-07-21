Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C4A1396
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721605554; cv=none; b=SoqPs1Ib139LKngOFobSShjX2HjL3AroInLWk0XpFj9bn0S1Q7EmzxRAb/q5K7cCGRAf2qz8BsUREBVJgz1azqCmAtUtH4pod4j7Gr8/i+8SPhFxy8HlQHEg3kAfwj6DyGtokBbZChV9KGobW92fyha8i/xSrORqsRZfWdxQ8a8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721605554; c=relaxed/simple;
	bh=XUpm/QLZRhhXt2P+hYPvZyK5QzbTbKPKw2hGUrbuBLk=;
	h=To:Subject:From:Message-Id:Date; b=DF2+DW5w1exQvq8KuCOY47fNGFtkAQNMtWx/XdmDiO7cuvljru5daqcZT2gsjfMvlAXYbloKZwmDK5zdN1YpzaJW8GFjKKQv6Rj+I24aZDdng/VhYtivHhrlAxMLObf1oCsukfHpbEQrQ76LihPDiA1PITsO7KMEwjQ5RywaA8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QXfZwVzK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QXfZwVzK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9A00C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721605553;
	bh=XUpm/QLZRhhXt2P+hYPvZyK5QzbTbKPKw2hGUrbuBLk=;
	h=To:Subject:From:Date:From;
	b=QXfZwVzKvNpE2DcU3sb43+dSd7vQNmXnnDuDc5NELNo82sLrj1HuaG1jhjEYUqGW/
	 8krQkAjn2CpuPZoiy2PgR7CmDfcWPfHYUwbkQXUzKbdLnpHZOYHag0JW3AvY39+3h8
	 m+Yz68a8TKQSd2TYqVw2QJq83g7oh5OG+SQiaiNlfpNMZNOUu1gD5Y9/ONo6i6ueP0
	 Mk5Cb4ZrKIp60Uxpu3mYf0Pi8GUsNileeI/csgeCN0u8GcDdshXLkJKk7K7jRbmUmH
	 uIMMhsuYh2/fr9e7N9a5qvtGh/NcKrmarrTJan67dT3McAbD832sSCa1NJ06bSX0bm
	 pW1Tssi5Abv4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E9D7C3DA61
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172160555361.2793.8367344997462010455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3618e85250ed6792504c9196ccf718be2a9a93f742e5575a07b3fb922dd16637
Date: Sun, 21 Jul 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721605553
