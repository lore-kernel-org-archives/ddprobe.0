Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7BB2441A0
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759342194; cv=none; b=phYB3ocR/DRyInaXvrTh9EAx0vQGt9FldUyKMZTZf6uXEV/0f8vMwP+Bskcv63ath2V1txl5Ew5B5wQFMIiQIuv3OxXswVKX4CpLE1PWnh+ATwNzVIkns1rfZLMcsDuqWxUCFVsSP1iZYkKyct9L2B7eorOTYVHtb6vzTE8D4I0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759342194; c=relaxed/simple;
	bh=rJYdtuAlPevfxtbEZ0lXUL822lMCDiwIBIIq2XgEjk8=;
	h=To:Subject:From:Message-Id:Date; b=nfOeruDbQXtOy1qy7MDpI04D9plB1Yo8fiYZ6sO9qcFut2IIzrWaSWb7bzmQWlbQE5/ISEnMjxeztXfzf1xLcwWWK2koG4qWtT4W5GtCzOfXCOAm+3Q129Oo1f6ccD2i69kZEFnVz9Zfzwvud0zTsIkfCNm2M8jka6xNMoAM5og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cXMgsBeK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cXMgsBeK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DE1C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759342193;
	bh=rJYdtuAlPevfxtbEZ0lXUL822lMCDiwIBIIq2XgEjk8=;
	h=To:Subject:From:Date:From;
	b=cXMgsBeKUa5eFDKkJNNJCecJPcHNLBP+ZO4+mv/zJb8jf2k5DVmeUH6lYxk1lDGxY
	 uAPvq+LAiL6QnA4kLR5nEYSDNBLabtsclSpiIZcqqpDgiQnaIKGaPs1l/lbi5lDJvy
	 xkwKfzD1I6UFvLQ/clJl7dW79CEjfr/rh8Ra4sHLlu4wGe0m25TZKBo2S2akGVXeHA
	 8hSNAjcbBw3iUYk+ts95P+YHcAOn5P8tKd7j05U9QIE7E6Y0Xg3iNRbGR+K5RXqFBL
	 TsksGdFDLAc117cb7RIZ+hbaB6JVmSjLwD6947hke4JLtikQs8gPu2k77gw0TNlZhG
	 dRtWCA3dU2j4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94528CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175934219358.28919.5407011903701830761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9211b4e99fd573fc32d2817b32b340a65dcfc47380c89480cd3579d09eb268b2
Date: Wed, 01 Oct 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759342193
