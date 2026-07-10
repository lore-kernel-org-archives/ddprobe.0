Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2543743E4AB
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 16:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783702114; cv=none; b=R9nZcA2txorOs5lnG+/WAg8Ng2X1dvUD7487gATvmbDfbt6syOFNFm7Occ2AQjQthJx5A6YkJs0NP59UGWGNg9CPNIxUz3XwLWhVBXF7MEiFzDsiZfdo0iS2PpkJmdAv/6y6YK1fW0yjM0kj265GwBqCatY4ZBTfmUGjWhE98bM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783702114; c=relaxed/simple;
	bh=SyKMqeW5WSq/TujggMF6/xmeVCywzMYm70TXLpcGDKw=;
	h=To:Subject:From:Message-Id:Date; b=OKPfRt0bvW6Sm2FWJGzYqmGshNjuXvhoVS3PaI8qNCl3rr0TwftdKcWY0OTY0xMffxZhn8fPhPqCJnefk5q4tbBo3YZoILlDOVdKwt+wwpg040U75LeafI46aoImdyNW5miIBg+ZLvZS5UciltNXH4vBi3G63T98VmIZkIetHyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jfw1oyqj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jfw1oyqj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C62CFC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 16:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783702113;
	bh=SyKMqeW5WSq/TujggMF6/xmeVCywzMYm70TXLpcGDKw=;
	h=To:Subject:From:Date:From;
	b=Jfw1oyqjm7JdwdeF4dLAetZCkmuFLzhVPmgKTlMyteSy2gvnCFjDKxMVL6iiOlmmD
	 VM97KpM8I3tjk2UlCjJjyGC9j1W3HP9coEFneUglsYlZynvdHqcAvyB5QZveIFQXcT
	 3Y3ztLG0RAHPaIqIRou6s7sxxHaEHjjh5UcsK88sOG7sZIFaqmD7w7xj0fc9fmEVfI
	 OWvIvKCYq/Vn0w1Kov7NFXg06XE/NT+FBFydWhOd7vpzTSvJ0XQyzy/CSzDJcgmVGm
	 EdDjZJVP+dOIRxrNwyRbDtJjVAjVhfpaJTd3TLcJTq5841kyIAYPNWU/KBbvtHGFwm
	 T5h6mv6vrGHXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD9FC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 16:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178370211368.2624.7285590966613306865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81718221304f72e3f497a5f0ca0c3a788282c37705d6528c036464298f9e8414
Date: Fri, 10 Jul 2026 16:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783702113
