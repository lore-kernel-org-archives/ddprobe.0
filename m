Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F35922A1D4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 00:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780188274; cv=none; b=rxHjZZ/4LfdnG4TJ6irBx5atGFGlMgtTJEabqVHDhCIq/vnBEW2Gk4q9Q+cBpzGLIhLCBzSdkMH/jEeuuWWcdl5shiklbCPaoobyRKQ98oNE60IDrV5O7AwveilU8mZylmon9iAgoNQ6lJjDMTZWI812x1Y6khyZjEjBdIA8Ucs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780188274; c=relaxed/simple;
	bh=qNn45nBQtw4NDEsNgXhW2rm38Znqe/qt/BMJpaJvrX4=;
	h=To:Subject:From:Message-Id:Date; b=EZoSKR1IFMnP61G4K18to44exVcIiV97n6nfUtiFWDBOLO/46eP86EoD9h+atSl6Kl79X5NVXzEFXRPOzb+f5pge96O4zL5CTG2gQONojPBS/XDTuXaZGluI0lJEZkaXbWJHhDO7tK6PEpsbL4wNIfStUqO4LfH4r4hF0R0eo4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BMgKiWBS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BMgKiWBS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA0F1C19425
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 00:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780188273;
	bh=qNn45nBQtw4NDEsNgXhW2rm38Znqe/qt/BMJpaJvrX4=;
	h=To:Subject:From:Date:From;
	b=BMgKiWBSbsDmehs6saIjYhk0n1wQMfMdQeN1laFzeaEEKSPaiaD5nPO/9in1kexWG
	 qv/bHy2kO7x8IRr9hg5UByWhXBBOm51GAZ7ClqslqpE0WBk4oP1BIFfo9ENsLwwuT4
	 5xsxFVE/HBIaHia9NbIxeRO7O9vn78kUEimyTPst5BhMUUelA8dq3PNDuD6Yo09eRv
	 nv3Qhd45Zdm+ILewxpNoXODqISyNCB55wooUk6oObxoBuWBybK225eChlQ7hOQWi1O
	 oIyHDIrWrDrxHGH1PIsExtlW66/qAC+s4AqukrqAR3gD5pcMik2WjaEnBxcCq4esjK
	 pE5kYoDpdSArA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3526CD4F54
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 00:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178018827368.1069.6296370067432297160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5c8416954c57084d965687a9741c33978c08da23352370c6d5b55f12a1119bf
Date: Sun, 31 May 2026 00:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780188273
