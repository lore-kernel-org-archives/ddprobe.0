Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF2282F12AD
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 10:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765622573; cv=none; b=JLTaLRDxnBw3l8N+CIP5PSz6Kb4Ao1bBdNCIJ302D6RqBvQ4ini0/a5Hm7T4Yh5cvfLne5f51eBJZLdsBKwEILlMho0EcZNeHUFfUUJc7MsgwfmoQe9gX+26Drc54swZV8QC1Zo0NZb6R8THw6zCx0oq1IHwRL0sDzGaXQw7UG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765622573; c=relaxed/simple;
	bh=1Qc+jziLoAJbZzMu9T6zb1rn5yyXjsYSilIHob+1O7s=;
	h=To:Subject:From:Message-Id:Date; b=bCc09P3kjUnBU/TbK0/MiLOPjLJ70zc7rTZ5i7bBat08ZY4kvSl8A9We4Ckw+rz/Of0wf7lILlczAFFFrAehXX/wIZv2uxFgQz/EnpaLwk0PO8eYGpxRDqG/xijieQlGM4e5vm5zzJVtVf9hU2aOAPTTKhn6WBalW36MU9LBEaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mk9YhdCo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mk9YhdCo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1043C113D0
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 10:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765622573;
	bh=1Qc+jziLoAJbZzMu9T6zb1rn5yyXjsYSilIHob+1O7s=;
	h=To:Subject:From:Date:From;
	b=Mk9YhdCoFZoCQQ/Kp5NACJ0ekMTx9qMvU+0J07NIdObcDsrtSkAp8SpFuwPIcCncl
	 XvXGNued5GfdFYCt1ywACW/x10G7dABR9bq9sfglZIUgTH1EVqNZqgrd+SClA9qauz
	 t4/bRIc2B+ERR72OpSKl0jMV8ShnSZCH2XuRYqydUUimdQiEiWpJ2i7OCEHfgFGwg3
	 nGYnkc1NQ8DxsO0N7pCBwkh8kf5KtrwxmLWPY+0f84DpVQ7PrFK6eYGj3J278FNdKm
	 SFzo4h0EEc/Xfu28017LZKV/9jXsGncbFpgVOa613+1Ve7npQOWRJx9nwOGN17u2KT
	 ZkbONfgDdM0+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90318D5B149
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 10:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176562257358.4484.8424733315150819393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09e9a8410eaa2685f653f509554d486e4adfa3a2a705952757fd0b6ab285a1be
Date: Sat, 13 Dec 2025 10:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765622573
