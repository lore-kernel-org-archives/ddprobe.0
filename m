Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF42157A61
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 23:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713224963; cv=none; b=TmSYQxrY/odyAEG/BJQLv8etslnEPznghcxuhAO8+XeQofyCHgvJFUdS1TwZWFdVI/92zWAi6LFfnEwJJfl4mfee2nNd4UBAtv1shzNYxtVgDq/qMt6w7tST0HGnzrupIVNClW0jmtYSUsWX/NuF5j4yORfiDmKWib19QFWas+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713224963; c=relaxed/simple;
	bh=kVSTW02a/uTHcY3BnQqWNRM0uxV1vaJxURoElZOuFvs=;
	h=To:Subject:From:Message-Id:Date; b=O+yBrWYPANeW5wF7gxDPsMebG6Tf7U+GKDBrhfHUGMEPTdYR1SPwUQCiePZcw+Ksxo6XeKGRRM7tMPga05k/1r4LncGO5uJ+ksPiDjBPre4QUwCOVc+bNdlEKtaCVf+Sq5hBv+ML2AaR4nllHcBAFzTZ2mjLYMTZDnk/S/sR5+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B0uICuk5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B0uICuk5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC65BC113CC
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 23:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713224962;
	bh=kVSTW02a/uTHcY3BnQqWNRM0uxV1vaJxURoElZOuFvs=;
	h=To:Subject:From:Date:From;
	b=B0uICuk5HgAao1Z0JFsfXhGX9yxoeM1seKOV5Zd2z9SKAePdJzB42vHKmCPh2/Quc
	 axHSd0Acj+feXsBQTHSs3c/MtwKLFP7/mrF7j39PZUSrkp97y+FMXVaUFn2eZ3pUlm
	 lEUegdpyaRpYGnzJ/1msdKFtbzCfqYYSXIAFznPyXqq7ZPm6dPbkMXykic73NctVBa
	 aMjVNSBuIT1YbkN4/gkibd4VRWGu9SwBeN2lu+odcpAnzA5KJ/E9pkh62Omh8tuXhd
	 NQ3RPtsTBisH+5FUsrr3xEw0ZlFHTlQk6HQUvOqXTc2MkHbCY0dfBZcZB4uJylM1po
	 VhMYwYTUvpB0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB4ECC4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 23:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171322496276.27522.3336329619090078448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 764b7a24dda63201fd170a25bbb0927fd0643b7ecd49f89ea20008d42661cafa
Date: Mon, 15 Apr 2024 23:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713224962
