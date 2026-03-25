Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501433DB621
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 17:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774459494; cv=none; b=aIS7tA1Ip4Ymvh3zZkAEJNu4zHkn5maNnB4rQQDvkAocot7vta7+TAfBhTAt7oHHNZteiWa6PYbhq4c3UTGhZZwiUoul5N3YuByRasUy8gFswvyjhfLhUcmBSA/uxDrNeW52Ag6dE9BAf2Z7ZZYRjqQVJxpF3tZBkS6J6EAYZss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774459494; c=relaxed/simple;
	bh=QDw39lAYUuclX+LWmIirOb77R3eBQvcoj7nawJJoP3o=;
	h=To:Subject:From:Message-Id:Date; b=bJxATM86kYkpguxNiS3YNe6ZyWqnzJymo3guqlhuOX5VXFEJhA8BITfCHfuXcWfMNbv4WD8wHhTKXwVUSENqIf9PIhED7+18c6zUu/Ed3DszXqHR1ghJgPSp6RMVAq2dLtiVT2J2OmFE8kSMmSuH07hD/ZINDQWoKPzLaXvu3Lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kWmPLRCU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kWmPLRCU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DBFC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774459493;
	bh=QDw39lAYUuclX+LWmIirOb77R3eBQvcoj7nawJJoP3o=;
	h=To:Subject:From:Date:From;
	b=kWmPLRCUMrs16THhhjjXkTGmYnyWt4GtOsNyMWI/lUB3NhSG5/isWr7TnUa2a2DTE
	 7H0X9vKQ71Ar4E08LVP+L5IFGyXpZMorYN5zOtf7OReOuXU7wkgkAiGivGVZlTEB6A
	 NrgbzkWYjGC3WLfhCm0hj64qMewBNKn6OinDdd+Ki1LvxJ34w5oKIoXqE24Tu/s6t1
	 KQkSqv43A34Wq74ORqv2cQORyW0BPMk5Bp2ISJFtwpUCktH5ydTr+zj42BcD2IlSso
	 ncPxn33l0Y4uFlPJHL1CFP7AeQ8i5xywOXlVorYz3zXSefN2cZm9qrJw5fe1OprQ4/
	 zL+kCu9NxAX6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942B5109C04A
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177445949359.29875.10500119709989742667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cd908ceb5125ec646a95759a1bda16af7260e27062c1d1e5a4930d21c214f39
Date: Wed, 25 Mar 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774459493
