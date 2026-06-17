Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6571B330B30
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 17:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781716594; cv=none; b=Kw8WqsuvsFFUwlIWn/QmtHUUsmED7fNbSz7NNefBtrbjgnUwEqhDBSnlfMOzqH5TMp0PFFHiEaTJ0eKBaEPC7p+LvM3AIyTAhTVADcFqTqPc8oODcBjPvMeZK3RcDcULXx8TF+CcPo2eDRbsvn4Cqa8oW1MqoS1jmDcU96fZNRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781716594; c=relaxed/simple;
	bh=/Ap8czVCTdQW9D1jWcxAie+1FOAMd1EU2y/QUFvxXiQ=;
	h=To:Subject:From:Message-Id:Date; b=XxDExibBlD+RwtoNLdeOBgmP16I9VQrCXmM71uiFf0vZ/d8Ajh5WekyLfJtIVS/QLrQFvGJbrOdKtslClkVKaJFbiDg/ZL/d1jt3fatda1sSbTdAUXeSZgx5azRvYv4ndZVAu/3pybl5IZzFNlhvrXs2TeeNrKbl2D188bVNg4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ogpu5k37; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ogpu5k37"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D348EC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 17:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781716593;
	bh=/Ap8czVCTdQW9D1jWcxAie+1FOAMd1EU2y/QUFvxXiQ=;
	h=To:Subject:From:Date:From;
	b=Ogpu5k37akrI4+oQ2cQtr6DetJCo+aSfwOopp6FBTAe3r/kDmFBwf5c/nXOI6Jjb3
	 AuvFMLisRfQNe4jsF1TWUS1YzGAS3/kHNl+fU4/UUclFSzSR8VUVJCrpyuwT+4Ea7+
	 nuYBtBvj7nQFlCAFVbkwR4bPTCJPFF3UHjmS10GoDpAA747UKh09+YAgfF6gFuQU+3
	 hDnxlmSIrmiaZrjjWzsIosWNpzOUtY0ua/eptJgSDujPqX9fOd9J/ywBk/B+Qj+0nI
	 bVAOaMzm+LQnJjJzdQpeAsrqLVdpBfZ4s1tent6kvC+3FMIdvbwY3wwSWApbVxiP1g
	 NcqJ/Mu9N5pJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C7CCD98E2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 17:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178171659372.22757.14540214165641080304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e8c73b0550e49be4ebb4b39474b29e3927947859fdab74d6765bc4a75ef134c
Date: Wed, 17 Jun 2026 17:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781716593
