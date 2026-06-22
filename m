Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212FC30F7FB
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 02:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782095194; cv=none; b=s9pJjN5wQBimqnIkIu4Y1w7mCOHLoVfHGO5wnKrB6pMNhhxHDyqtnThkkELEKaeVWTB0Z5NrOOfGoGnFtROAGuSq8oSU0Ubt7/BluBQHVSBab64Wf0yGDRzMpZN8umbchKqOFyed7632TXIXeDdNFZ7+R9J7L4lJfyhdajXUeFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782095194; c=relaxed/simple;
	bh=SZOw+gTFFk7jxk24DQqmuGNrhpCVgJp1FlrujSsHxbs=;
	h=To:Subject:From:Message-Id:Date; b=iLiWE3YrSWK7uJW4nnIJ3b/Nmpalz1KnoinwuU1yuSfqMXVXGAEFCK1W8b01DNfggDwGSjMzf8B8VHqJ9QBC+rT8eHCU9Bz3XbyFvS0C7xKUd7CLG/RNFMcgtnSI8AvLuQzIdORobeNQXrsGNmyX+bdVaybube5MV8O2HwwueVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ioCRP7x8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ioCRP7x8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7170C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 02:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782095193;
	bh=SZOw+gTFFk7jxk24DQqmuGNrhpCVgJp1FlrujSsHxbs=;
	h=To:Subject:From:Date:From;
	b=ioCRP7x8Apjtan7bY9OLLVvZ3HSIVB+DoVIcpMXELDLJWoIRhAXegLDNxU/hpg09A
	 AVg+sYNCiT6q+olSznZzpFMCL3IFZbnemv0UInbxANQP1yCnb2cPVCCuj20byxlaJ2
	 VI37H073LpVqhr66/m2/rugxMvHn+JIsBpKQ/8gFOKHPG58sDvF5vRN+iwpbeslWBC
	 UmOIkmdOejWPuFh0EFzVBmqj4Ho2dHuMkQoPr+YJI0xYwoq/SH9dAh8iRkVkFSaViR
	 lkAcu4V+RJ3dAg5ptWpasLQJPNmmli/cVHPDrIECUcU5+wjrvgdJ74cNqowBwdkQ6T
	 jD+yDBviZlKQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC137CDB466
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 02:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178209519369.8291.2950845779115173673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16b25716c51d81be1942d6e808769e5cda7121e28717158db16828fe97155acb
Date: Mon, 22 Jun 2026 02:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782095193
