Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C944420E89
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792020034; cv=none; b=JR6Wzc757gdx/I3v2/aNnhojpuGrYAN6KtkAB4QEX2kV4kXMvzlmNmjup/09ZmmeeqpNv8uzae/Vx2PtTwi8Y38J7jAupnn1Hrw+Jl119HinnfvIewP/ocsFNvesaTgFY5apbuhmbNQB7bRF+LXZpxCfl36peqogJ69aInb7hak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792020034; c=relaxed/simple;
	bh=ZGn5F12Wzar3/TbOsHpmDRDxvzVbRLYkBmsXXYHgDMM=;
	h=To:Subject:From:Message-Id:Date; b=MmWSVbWGtVNgeMC0O1H8BKiJDLZ8ewR9IHfyUDVeKeXCEeYZeBZva2BxF9jdyN5BSCzK/Jvxx8BOTSOXq9iGrEF7J18uTpEpyjX4NcxqCLC30lWtNfgHSqDxgM28gL/D0qwjfFYPEj1mQ1927q8oXpTvZPByXTksQ3mRJjWvOdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rwG826XV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rwG826XV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D43D5C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792020033;
	bh=ZGn5F12Wzar3/TbOsHpmDRDxvzVbRLYkBmsXXYHgDMM=;
	h=To:Subject:From:Date:From;
	b=rwG826XVfWXLw5grEt9WI3kJ26rY7ooyTP6dxUngCrEMHnq7fRmafbTwvUZ5ndIgi
	 xKmLWP48A3rAQ3YxB5LF7651C9CTDn2XB/3TrVfI8/xxrMwVVgDS8ZCrUKrv2f4+dp
	 lXhbp932yiTgpUUBJ4O1KjbhgYWfLux5foAnxV7Wg3lg3QExSiNmthT6agCVL/9CzO
	 LRdTXqirPe7woHGMk1oKYOWH5ODf+K3Mf1hkT0Xw/DmIyHADQNK7N7xWZZA7FVHBKd
	 nBPQ3Z+34EgzTAdiW8OSTk6jYpTbAg86yzzJKdAZfh05SUXW6ZPv8niFxsLu1WQBve
	 h7bVlqO6E6pUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1BCCC6B2D
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179202003370.9581.6987438761345516051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a27bacf649e4cf1c2ea403cba582da14fbcc25565a103ca1cb12bad9924b5e5
Date: Wed, 14 Oct 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792020033
