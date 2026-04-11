Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4641DB356
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 17:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775927254; cv=none; b=IeQTa6gUGB7cw0i3F8mlyUF/5IRg42SHHEvuoX9yJLqlh7KYaAsbMhoM4GpGeSZUCwrmtBuVh6ghZ7aW4SacqK5uGecZ3PeiF529cazITFvILsvw1UayIZxYtal4ojEbgGAC4NqJaH6E0WNh5Dz4EjxFKkxlVfU9L6qaQSDzFqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775927254; c=relaxed/simple;
	bh=f3QEZKESqcb6Sbo8HumMP2Qat8KHJzmVO/Rf2xW7h1Q=;
	h=To:Subject:From:Message-Id:Date; b=Vfj7uZkyXGZHUQ5ortezHV34W2FkDPJXeXy48BrlPN/l6Iv9s28iZG+NJw/Wv+uIp/BNRyZRA966ICQbUR85skGFvPZMYHvbpQOKIEr8R+fq9+GTr2cG2Lis6eCGhm1+eTxgIGuP06msngOhh/OEYDrJF0fKP1QvWsNuPzog0X4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mSr8OVeB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mSr8OVeB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3DB8C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 17:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775927253;
	bh=f3QEZKESqcb6Sbo8HumMP2Qat8KHJzmVO/Rf2xW7h1Q=;
	h=To:Subject:From:Date:From;
	b=mSr8OVeBpvJXaL4J/JPdeRLgP6EgEaAtAtXlWly2k3KW0b1jmeqlnvaVKlWNR17R6
	 q5HP9TFKop846n/HDZin4Ii3JRJErv98fr8l3WYv1GzzXuny8Q2cdna8fMtT7dV374
	 gWeARr8JfW9n+LhYfvmFItP72c9zWdj4J776qWh6PC4lfA498LWAcszpa/BB6Na4Cf
	 oIQKP7v3EGmNbx00X+DyTlOuDw5fNmxKee6fcSyK9TZ5ikNvWm4PfZvZLCBFOK79dE
	 OsaYQ8HYsS81JNkDdp0+v9YxEzHcU7QckHb/a2koobf1HmeNjQokT/5gFARLKFcWiz
	 RIos0brXpqPtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD7BF3ED58
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 17:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177592725368.20862.17407995275445246556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89ec6f0378efc3055e8d4a4ecf9e4e96cc6a62913922c3d7a593b624c480899b
Date: Sat, 11 Apr 2026 17:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775927253
