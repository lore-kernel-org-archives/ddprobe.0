Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 792912D8763
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 08:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770884694; cv=none; b=C5QODsf6FO+jmIWTHY1wB3VJ+rmJP8cL3PubwImOdRNDpamvhsv4IXGFPfhw3InS/fxYfdF0Tudq99rzkGYOVQjXD1wZwqeDoprZSrO4B+UsCEJzpA3kIUdGrtTPwJmTfDbF5GffPOwKFI5YD4J2cVPSkmcwN6iDgDO4Wz/Uq2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770884694; c=relaxed/simple;
	bh=YmnswhJE4fIWqRpxP0VrYc3MnXNX5P/TArBOgwroX4Y=;
	h=To:Subject:From:Message-Id:Date; b=jNLJwlY3Ct0Y9sjaG55oMFl8VVCykDl6I9hj7WJZ2EwLEkGImwj/VMzfsDEFlBljY7kjKkRSM2+Ng6PuU6E8jsELd3DSdmreDogJzApWVxOYwu6aIiG4ATJBw0dbqp+8xRjWHGN1XJjXIjvuDZ9lwmPy/W938l/7INjrcgC3V+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rrpIirLS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rrpIirLS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBE2AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770884693;
	bh=YmnswhJE4fIWqRpxP0VrYc3MnXNX5P/TArBOgwroX4Y=;
	h=To:Subject:From:Date:From;
	b=rrpIirLSh6QWZmAQzXz5k84k6G6jWr7My2ofhDMMx0VrL0tamKRnyemAH7LDVdrrk
	 W1CeoLcn+dVdPA85/pHO+Qxiw5PvU4kcWYjRilPLN6DLzfaS+YOATaSnawNdi20fTl
	 AYW0KKTWTUAeat+0+jB+Eneur2HyaBh+CLXBee/0ufH1LlihG6j80tNzc0Zz89TnU7
	 uZXio3DQWdjC+CDIAEEcx/kbKnapmm6vY5l6fe+KVVKMOI3RAb7xPmNrECga2Jk/WP
	 CWHPyxyirnXjFtdCKz/xsSHNIRm3b0RW54d5xrqLHPs/vlX8emxNLJn+p5EpoF5Qtv
	 MiP/y7JZpuZ1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A06B5EDF057
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177088469364.4812.4064843283289895733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32a2131e556ba0a66d935d84e2d32c1add5fd1f517e4276dc06084f75cb7725e
Date: Thu, 12 Feb 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770884693
