Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549622288D7
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738752354; cv=none; b=qU4hmghFqUoenNmXecom9Q4ZSEehIoupP6Ato1Pku7l/UipBhO/7xoSxEEZQjnAV9apV5s0Hi6fmO42GVjdZ7LqlxUMONeT6fRiTTIPnkx0RTWooPetdfGZbRIbSF/yZ0k4qJ3wuBztsozyYHL+AsKCu27+BEnpEfMIuksoZu+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738752354; c=relaxed/simple;
	bh=2parlsG9A2C8sXgjVkIhFhQQ2a84Y4xRcuUDEjcpnlc=;
	h=To:Subject:From:Message-Id:Date; b=Jjxskoo3etXjXKnFPFoxlupBMi5wn44ND+GmR6igkQjjqY4wr7pTnUwrFTZJMWLKq16SGyfP86uUortwDji0z1HdU1Etii8W9jRdPbWh0qojfBKnKqcTfAc3JpwP1tsEIL7cQib9b+tA7Ntg7RxAC8ZpNY71475kbkIBZthYRQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aEpZHD+e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aEpZHD+e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC0EAC4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738752353;
	bh=2parlsG9A2C8sXgjVkIhFhQQ2a84Y4xRcuUDEjcpnlc=;
	h=To:Subject:From:Date:From;
	b=aEpZHD+eHfzBp05B1WHKj3No8xV6ctlZsB6grj8di6J0kpHPx5AChRdmq2ojtEW6N
	 Jm7Qx/WO69gflsiFW333l+dHvhv2pjRWHrzYU6hExmTBn872d7Fo9BrrMpqJH5VNKT
	 mpK8cCf3z0UGChOwSxlgCmJZL+UNhbSp2Dn4yotEP1x77p7VGEDf0J6sEHwzOSfYtA
	 tdxvPwV2oOkMUZFN89fLlIy89F+M84kYKphBYZgJzwAMv2rZnRFvxG5u/Y8FOWdlLj
	 +HRq4/0g3vfXgDkkWsottVb1oybTwRtbaH/k7Yo+5UBtx1USRXSgyz9Q519TDaUcch
	 m9nLwHULKl2WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F05EC02194
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173875235363.19944.15251660897020655953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acc2a16b941ed8819c803dc7fe3e968e665bcbf14f192368c8d1e4ee2e787fa1
Date: Wed, 05 Feb 2025 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738752353
