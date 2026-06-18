Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421F2257854
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 04:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781757994; cv=none; b=iP5keVQphWP4uoxYjqq1mfQrcg2fOriBih6xvhoNgNhxVbDAA0wL/IvjhhfyePAg4qkAhb7diyN6ZNwv543fEp3T7BttVyAqPvr3WfNpWJwRyiWQe9FfWEA968vzon/613vbnD44dZFwtOiwsPQXb0vPIB+7uz0okxWNBlkZoVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781757994; c=relaxed/simple;
	bh=d1J36T05TJXKa6g1X5/zPa+GYkd1ANqxc+AHMmUwtrM=;
	h=To:Subject:From:Message-Id:Date; b=QaT1GgTDOLEX41v2ghCB5/zIEA4EW23HM9X9VDI0baWpz7zeEG0ZdQbS0VRKOBT3inP0recVwscZHoeVebGUoSkdX5w5bShxs1+W13mzDY1FNkpe/HynEEBgRtKS3QKRQY1XM4UQOtdGPi7ywT83Of5hxB3HeuZe02LXsBCe/CE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=esNEMCNK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="esNEMCNK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3BF7C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 04:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781757993;
	bh=d1J36T05TJXKa6g1X5/zPa+GYkd1ANqxc+AHMmUwtrM=;
	h=To:Subject:From:Date:From;
	b=esNEMCNKC9BPQ7NCQZ2iIcOpUgeIpOEFGhGbdeojulLllnT/MQWNrpHQjqSX/O+62
	 UlkJro6NQfXU4aJu0iy6bCTBZ1+WKfONOfO6EPoHBb+hv8bnXjfRrpzJMNJ08gBOfy
	 wPm5AZcTM8+cmK0TAMu7nrUuHOQpC42ynMP0eHE1QeQxw9GIajm/zw3sTvp1T/UHtE
	 hKVO33XNAua3ep6qvv30eaUVcuPAXjWawgLDGd6AAkaejsI9q+iyZeQ1B1CnQ+O/O7
	 CcVpTsyraB9z1NsrH8lXl8wQ1C8wAXC8l5Ztj75ZNhAnhTq0HxKaznzSwImFYGIRja
	 99C8qkGG7NyFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B725DCD98F8
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 04:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178175799373.416.8399230505320571029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa9bef08386f7a1718a8ff52edb5fc413c92a8b414c4428a2db75b973d4e1ac0
Date: Thu, 18 Jun 2026 04:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781757993
