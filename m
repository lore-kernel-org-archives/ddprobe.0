Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CE432594
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 03:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717212263; cv=none; b=lMFnfUauWljTjtFoJHO2Jy1XMa7n+Sjcrno8S7KVdyOm2OsVtStKF5kTKkb2POXXBrLSXckF+4uTORjbbyKPAI3CDTq3jUCIo7ThkRg/DmlO6KlJSaP2qU8FqaoYic9kNX1K3XCu4xNQy+qVesnn8kuyiQILVxUg+zR1J9NZBkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717212263; c=relaxed/simple;
	bh=CKXO+lFLeWvULSe568wKn5YuiaPSqbPKo45eOw1oLWM=;
	h=To:Subject:From:Message-Id:Date; b=aDmehq/RAMHg4yQpMSPsP9rvq76UCth7qMfMIZwntsKexKQe9X5s67e/pWPDPGaTMgRdOTQBfkKES5hrWWCzfhyAv9PSBiPCiC+uarwCRTXqRlRVLCbDSCYC7YzOZIgcM4ZD4+PFtyDLlhR6gIABBg6eIJFsaa1+7QXMv+SmQk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rd59i46f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rd59i46f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1EC6C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 03:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717212262;
	bh=CKXO+lFLeWvULSe568wKn5YuiaPSqbPKo45eOw1oLWM=;
	h=To:Subject:From:Date:From;
	b=Rd59i46fegqdhbvuUsEQuty1JmswWEuE6aEO2wuSykEwucbPJyraqR3PN2YrkX8wC
	 ED2YZ2e3wEgbnojV94nRMqCZK2zUPsZH5bzllo19ql7IUNbRL/naen6v+OC+sbGTKO
	 S9hjkGV/gXPxrxyfc4e19Wp9QB2AdG263/PUw92nIFm2W4Uvvaqt7HZKoPW1pX/Tah
	 Yp6DTEO/ps6AG7ziL1wAy9kdzQrup1QqskG1niBN+25YDwABUnBI5d97QDbTJI9cEx
	 LOdxNEBuYaJL5IA6WuKXQNJZN1XzS1YR/NTaJ1csmSD2R+jV+/cqvoms8ICQtxDOnL
	 uuX35IKz0Mg/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB7DFC25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 03:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171721226279.1030.15766443629752408938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1f3a22b722766a48d1763bfe87b32c96c7a145cb2a3404641d4274946f957f0
Date: Sat, 01 Jun 2024 03:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717212262
