Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8FC28CF6F
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769550234; cv=none; b=Qb1SoujKFnfrkTFU4qfyiAO1mNJA13rSYBzFeYWYo0+/A36rQ4zKWZOo+gQbBGkG1FA2UBsSzYANMnmF6q3/IZXHr7mL4UFFHhGXPWaiLS+91f+1Z9xEVtNAfSRr6csrjg/uGbJojKoZGNCYePNFsF7w8scOaS3/DMjqZWpyrCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769550234; c=relaxed/simple;
	bh=EEvGtQtsCJzMwSraAMd6YKmQXoh7EvX0xQrKskArAIY=;
	h=To:Subject:From:Message-Id:Date; b=I7xnbmRXc9xhlXVMGkHT0sdFv8XFWCfwgpnGwkVEwkE8UNC1OtnRMijnkkDpdasPd1LNtSAO+PZ3ukpFkkoglgjJr8pTD2XISRc/VHIxvvRPYRDM4pwfRVGeCNq/bBb2HxVn2fpxHB8Zsm8lYlijOTt7bvdnrtVeNX1vkF0gTz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YlaBTbFz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YlaBTbFz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5146C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769550233;
	bh=EEvGtQtsCJzMwSraAMd6YKmQXoh7EvX0xQrKskArAIY=;
	h=To:Subject:From:Date:From;
	b=YlaBTbFz+Gq18mxO04IjBr01CXTRNIwa88ovPnMGZiQM5PhhGYKFeQQilW+VuSjlt
	 js8bQcjcWVyUihsT/SsaPc8xH9rm//yDMCrqmjdIVDKfUHqw6OtzE4ocsFFbJ9hOpv
	 W0rMIEJN8i4V9TDPaCaNslB2dm/Iittv/I5WZ+XoIxqwNoE1//0JzDgMwknoqm7OQi
	 vfYd+jCKg4Lx9BvT2pB7VF0IfCLHs+4TiP8gxwIE0r4TT0KKQXuoVivlMyiA9PeENg
	 q7poFjM7q69VNW5n4+8EgWseTid0Yh67glnX/xKMJKPBTTlWiMB16uhJfdsfVmgNbq
	 oa0fUbbJTwqIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924D8D2FEE7
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176955023358.12666.7844473939772654392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc5a75ff2db09989bca6075e5db28dc48a037548c591a84a3bb656bcf7a22e81
Date: Tue, 27 Jan 2026 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769550233
