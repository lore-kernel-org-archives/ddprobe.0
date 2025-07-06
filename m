Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1589E1D86DC
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751789994; cv=none; b=aVfa1z6ECodUwVz2n5YF0cKpxNkannDTigJuiQxVYpz5ZD7nuasd9l2OvzPCJIfyBcVaGSXPtVYEtc74SwwQ0ucSBnXyZE/3aaGxRYz/RHEDSfif14Ruik121PUcHaLhicvku39rOli2Mp9dGaVE2ZhZ9CymJmFusZb1Y7Cotvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751789994; c=relaxed/simple;
	bh=OK8o1EZpe7b4RiRnbXD+/FOtNczNyOVW9yJ8bZFLHUA=;
	h=To:Subject:From:Message-Id:Date; b=OLQm4C64UHrHLbeaa/4xI5c1SN18YZv68dWZDZLFwKPM2ff2F1Q60C06f5JMmarih442NVRRuqQwaDaLktlt06CaKpsRRK1gs7i7YqKqNCP/FueHWuH1JLRamgXCYbOw3GH35n6XS4jY3obpT6k4cgMSsgY4LV2EEeKLLVY0mSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kqyal7nh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kqyal7nh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0051C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751789993;
	bh=OK8o1EZpe7b4RiRnbXD+/FOtNczNyOVW9yJ8bZFLHUA=;
	h=To:Subject:From:Date:From;
	b=Kqyal7nhCoXA/Ld2ykGicLNsZaAT9iWR1MVBgp1Nz+Kgu7BbBRNVONtysYszYuoS1
	 Z0yGO+wY9xnjlngL26pphQa1BvWuQ5NBd391OPU6ixQGwhcQ04Jfcdy8tvTTzIuaVO
	 cCqtU8FYgB1lVD0OH5176bepyPB8MRq0tmC20Nm2tWe8ISrJr5kxETJe8ZLl/0Jaas
	 GYA55BVQ9fZ0RK7Fknxp50/EEA7yDeYB50+IoSa/pPFt7De7Zo05+0vzCs7IdqdEv0
	 4omMnqseKISAVZckI+35iSewpe6kDP70mW22Jg5C6iVLR3bxz+Kpg7zLvfm4KYfOc5
	 ojO59r7WP4HqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E08BC83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175178999357.30511.9374905530387168792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a765ed6c3462ade806c5d90a1a6622d545d9db6b939b4622c1945fa13052caf1
Date: Sun, 06 Jul 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751789993
