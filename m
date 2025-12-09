Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10555248896
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 13:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765288374; cv=none; b=Su0yHTaU65HgmqQwVZBlMnf615Dasviy4C5fQHrGfzWABXNeyt4GcGkzSoqu3NDpf+3xQA04v7gGvOHMoGHNV/2bU1YzNqDEMxigp/6hdyhxQczd3fqAODQg1NTP72MrgtFAIvKKOYsUe4XOCD3T0gayMoWsW672c9ztOPHqJeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765288374; c=relaxed/simple;
	bh=gMOqYEeavIK2Y1Iz99Nh2/s4eFY9CUB2nLwdomx8QwM=;
	h=To:Subject:From:Message-Id:Date; b=moQrxlXDJ/JQ4rvKAvLZpScIhqpgNIwzDbQHkAeXIZ6nTO6JapwflhYDd+U3BWBtazxrfb+mAQKuQm0anWdpZBQkh8frq6Ss59eNVxeMpNUnCnXT0pGobHZynPEEw+J6KIomG7PvL3zgz1ncgZuEoRSLF6L7tr/CaXffYI5pusU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rglkupcT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rglkupcT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4115C116B1
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 13:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765288373;
	bh=gMOqYEeavIK2Y1Iz99Nh2/s4eFY9CUB2nLwdomx8QwM=;
	h=To:Subject:From:Date:From;
	b=rglkupcTpSbbCHHslqSi2Tln8nDuK0p++A7wWHCMuwEHOLlXDwwtjqUjs651va/Ve
	 T/6EkHGMMcqnP6687PFfjqr6GS66FT04Sfw8uOTOjSSLSdq7+6hPCyUnqDmRTv07FD
	 tVHgs+nXSZttPBX7Jo0qK5ZNk1InKjHqQfM7tI91JLe1B8ObLGV7AiNOn7ifBO5BEk
	 FdaEKci38qNKsgdK6X8t93Fzrh/LPokagPquPUwg3zWmBbMIQ1itG74IUvvUELgdX5
	 pz4JYNOWxhaqmDd4rD4EXve5QVMr2Vp41dmhzvpULcsSMPJr3f3S4iOCGK+I/Bq/yX
	 4uTUhK+1GM45Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A17D3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 13:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176528837358.21096.5365728203794330363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8a80801f97896405c3e9a8d2a6ee8e1ce86351594d01bdc5733d03b7002a180
Date: Tue, 09 Dec 2025 13:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765288373
