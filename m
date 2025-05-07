Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7F1291871
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746661794; cv=none; b=uUH5CJPDqu6yexN7hd1RPHDM3lWG+K4D+kr4Zwyifj+ZxxqRHfgqf8jeNKWyrYXxBHIPub4KYljIzAEerxnJC0fzf73JSeJXuctoev7p2h9o7ccMWTznMi7VFiiRTTUTamddvAT4dJjQPtOBv8yk8tP1FMGF//BF3PoAOy0bjjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746661794; c=relaxed/simple;
	bh=QS/3oE3oscCVHtmpS5Us2Y2XtwEPpNOaXOhOBuwK64g=;
	h=To:Subject:From:Message-Id:Date; b=LZc7J5j6Cl+WZT+slQ+WISWGD2dmNZxZksrK5ILhlgZ37/a6EFdwh/xQno5jbeV0HSofgYXrzD7S/BfMySxjNzM+fEaadvj5V5TTf0lXdtnhho1ge8T1G8I269SCQCUWgfa6fzfNL/y06PHl6IEJyNzInrFMzFqAh1IxSqxLd6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BrMcECza; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BrMcECza"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02DAC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746661793;
	bh=QS/3oE3oscCVHtmpS5Us2Y2XtwEPpNOaXOhOBuwK64g=;
	h=To:Subject:From:Date:From;
	b=BrMcECzaqd2TfGZc7LKwi/pMOOcZB0ARzDEcJKbiF/4tWiAleii5yynLMywXHmiYf
	 uYc9kP597k7vpD3WucxmjxucpajK9wkLaJKOG3gK0SpGUT49/H+Dlb2fPCIkDbtgXw
	 zzpudQBAk+Ex+Uzx4CTPbcINlduxoS1DszFXVQhML8449ztVR87/CzZuEh0/WKSuoA
	 H9GcJG2zp55aKmThwqALg3vQqrlLL+AMBElY5dr0i0yTqJ62JAYynHISLsRCO3OMJa
	 xu1Sa/ZHCf5XP6a2ocJCH8gGA2ocQLwTsfrXqEskW5gRGpGb55u1WzYD0DtGcFKdOv
	 DCptGNdLY8Klw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E84CC3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174666179357.10223.307452355204169374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00b7ef77a2b354340e5b81271ab03bf9f3c4a2f1f5cb294db40c92c58900f87c
Date: Wed, 07 May 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746661793
