Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72DDF3749F5
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 21:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782336454; cv=none; b=Doj20WgcBCxm34v9DbvPjlNLzlf3doCHljxbSyox09cbWXleafGGImqipyVrm+1pVlnbYUhTzZWMJ2i81Kt0RJgHaXYwnkqQ/OqXeAcm/YoG8TDKT8k2Ol88QUknAnq/KG9TzEOmkVIKwULTMPuubrAGbg+z/0atv6agKYXD0+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782336454; c=relaxed/simple;
	bh=RYQTwE19zpjI5Dnmv07nX8Fmlz4941V5gRgP0ZgLIbA=;
	h=To:Subject:From:Message-Id:Date; b=VD58ApwEe/6PMnCTE+wQf+Bj91hM+lII2BOG6oqus517khxU1yiYmEKu9MKBe20CLel9cJjGTAuNNKzkMbeZDA9+mbJIVqz0378k2luFG6MN6Dzt9Knd/y31t9jaueuvltu7LjwBNXR9OcYcsBg5xDGU1tQMAY/eLXaCvCXqqJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FYKkbwYK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FYKkbwYK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0DD23C19425
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 21:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782336454;
	bh=RYQTwE19zpjI5Dnmv07nX8Fmlz4941V5gRgP0ZgLIbA=;
	h=To:Subject:From:Date:From;
	b=FYKkbwYKjbO0/VX6v+Hk8vNPkXjHRjwpJ5my0DqfaxT27Dafdn3tROSm0uj4gKecV
	 evlszChdi5UsrcYOGUqT3ioUS10WDCXMQrTaDKJ9K/yES38omIE6xxL4Fyp++S1zQZ
	 PSVIRiERv/VidyFZS9Gtw+8pHhgjt1o3tCecXzhvuvGOwR5ouQ7sQ4M5QHGULhiss3
	 nQf+hqbtZ2bIjxZgolqzOF9Fr0DmUc/61o2xLA4aauwZbIGXeLLMkUY5r7YKZ7aFLI
	 I06KvmQL8Z4aKXah4BmsicDIZRmk9vSkwrqaDi8G7JRGLIiCNbASuefb2DgWUGRwz4
	 MaSRD4QHfTbJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C797ACDE000
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 21:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178233645371.22931.3333124080732650672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52e3000a01199bf36ea8028beb1339ddd933aeb02a160c70a2e8598bea8634a9
Date: Wed, 24 Jun 2026 21:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782336453
