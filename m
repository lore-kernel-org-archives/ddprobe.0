Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E10347BD7
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 11:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777808854; cv=none; b=EAYLEPXoMBLUtkrMX3wEWlvCsR2nKpWg0JpmWODPm9Sq0DcumZDzWyGrWJFuJpqWE6yn/80/vVwkYCLamjSjqfsESjxbP1MW321ObDHMczd63eQ37Z06QUaZWU3tgBFdRO2ohAOh05k8CYTQJRVUvUD0blJsY+Do0PMf4xu7Jtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777808854; c=relaxed/simple;
	bh=2i77y/t21oLRz14tYTr58PwA+qyJROiXyRnvhLNofkI=;
	h=To:Subject:From:Message-Id:Date; b=sC6lKn5/+LaeuDw3Kr8bUxoZodo4hVlqfvpmQcs8oh+zFrGkYwnR926pvEtX28dGd9A0weLGJptInxnrrWAhms3/diGjTn/zX7rsJiUHnwxIt94+t7wB69fFJeDmRrdbxaWOZN4eMbzMve+d3ld7yIB9ETlNgqG97Ify5HVnOAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2acAvfN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2acAvfN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B72B3C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 11:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777808853;
	bh=2i77y/t21oLRz14tYTr58PwA+qyJROiXyRnvhLNofkI=;
	h=To:Subject:From:Date:From;
	b=s2acAvfN604a/RajNv/wc1JY7HeHzgF4bv2dCaBiG8KRDuNKahKIkcTuhk8uMWNqa
	 WD6fBUclsBed1Fgvj/PWu5zUhXbKyOLfbtKplmKShAH9RW3ukarRcmTCK5mzcFyERq
	 L3QQViE05Z6B/KCLEDQcsnKOTiu81Ws0sEM0WMMBtva2CinTCzKONMK2UC/L1KJz2R
	 bVI4UqaBRDEmyy9FD7SDlvu5ivY4nan0VUdVLKbcMrRyRQHA40kKeI2jLattAxBhcO
	 gq/xhHzUfQxo3H6Fbx46El8yM4HUPMlZsJ3oqPBKvPmNUcdLBLIVy4uPfzY+ng96Ka
	 QZUZZ0WDh1c+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA53CCD3426
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 11:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177780885368.14579.15457295234205697174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 568fb799c684999e9f60fc3ea584e24a047f3884145bb9215ed18723ec91a436
Date: Sun, 03 May 2026 11:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777808853
