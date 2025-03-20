Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32EF17FBD6
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742480394; cv=none; b=bh+gzAZ73Y5VWm/ewrQf0KN663Pde8Nzrh47awiQNvdI+JfFrtc+pmhopqhPDtOc5wzOLpRxegParhyd0dFF+OJ2UmZn2fAuLOCrrk6LBziPl/T+Cq8KgtqhdI0dd/vgVewhBoVYPMdi9HA034vFJrVYGgIothHFaymVgQRz/T4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742480394; c=relaxed/simple;
	bh=phrX9YWzpDvbKAhuL2DLW2Z3su92s4NZVbbidXG9Wn0=;
	h=To:Subject:From:Message-Id:Date; b=Ur8dBIKQRaqwG3opcKe5748reEZ4I0utGalK8lnZi6BTF+Ma4s9sJ92uiOElMw7HxF7Hdf7RDDKQK9MmpTuh2Kks7iHQMM6h3PKpoujTI1/5D4ToPvrrPeyRicaGDLMPfDsGj3vafwJ0WD22ipNI1doysUHFNBoYf9XDW3ZNeVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kSPFjeMm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kSPFjeMm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6170C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742480393;
	bh=phrX9YWzpDvbKAhuL2DLW2Z3su92s4NZVbbidXG9Wn0=;
	h=To:Subject:From:Date:From;
	b=kSPFjeMmpaQFWaZpBgsM+g92gt2jkaXahMV7VoDBwAOL87pkVGCEI/mmYle8P5GQH
	 wK/U3AtjV01/ENZjwjGWiL9RR6BpacMUsZIwb++V0m3XggU5KAPdhffd3tgZH31t8O
	 +E8xZvIJXi0WA1GVnCpSSg4k/GA8Rq1Aok17t/ORcicJconrEGyEoW1f8dvqCPPGpJ
	 NuhW3gzHvMOxX4RHHNFAQHeN1SjS5Bup7MmqowtD1bLuLoYBQNquRnoKGhOhUGZSFF
	 q3NPXGtf69HgKMMF7leUu1pDAdzgsnqQtEpe9K9ivo4P2M3SiyHoCfWypae/k/IMUB
	 UvcfsCn2mTgow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EC5C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174248039360.28674.17672344505218674496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18d3d4a003481fd0cb5ebe2fe56897ab6f6acb0a49fcfec500896db04ae4ff60
Date: Thu, 20 Mar 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742480393
