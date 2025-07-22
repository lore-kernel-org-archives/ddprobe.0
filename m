Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB5A028DB5B
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753164593; cv=none; b=PY4mB+os8F8A5KGMdvVK+c6UmAMhCeRGtlYIMie+wEjGjmpT5+KCyuB+vmO0VAtKRjBavo9FdkQ1skilg3mMLlxrT74w2YjKiad/7oPeMat9ipfvl4s+TDJn867lnFi/h0nIIHa/4Sg6AfDKutxhNaNBSIfhVPhAUrHsoqJjT/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753164593; c=relaxed/simple;
	bh=exQ7HJc+IgqXqGmpkRYaZyVIJc2PwHqUGD1elhvp7xY=;
	h=To:Subject:From:Message-Id:Date; b=bBCesAjk2KJ3yperEGm3FHct4S2Zk2JBPv5G3rqw1HFaaUmvpJ+dewVjmpj0km2krQiKIpasSfgVupv0vU48e6yxMbJ6ueVAZq3hpdiSX55FsggdoSwdWKwHRmgECtz9YMS91V6NvL6t5iP9G4P1x7rTxNx1w+iU5/Psk/Zqgjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qFzIrrKc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qFzIrrKc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A3CDC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753164593;
	bh=exQ7HJc+IgqXqGmpkRYaZyVIJc2PwHqUGD1elhvp7xY=;
	h=To:Subject:From:Date:From;
	b=qFzIrrKcTLT7cGGp6YXuqQZkq6isGizuTkWlpDYy5jSxzR1rfXYWIcqmyvnYhanN9
	 /ZbVZiUGaAXdqrcPGNpLYwcOhus8R6YYpUCkWlNhZG/2ZdQcHXdXcBPeoPYhAAz1l2
	 b/YVzaiHseBBeund2gW5eBCJnpkPcuCs0oOkXNFAB60PRWBXGt9sZVBBgiYmX/i/ZW
	 dM3wm2wzDC6jriPKiec1D9uk3AN/d6Mn6hblvh9pz8iDKOgie1ro0Bf10NhW7mVfZq
	 TVwztvyjHWtiFr3Hf6VIFrZobDtvtwMdL3IJVHy0Btcq/4E5ki7oLP0irI6cZSV3by
	 Y2FyDN9/j5eXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91967C83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175316459358.25454.6995038963604276385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52fe6950e1374099dfc8c47a850a501e2d09ca651ed342f623a60657e8865fa0
Date: Tue, 22 Jul 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753164593
