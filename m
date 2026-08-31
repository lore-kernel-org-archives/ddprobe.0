Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63E8B45561F
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788183634; cv=none; b=FZMFo5Rt8KYb3rsdY+ZI4DndsTbKJF5t6fOxmNLtZQl2foP3VmTXpfUWERbAfSKgr1EA4IywJhM5Y+mQRVCQJ9Apo+IsNr61pLbujCq1Z573m7J4CmG6E/i6IaXCRqI9UShIPui12PKnRaOYGMhO5NqTvBF2BGuI1Tw8dBjnc6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788183634; c=relaxed/simple;
	bh=5t/ecwBnHw6CO3qhWQ+orVKD4MGM2PdAvR8KUyYmibU=;
	h=To:Subject:From:Message-Id:Date; b=lsVzo1bpMf2ghdOK4+i78X9NuzFepneEvbtzpQCHon6kOPcXTQ7DrbpFeRdiiRGxnM4M14rtMXL9BN8t557UALfcYE/lWKk24pzrlhTv7Gf87XcjHnKJw4Lgojh9vpwop2XyWfGrlaO4euV9n3/Ug85UByIsfbNjW9VMKOoSq/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YIo+GNqO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YIo+GNqO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF2B4C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788183633;
	bh=5t/ecwBnHw6CO3qhWQ+orVKD4MGM2PdAvR8KUyYmibU=;
	h=To:Subject:From:Date:From;
	b=YIo+GNqORaHXbqkPjWPbWctp5/QpYRgStgcicL8w0W2lcckz7dgozuut01kM+q7PD
	 BWKNfWyjCioeVnuEDmYhCXFvkPoiPsFtraNMx8u5bPweK1DNqpWC7HeFw3Oss3eWPe
	 tUN2LCzjD17KzJO6jRrrE9l5qoFzwxE59JmVx/ARuLokdx360hR+HOEmovPVe+PfYj
	 cRi5Ari+SE/BorECFW+SHw1JgLILOlsfvzUiXQV2zprVpegi9TYtI1sL1b9xU89I9B
	 kjcQxGSpSi+N4udUp7VLuz+T2NDcpX0jYIMEqdsklwpJPIFwff514x33SPf+ajE13e
	 gItupAoytuD1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCF2C624C6
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178818363369.16819.10653638471251874119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79635c5e209e589c57325beb9ef94ab3d0d065db62a58aaafd3ac63cd8b2b8ab
Date: Mon, 31 Aug 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788183633
