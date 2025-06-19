Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27383239E8D
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750312794; cv=none; b=ZebU7uZ9cV2X3GSbHMkcPzHKmox2ysKjdhR5JwQs9EugncLZm91xWmKhk74s/SoiD3oFybLZYo8GKAEZjmpH5mN3ppZaMrnSwb7fSxDVUuGfvpz6BycoUcWOP+0N5lSYw7lNB6IaeEa9H89Gq2qAvTmK4tL3OjcOfznqUAsdMCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750312794; c=relaxed/simple;
	bh=gqPn5LLLjZ0cxNv2TkFiBnouszky1By4+/ndz3X2HdM=;
	h=To:Subject:From:Message-Id:Date; b=pW+OOitXqNNVhVyUJ3wJOPvQNxw0r+WdgBAPYM4hpEmRvtSOKYqixnyb9y0QQmo91zXzq+dV1VQ+vHVk9hNoxOgVliyHo6JEyoFdpdI96Fb5YBfuY+DjrTI6eJwCbk0YEDvG2U74+xjvJFEJO0zxygbjp29mRchG/aI7k/vILpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O6utgRdN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O6utgRdN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A99C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750312793;
	bh=gqPn5LLLjZ0cxNv2TkFiBnouszky1By4+/ndz3X2HdM=;
	h=To:Subject:From:Date:From;
	b=O6utgRdNpIggLKMqU9uIUWxgBvPdNAqpG8t7q53NB0UzECFb9SWcXUgzoMG4g/REV
	 4IF0th3ccbLieT04TgCgWS5w08IWQScRPE4x86cQuKNsykmEBmgRQwHAbzefzW8lQe
	 Y47sL2f2kQAT/mnPQyVRFxI8HlfBzvO0JwgDmy5nD/R/vv2TrTjE79y7SgFetorDQY
	 5wcbtAjylhFCU9DHgqWDILUsqHMUA5nOBaHCzC6bz2p5ywN/se4/lwRCrlT2q/1HVf
	 2ZNfDi/comSG9lrehS4kooiHYSb1bKFktvTuArW/L0GYyNQ1YrFg9vjae+B5ErUBAR
	 ZIUJCrlMzvrWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE02C71136
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175031279357.14629.10635893645370495775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b84722fe4b0efeb517c35fab3c9527d90a4a2150928afa5d100c89cc0f04bf63
Date: Thu, 19 Jun 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750312793
