Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB54382394
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 17:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780075954; cv=none; b=lOg5wW0E7/dNw0zuZYlqhLLg3TZZgbjnGS+nR/SZI8ZopfIfsvRz1ZhByy2YRKnOvaiYDyw1NMy1fgwc8VKy3nCysodYGHhSqPHxrfWjv069KSfwJx+q9hv1BJ46zD3IlinlTgy6MAWbXOPpyqdk2VsU5T9gFllQbyV8lY87AiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780075954; c=relaxed/simple;
	bh=B/LZNeTH4PhyoR86nsIMSkUiv7obBdemHfkuKBG8MZo=;
	h=To:Subject:From:Message-Id:Date; b=kpnPc/caTrDqbdR64rN9QPPO0SgZirT180rNXIuuiQseB2jPC5x+GfSwQ+4k7+2cUR2orzZeoPr0sRZKCpj11YjNxMNDIqN7rtZIYVIkgS1qm/7s4dKR67Y77LiaVNma2rR7a6zAWIPMcQJeexBAztbGZMwjx9xeiTFMvgZkZ14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DQLr6yXl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DQLr6yXl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDB9AC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 17:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780075953;
	bh=B/LZNeTH4PhyoR86nsIMSkUiv7obBdemHfkuKBG8MZo=;
	h=To:Subject:From:Date:From;
	b=DQLr6yXlavwmZjz5EH2GzXBNG1BUtTxuEk+6FEbjik1LMS7Xl+98m/YimkOQ13bWC
	 0m66BNc1eBl2p2eXvTb9ulA6bK11BsHYrXuQ6U1Kd70lW19EM2ySWoxWHfiQB9Qfwt
	 qP7Vizg4Adn0wT/y9Y9kv82IWnrP7ddsJZ6rK3yVt+273dEeoEEdWj2edlWa7UsrOa
	 gyBeTQda578jx/1aGi7iqTBdo7uffZRwlKIk47WJw6vkzwWYqqqtqt0ndV+z1eZSwl
	 ijZDXsU9dkrBtzezu0pa6QdCTLtwREeeLk70fE2PjcEmsda9bZq/v4ogRCbHeN3gu2
	 3zXgmkRI9EkTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE2FACD4F54
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 17:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178007595376.14856.4113688367743421869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0da9bf83d5265310d5a571c4d795d79b5d3bada7746589169c0947a7edd46ee
Date: Fri, 29 May 2026 17:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780075953
