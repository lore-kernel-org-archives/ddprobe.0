Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ACEE283C9D
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770169434; cv=none; b=KCx+0aw9gDD1iCdBpeOGTG9MQSjrfTWS7CEu+cKC2+sLfVSPv+jauxu5IkwSED6bxYpqOJCPuLlrxHjDEfI1Gdapat2ldhROC6t4oqswgaU10Cn6XYdEZmn8yjZLwi22Pe3TbxXgE9vxgOtyuZJTYVS4olmq9TIjlCMouFWzeQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770169434; c=relaxed/simple;
	bh=oFQtSsdQ1DF6wW0mR4ysrBCbZLI9tvGPXuYurAU63Aw=;
	h=To:Subject:From:Message-Id:Date; b=Al9qzEjuPbyf1BaMvwzGsm3XFeQCPDu1yTJxQJKGj7Btr+NNEZmoCiSZECQACe2EoMgKV8cjYITtjbaPW+Z9oH/2ha2o5YGwboHWZwmLX88hhhu0RZmvPRcjERYfvMlsLLd9gKEyEvQAjVGtNorKAURjF9CeFG+9FqQWDZySapQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZguJvyHS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZguJvyHS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD737C116D0
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770169433;
	bh=oFQtSsdQ1DF6wW0mR4ysrBCbZLI9tvGPXuYurAU63Aw=;
	h=To:Subject:From:Date:From;
	b=ZguJvyHS/T3pXlyxE+e0pocTfsD1DUu8gKZlKLqiUj6xFxQE2eFK17dcxfv7a+ly8
	 bKqc6kNJGuUznvOFd4uGjoyGcHW6kRKToPjO02MHppflPyKDNNzlT6BeFBXoU81buZ
	 sVThtTUsGOrpUTztd/6FdKrdm2dw9OHy+hgqSapFVjqp1d+G6+qqPwmmyr8lXVDa+V
	 1BggvqGWEej3tQLIvmH1P5hGKBpuozFqfq7Gdbxk+lxp2F1MnJ/ZeSxG+c1ONp2NRH
	 Gv5znmYHaad+ROYry6yn8zLmsfUXS2V/sYwBTr3tLjQFheBjiYXlSpk2KUp8+TQbxS
	 6+DF+jEEIH+Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BAFE8B386
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177016943368.32267.14978945191313910437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f528d4ec078f4dfc3521cbcd238dd060f12f49a2dd0b64f055edfca742cc9b43
Date: Wed, 04 Feb 2026 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770169433
