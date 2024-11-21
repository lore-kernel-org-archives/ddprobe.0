Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284834206E
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732175754; cv=none; b=eHsZBciMCfcy5gNjDUp8req0Oh4lFCdt46iNx5lA1fGeiYpFQz38ISIeuSIj8wEsQ0rweyF+fQoLsWJkZqboSDGu4lWIrx0SiQMpVUsLUwRekDl0XrDw+dLyO5cWg3Ag9bL9hT64M8Oj/FZiysDQDv7jgo4ylmFPAlXOOGNiUao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732175754; c=relaxed/simple;
	bh=D4HDFZ4vQBXFHpVOvjcA3nqTQMMDeFzqn32rJszMXbE=;
	h=To:Subject:From:Message-Id:Date; b=gzwpJeLEv224MlqFdb4bntr91Ofc8CBQORX+z1vXlZBSwo86BmZUU46zbRObozPRWKkFiIX9Ibgw5btKpz3FVgBCMyFNj8Mntya2XObk9bX6ASzchAPgIEw4PCXKkbu5zGVBDpVCi7n7bOD45MJxeagfN7Qe9TWzusFYqp3O1ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X6mCEt2r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X6mCEt2r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B077EC4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732175753;
	bh=D4HDFZ4vQBXFHpVOvjcA3nqTQMMDeFzqn32rJszMXbE=;
	h=To:Subject:From:Date:From;
	b=X6mCEt2rmZzuf5oDSR9VkwUJ7+VhHgnjqZIsmwwALmyy9qxmh3liwvatcwGLNXrQ9
	 2XGupIAT9uQbe9BKc7ZXURWHnuBbbFUx1oBfjboG7OtraX0u7pO5n0chnzjCtAtwCF
	 TLIRe+tWp6qKWPkOrQFoCYm1rsHmYIxZwIjWE4NLMGkax3Sa9qROKQN1zgaleiMijj
	 vYOfvdXw8Axq7GNubX1c9gl8vXSym3aX8c/sB9mTfPQ4FHuP+Qu9HurbicEzR3S6Ow
	 oJgAXa8vT0F+V7zPg7xOiZ0tTRmN/WCTJsXEgu1JlebNkgtk+/ZPNQfEEWJ+QojLjB
	 nkvLIAkglT6Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1CCD75BCD
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173217575362.5856.16462129120990316553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 484c6673f08e00db1dd291366b3d59fcae616816d4e6ccd7c8ca4bfeeb6e0575
Date: Thu, 21 Nov 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732175753
