Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCB7A3F412E
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778805634; cv=none; b=MeoSpzoO9riFfImswTNXpLfuDo2wlB2fiVT0TKPSUcIwhzgPD44V96VioUStv0qi7dyQGBRHWknIfAJkYlTrU0u2FBpbdNuo3j33l1zmFT/DNQSSYrZC2PLsF2RjuntvXn7bFvenGxzM5ao/FRqmzUWNgJ9GrSuxqrbx8V1fdCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778805634; c=relaxed/simple;
	bh=Hhv521Fmfl6bB6JXOZZKwlkHn/IyqDx8ku4XJP9BUB8=;
	h=To:Subject:From:Message-Id:Date; b=QtFhxmaQaVnHE0XGOfllpF0KlwD0LcAnRM4/vpoxDjLjGzo+coALT63TzTxTDZ9Q6cSYiwKLy3NUfoGfzglNi30A4qZ9l/cVVgMw0TmPVeYz9pTkedVK9hMrY/agL8Tor2dioQ3gta6IzMNT8r2y8HDSSorDfHU1HdvXMDgqBDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PCbYjLon; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PCbYjLon"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC48DC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778805633;
	bh=Hhv521Fmfl6bB6JXOZZKwlkHn/IyqDx8ku4XJP9BUB8=;
	h=To:Subject:From:Date:From;
	b=PCbYjLonNL7NwLy/yT7TpiRlnViqtfM9tpSNaj96Oe2bvDRbJj/vpoIpNjb6Jc+l0
	 UdHHEPs74yRS4Pzyrdpzv+Y+S5piuMWtJbGyJ9IH5xcVN636ImNnKmV2kt5Lvt5k6K
	 UvdzW0Y3Td86//H+seAZfstFdajowM3nyj0jCtJ3Ptb8QOlLg/1go6QMCBmDo0igr/
	 VHsX6Z15rn9HTzIkn5/SkElXRwArpCGdsW1Fuy/gukxr+VpTTxG74z8W6+ZZcTVG0b
	 fOfZ6SEvy9M1VOp542lKeNk5BLE3jv2v/GhTbda/1dRP5p9eQgJFug8o/yP4hgqSdN
	 DSqvzoP3ArO+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4B8CD4F25
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177880563369.16354.15361069092276301528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a382d38b9af411a0be5218f5a149cf810fb5ef0fcdc63519b14d30047242ad79
Date: Fri, 15 May 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778805633
