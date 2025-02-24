Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE2132C85
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 05:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740374334; cv=none; b=k+LU2wXDoAoj8YAAueDTDV42UMcxZ9ePlUphH6W6Hkx7jr22eyTebg2rM+V723LRMgzrFXbn/1UnkxGSYEKpfcDHdsdQfhqPX9EqjbQFdZN0yq1n8ipJNZlb1C6leLgDpNKU+6mU8D1iljBTNPHlVIrVyMCLeVa3VHJV9X9QMH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740374334; c=relaxed/simple;
	bh=Qw/EyBz12V2zUeR8OnYHYW18GSkvbW38vQFmnIm47cc=;
	h=To:Subject:From:Message-Id:Date; b=J70ZRK6nJgk2GcAZzBCJZK76SQ0kwm5cl44wLSDaCDdXqBj3ORG9CQNw0tCRCYQ2R4dleUuvuxoOX8n9Jd/l2MXx6G+SXDRnx9TFYHWyp7VE5YuumwDFhDyL6qH5hxWrgEBzCFLO9Vq2c/mMtQW5GnydACmvVE4ikb0WLWbupGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBGHT3fp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBGHT3fp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC52BC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 05:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740374333;
	bh=Qw/EyBz12V2zUeR8OnYHYW18GSkvbW38vQFmnIm47cc=;
	h=To:Subject:From:Date:From;
	b=GBGHT3fpYsdQ4K5jgiLxk4NDQmzlapLQPnXaFIXee24lTObgT7P3zTNKaoVC8n2Od
	 uO7n6Xqo2lBkjWD8J666fj8vA2MNqrLasppC9b8NT4sqVg8shlk+K8ygbpvm4GSuWO
	 wq6N9vNBNCrd8fS342k11eBEDyegmTP0KUMBiphwW40YDjm+NRaZZ/czf6j2rBbx8D
	 7ovGGe2STH6bMOir40njIJVQJJErfVRpWHegZmMAhx2NCTI98EMZ0xj0rKAjv2valn
	 S9cMmX1w5MQ0pDIDixU1gd9v0tNY/YrkSWl5RWgWH8MtVLPiLsQPlSV+T0sTbxwUsj
	 l1SOSSNkthQeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4B5C021B3
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 05:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174037433362.26344.2054298379086636596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 632506d89d10c30ce40d76bfe379c1254767dc49abfdca005260fbfbb63cd267
Date: Mon, 24 Feb 2025 05:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740374333
