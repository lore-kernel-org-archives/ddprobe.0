Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A5992E718F
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 10:12:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779876757; cv=none; b=OksSyAsfYPaVAP60UJoOOW2qEvHy3TYUTCV++3v6bBNPfM4Y4vMN1YMStPSYE325cnN7GlvbyTUNpoew1c+lIjoZHQuO79ZmnZMTNIS+jAhoOonyLPOVW17hMt+GimYr65Sltv+VkuUTTFTgSvD7vBK/ANqOlNNXiy0W+lSXqeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779876757; c=relaxed/simple;
	bh=Q9sFZPqshMfopCd9MyX9G179dA33Z+dKIGrAfcsAbaE=;
	h=To:Subject:From:Message-Id:Date; b=KN9PlPi3chcApZRo24+tC/VT4zaafRdDoeu87MQI4+6ya9ZfyrDDEwgvmXYhOjWf4scJBm2SvcMagyqr0y++P/zen4ZrUWtu40pBBWsM4ecfE8HlZ9Kj+Y1PdKoKT+5AhXApYlzxji3RvuOi6EfvOwibt0VprNT2POpGKE1VDls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fu/0bZ/Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fu/0bZ/Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF50CC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 10:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779876753;
	bh=Q9sFZPqshMfopCd9MyX9G179dA33Z+dKIGrAfcsAbaE=;
	h=To:Subject:From:Date:From;
	b=fu/0bZ/YxEBHT++lhkQAnHM6MRX6/9jDJ2W1zEcx6mzXvYw55FyRpedLRzFQUZXmI
	 svV8lqxkFua07QOnn8Beuaj0GAPVeNb9sqk33YAxqgvpzGwuLTWlbVAD5ql5JTrcKC
	 qMCIg67/MPl6GKti0YszLxZr/sD47WxdOiyxogscJ6mHvKOCkObp/k32MOeAg7DXCO
	 WTso3pNvD44FmHlYtP2xVFZ5pANbk+MZ3Ao6xZBGQC+ybGJX7tKX+6KAPRk6Z9+HF+
	 l2O131MrmDK04gfshKTjMMJ01RVjvMKAyxnEhFWaSfBkgGE3B1aUPkRGEfxnJfRDwC
	 GEqWJxMosYP4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A867DCD5BC9
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 10:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177987675368.24955.6425637009994424823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cda72084ec75cccb1b1aa67953b44f07b6c59d477545278b26b1c7422a61cc9
Date: Wed, 27 May 2026 10:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779876753
