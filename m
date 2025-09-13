Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C35C19258E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757782195; cv=none; b=tt+EZJJZcQd5W0lHRtdQp/OG6Pvaco1FzGAxcO+tNrqpvUpKhiqx5RQ8FZTRHXYPdW/kNFCbxJnM2FINeLX9xdA08XUrXO4GTi0UYTz7Ssc1TrcjZ0Ps+ZO1ZnEseW5JwxZ+P8Su/YjHK2V+tRwxbURzCk3Y2UwxrsyozVQjAXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757782195; c=relaxed/simple;
	bh=HNlMES3DYOsgtxRlcNXGm2PBw6ozs2hU/2qTa7FbwZY=;
	h=To:Subject:From:Message-Id:Date; b=XdU8JuGM4hTBog0PfghUoOZj6rZmGOC1Z8l2JCKNub8dtsJQSCrQo9yFTaVLiq/+gDmvbONU/iMCAA6SpzBakkod9chy6X3qzgLpd5QzSNDxkDcvWFZ+UCzRt1NnZqj5l6iscUtHEM+ekM6RtHowoCjyGxmqi9VcSl3opnRfs4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDiN1Y13; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDiN1Y13"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB80CC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757782193;
	bh=HNlMES3DYOsgtxRlcNXGm2PBw6ozs2hU/2qTa7FbwZY=;
	h=To:Subject:From:Date:From;
	b=bDiN1Y13X+1OUyW/Mt2+9mKcvKn85H76cgAENIcqvFaGIlAeNAwzQRZ7OpJivrt4j
	 padRrpyCjAdkbBeOE8qNXkP6iX36pxT/yRQ55H0Y8GxPHyTYj9jW2OqQCzZLe/TNfS
	 mvYsDqhI5AhK9p6P6+ue6wDG222cQ0d7l37gjrPvvoinoIEcezZg/KeyCKTb2w5EaA
	 B9keuo6RErf2Ilz+y5Ef7kp3lyzC/sxb/8JUO0Wo47g7Bnw2amcyBvAAZIGIGBRC3N
	 J1YUsP8j9xRSga5BZZTx7oKXAO4uub3fJf1Lxs7rpyZ3XT/23XfMZNsWShdPExxlqV
	 ExEZcQ5bzoAmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DBDCAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175778219357.16613.12553151506169652468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28592c564ef5baea2c2890ebca30be96ae7f282ec441deb8dac236832701ed62
Date: Sat, 13 Sep 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757782193
