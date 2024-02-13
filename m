Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EED83AD49
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 04:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707797297; cv=none; b=O6p/ghCB2ijRr8em55Ga4ftSaJn8Pe2IxiDjBquUAXAQUNpzBl71hGb/rBZsKLKnTfZsOTnRUBav/KGTeGKqvPPd+l5LFfcgfI7EGy9y1AcRM1dKimt2kdZqTagtOFpCrvc49xAF24CGrk2Km/aLHMFnaVTGPnmpLBEh0koBOuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707797297; c=relaxed/simple;
	bh=+iFBq33eavffXD8gO96wqfKPEySZUhOb+2AEaxGJpj0=;
	h=To:Subject:From:Message-Id:Date; b=P1FzS8hHS/Jfou9hFBEoLRB6j9Sa55ExNELD7T4X+kDkYX16JDPiGwCEv7hQBPcT2i1UUwIQ8qc/VFilRknR7fyoz7mXsW9ppV2tlmEdEJt0w3y4HxTqLk39Lse3VKHPZPfb4xXGE/g1jIwUhJ04SXC8KZidePSg3Ntnc3BJgVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mHv4NUke; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mHv4NUke"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 813FEC433F1
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 04:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707797296;
	bh=+iFBq33eavffXD8gO96wqfKPEySZUhOb+2AEaxGJpj0=;
	h=To:Subject:From:Date:From;
	b=mHv4NUkeAG/32ONNFb/njRbvS4oWQ7hsofaJM/t8S0XJyNhHNlmpHNfHg/pYOvwBo
	 QVX6WKz6vzExjDCQRu+UqJyUVyP8qt6NGy26CQs6+DtgtB8B8ZWdjF/rbhOho1kPco
	 l7FiuWlTnMV756JbPexv94HzPxhnRfjQW9qeHfSwVRTeJcNgEE9V3mhzAw18nLv2HD
	 PwCWagp2iwfor70Sjrlc1uGlm2rCJxqaWGnl7A9Hplds6L1P9vYtRGl+z8xh0BnH3V
	 KpINHjQK/fnsM4Gs1L5QfLIaA9m/XlToF/TQg1X2jl98g4OUwD2QPBSP364brTR4SF
	 mGnjFQ61BwHBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62876C4829A
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 04:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170779729637.6088.6519559681069632307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 324d64fd84f0cf15b3093b0391951f1b0f4b6e33fc8f5881b87f4a8465e7a036
Date: Tue, 13 Feb 2024 04:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707797296
