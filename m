Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8C3223714
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 15:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747842595; cv=none; b=CYzZFpAZMXLv6s8rcYJiE7Q58LNGDrKVnyZQMFXrKFRbgybF/pT/3T84ch+nwqkAHKKR3/mFGEDU+tsVtGRDyb9NuekO1zrovpHF95c902O44yDxl67WxoAxa5ziPYkxWFd4AleiIuaw0nw6eplNKfz6AWryi1Axnpn610ABRWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747842595; c=relaxed/simple;
	bh=2Evg965FwaDTLkZhz6Mc91ATzFIyzZcLolMWUQg1w8M=;
	h=To:Subject:From:Message-Id:Date; b=fhAVUmabL6+JImXZV6XQ7ILxFt6M6SgotVkO+pLUePsJY/K5P/Zt6muDARguXh15JndPi1TtwXKbgpUpBIRZTbsyciU7Wa482QcfquznKK5BZx1GAybhU+z1IJo2Szp/QOoHx4MbBgLV81YW+SS+qBrRsM9Y9M2SU7RS/n5lNgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N9ByVrZb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N9ByVrZb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8673C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747842594;
	bh=2Evg965FwaDTLkZhz6Mc91ATzFIyzZcLolMWUQg1w8M=;
	h=To:Subject:From:Date:From;
	b=N9ByVrZbOUxCMXIKYMsDp0wakg2/Xta274gXBKYimep/70FCbJ/tYToVxmvAI+kDp
	 et70NUacTQcXRRrwgXh2uIGNwKIejSkKCC2SdQX7pUjjT34rz/gFBwLdxajKtsAvrB
	 tYxB/LPR3E1Q29FgsU5IyI0d3K+eRMc9eGLYvtvgoD2cu2HUNqcRfTx5XQSM6DXlrG
	 FaIqBgty4ajeDRZuHqp6ulWXZWUIajzdFwKFfX4spAnpoOyj77VmVpJUqiWLvv7h2g
	 kB44myI0RrouaMPhjowYroFQ2jE5LQXUBZ/s/PVUVjYOF4sBemCxLX1iOi2RT+gdy4
	 wQAvhB5fUhQbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F25C2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174784259359.14647.9268817639704169058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa765da00f1e3e1968da65f27023a0e948e63d5741cb92455af9aff6fae7c645
Date: Wed, 21 May 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747842593
