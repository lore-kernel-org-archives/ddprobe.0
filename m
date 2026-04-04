Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3FD1C84A0
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 10:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775299534; cv=none; b=ZT7VRVGty43Nm9Ev3Ggy93C21yU624KvCEtRBPOv80Tp74AhtkZD8/lWqEVMT9nrVfFnPG/O98cDgekk7rHrxi/KSQOZbCNq0MTmJJhgtViP5dtoYGxGJVLSEktGaF++Ba5bKF8BaLTlbcaMhBBqtVkU5TnZjVeHF26LLw2+jDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775299534; c=relaxed/simple;
	bh=SCz9S8+4hp3Gqm5IPHirXraETXad0EX06HwK5yYK3DM=;
	h=To:Subject:From:Message-Id:Date; b=l5zSrWAL7G4m/RZu2ZQWDwxukHrkAzcy3tf3eNnVRWvAHbGYqwq8NcsHwogYpwfywRTyLKRjlCCEzs+p3GoDv5zd9TSGXLCqsPNx5+SRUTkEybD3UCkySBRsPK4ZHgVZWcui7Lmj1pMXv7ezUvePZiA9yBSZhhF2enWyZ18Bfg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dh1JXaZx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dh1JXaZx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C79B0C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 10:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775299533;
	bh=SCz9S8+4hp3Gqm5IPHirXraETXad0EX06HwK5yYK3DM=;
	h=To:Subject:From:Date:From;
	b=dh1JXaZxgn+jcLzEfKv3pEAFJ+1KTppeRQv5J6BCDN//o88Y2z7cougLNVOmgNLEz
	 D9+pu+ea4OoGKfQ9Vof/2LAFWfw8urPjbe+PseomVw6mwPbJ7kN+KRhFEscnI4rLg/
	 FfcZOj4L3b+9fnkX3B7DzS+K78343PfWZdUEKjFTAeGyYYWDPJC2D9wF9YPq4VuuYB
	 DBvz8/C7gcfIQNJKLn74SW55NfIybibxgU9W71DsrwtS/NY/D3kGj/SYm7w++jV3Uk
	 Ts1W/uYDrqpjigo9FtcHymH2zgyotmCrF37THL0vVxFOWdPCsCK7lcVwXfvyOFfhXq
	 lizhowNicxy2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B083EE88D8B
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 10:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177529953370.31754.1386232670465625099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9f9d13295f997989bec7250318aead2eac3ef52954d675c0733f416adde9360
Date: Sat, 04 Apr 2026 10:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775299533
