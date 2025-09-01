Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336AF231C91
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756712394; cv=none; b=l0We4Q9oAAHsqy0gLsIW+260xNAv4Hscvn9HoIFWk4qTZ9GylgznZBw+DNR8kOTl7uKA2uF367k7medK8D8YtKbV02xtZJrzFnrTRax4HA6lcDBGgwzQv7TEol/VoIJcP3VqrFIy9HjJ+LkzcEulxiozliYCgFrmjqC0IqdiXlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756712394; c=relaxed/simple;
	bh=HriS2/i5jjoyq1gDbn4USjUZIg+1mNk6E727wvJHJbM=;
	h=To:Subject:From:Message-Id:Date; b=roNysQ2mK8LsgjyRtO4pTUMrL2YdwfXwcIIKyqB7Gme+ZWWN4ZFUgXI1akyFI5tq2vaIoVgFXxzjeHhClYMF2lOHbrJELqp7dczrTCw716qLZSC2npcuqoV4fw01TZ3Zr0Rj74R8H2ZbyaTXC0bJfW6ql4rvXye7an6NpEC0myE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rzLdP0Sy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rzLdP0Sy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0984C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756712393;
	bh=HriS2/i5jjoyq1gDbn4USjUZIg+1mNk6E727wvJHJbM=;
	h=To:Subject:From:Date:From;
	b=rzLdP0Sy2T03UbtqhjOiRxD1q7/s2GjAmyf0jzbqcYYTC1qLB+WrUAQEqOpULRIoB
	 NQJarfLONLl7stA6eq73wjnj86PsTcAXlrqRRKuslFecDM52Epm9EOGOy0MiDbk6kH
	 JksWukVnSvqYV8ap9y18H7RiiHKBufH0NdIppmKzgrEvMh2V0W6NOQKM3xV8e6i4n3
	 R9b3B0fHfw/IPUMDq5YUSTR1hir/aN9xTLlBpk54eOy/TXz+m9Efiwzbs6zqjExcqK
	 lDnE4BMQdqs6K8AivMf9AWegfUi+wZMh9Cq1PKeVMcGG+GOe1EOxaaAx9RY13pIrYg
	 /YWeJzLqKaBMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B360CA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175671239362.11070.15921322054185288690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbe3c82acf571bd2432e3ee77acca5deabfe73016142985f90338357aad6820e
Date: Mon, 01 Sep 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756712393
