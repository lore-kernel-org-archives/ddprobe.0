Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199E2352FC0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757605794; cv=none; b=ZWAIDtUv8GGKuUE9iiafanneyeR4BIIbh5VuPd/OJHF8q46VP+Dnf7TRK+a8OG9ISFz9qkmIThFwM7sVUU6H2QDbHAwi4Vq18ULUqhXqcR5j6GsPfTiEsslAph1rLlqk4Hu7EgCwzGofqHw4LZk+o7v+iGLG/nkjfLTBUzep6oY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757605794; c=relaxed/simple;
	bh=mgrvWzB4MoR8NZRNhDJhFCc8WmoQtBZEiOAROBKh6NQ=;
	h=To:Subject:From:Message-Id:Date; b=IvvrmWHedwuI76Zw3bFFWoReoJQlTPp+RDVLV8ejsvfgrrcT9uV2h3askYDpFpamqHhhvyQX6RIG2cGoOFqVeLSPLDtt5kb9qboOpBI9Ho4GIh9tZCS32LIz5lCX0+SgNz2eWVPeP17jY5SdzBPrgmScO8BwROdblHVlakDy9pU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EWSH7LgX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EWSH7LgX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0809C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757605793;
	bh=mgrvWzB4MoR8NZRNhDJhFCc8WmoQtBZEiOAROBKh6NQ=;
	h=To:Subject:From:Date:From;
	b=EWSH7LgXHNG/CmW+H2p/IWYiev2fKltkgD4R2VysAIMiNqDXfPuZ1u4wUbV5eG/kR
	 OtYXh2C6H7H7Vy7qE+nS2suRDBe4+inhGudL4RQbzk1NVCFT/jdVWvZDx83ps5T1Mh
	 ymjDmjjGeDUChojXQwHHnl/sPeQA+SWRIsOmeg8C59zwBm4f7ZW9RxGcGPlcqmbB4/
	 KY/YIQaABX3pb0LPrKseA0gpwOg81A0+b7hx6JDMfbOhlRyAhjLFgrDLwIcDYH6CY3
	 ohpFfD0ZnKDBXGEie7bzgCon8Rrq5rQNll14hzx3PlLHqw2a/7kY+3Hl6WHxz7Vv8R
	 ttlTg/5IRL+7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91104CAC587
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175760579358.17620.1280978958856843989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 395000e3dcffb57ffd5fd1bb48c68645a487c2d8b74e9a4c0cd95f9055777601
Date: Thu, 11 Sep 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757605793
