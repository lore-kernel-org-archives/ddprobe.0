Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C310222425B
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768599833; cv=none; b=iAC4vqyyqUSyRUFv5P4F/MRrLVIz7DPb1qVjI5Rm0uxOopl6lAdVLy2a4F3thoXNsVtQzxo2WPQw10sABSt6cUjcO8YZl8gWFHJIsGsTQUhCdiX5cjWiOpPhPGBBuE5mTKhA6fWro0f4IJh+oA4lFrr+gzFnR5Fqm3lPcTVYM8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768599833; c=relaxed/simple;
	bh=rktkyUHvL7ObNeRW06Vp+Vg3PRl7Avd+7qxWlCNdDuA=;
	h=To:Subject:From:Message-Id:Date; b=q2bbb+VyniHGzrrsVPxEscv2QZVCcUPn9DTcgesM8B6se5nosDzpr5L4RK/0TG66HdqFvd9apT8xBZx4peIm0LPOxpSZYMhoM1o6FGKbXrK8oedMVHNhScftMNd12Ybf5pcezBzQCx5vGt5uJqqlfXst1bWPWZc3gDco1x52pCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hPeCjvmt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hPeCjvmt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E74CC116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768599833;
	bh=rktkyUHvL7ObNeRW06Vp+Vg3PRl7Avd+7qxWlCNdDuA=;
	h=To:Subject:From:Date:From;
	b=hPeCjvmtxp1ASea+tVV/s4p6A7rsmy8LuciMiOB7psKTbvCYNo6YYOJSZ2ckJf8OU
	 3wpEy3d/WNeCXooiCz+X26gJWB9DknTwb1SErtrstsEMGv46Kh9zaKh+Aqh4xKUc5X
	 AJbwDTgh0K3WDbQ6cGIx8TZRnyl6+oXWHzX7mR6bko/fhN69cinaO23giFrgzSirKN
	 WXiLqSaFrCW4xhputcLlvXoyfQD+RhlVTXMSSxgwC619yXKoPU+4bs/xi4HQOuj1eS
	 3FkudnqnqLi7ZhYpLmao0oXnQBRxTJrBwNNoM8XhX0XSz/nSs590V2OcdJRfJtyf/O
	 b/llAsRfsBSAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902FCC982C3
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176859983358.5578.326182917374360713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a19e0065f1564df78fa400f40fa6e9673436fcf29795768f588b1ccee6b8070
Date: Fri, 16 Jan 2026 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768599833
