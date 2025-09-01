Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3408327450
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756708194; cv=none; b=IvHTfQkkWVVa/eGoke6VBNg5dCDllO/a8J5Iiy3KkcMoNMx7ndKT5vaFgka5Ve6YH0Dp63MbkmGW3TcQ31BVZJbmaXUd5AnUtNsx6kitKh4v3vgPmNfcf2+szsYU+abgUSUqD94Y2Sy5B417L5icTDY6+J+sc+tQfezuBf/kN0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756708194; c=relaxed/simple;
	bh=nYxMcxQ7oxnNDABwIt84N5X6gQg+loSvAgh7AQpwL/k=;
	h=To:Subject:From:Message-Id:Date; b=XO471+J89PEltRH3Fu1dw9AvyVrAA06j8Yg2ZGM7iOisyi1dn/mm2tcKAegxYRBeCMdcL2t7twwpUYekCa0c/1da2wsXnXvuyqMAS6GwYv2W65JIR3n3NPAGAVehxSpoQjE3rre/yVg+/aYVPnkSRGpRDsTpxerJ9Eu7/kt77/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aFFEs20n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aFFEs20n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33E7C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756708193;
	bh=nYxMcxQ7oxnNDABwIt84N5X6gQg+loSvAgh7AQpwL/k=;
	h=To:Subject:From:Date:From;
	b=aFFEs20nzBXCwTdtEyaGdiE6pWzRaNA1qy7jbahMhCN29shr8FZAN6cY3OYCoKUis
	 vXvPHYIbywTSzVXsqN378zJm+iSbNjuAt3Ire0qg9/BoEMJG2m7ww8Zr7qWVWV+k+I
	 f4N3XU8Q0B0oc+psHfO2YpJWfz6yQJug3MlrRceRg6zO7oN/VoQgmIZ8vC6/wAeayH
	 Xgcs0iI0Ed4ldaUbEon49dAKvm51L+LGmcAXmGs0cq9KM8tNln9/jVGYWyw3q4vSNv
	 hH4maOh8YFmQoEExK+PI7jaCqHruHy+zYFkkxq97RN9MxU3UUMrAvj5SVX66RHE1XO
	 zFA3WdP5Wj2AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5F0CA0FFD
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175670819357.14638.1610092752943926746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9190cb66905a40bfd2b4340446ad7ac88f019037a225e9a16f9f1d6b000a18a
Date: Mon, 01 Sep 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756708193
