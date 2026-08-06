Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E5522BEC5F
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785981034; cv=none; b=n06uKqYYEgscgS+on8xRZirykEIojqx1cRlEVlSkptWmY/rZ5/qrL/dws8KtUw42jKh9q1ae3rdaNoejuxZSl/0fpVg+Yr02xadppxYBzAP3DPk04D9Iqza0FGFv2vFwi258HQzGsREdOQnmd18izHvS8EIvWKnfUFoxTpfnuq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785981034; c=relaxed/simple;
	bh=tEQoN9uDdKKBWT4qeuFGwyWbcCkJ22AVr6yjR/hN/qE=;
	h=To:Subject:From:Message-Id:Date; b=s7ebjfc0PpLCq686JEr46gGMDVmMbAED0Xv4jzEhkySjd7b3mWGEqDHryZ52XGhSRhAmaoInJ6OwiYDTr0XZ2+4xIaQNNUSeGf0CEuzwXCksodJM/BAWYsEqWTr6gyDXQxIPxKEZbs9mpUhHiMFOPsoqLWic2lC9r7pGDIt6iSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CkXvlC3Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CkXvlC3Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0A26C19425
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785981034;
	bh=tEQoN9uDdKKBWT4qeuFGwyWbcCkJ22AVr6yjR/hN/qE=;
	h=To:Subject:From:Date:From;
	b=CkXvlC3YbbywNaXzwHSMaOwsny0c5sbl8LTF9NccD+msh52ayJMpeNL15L6Yvu3mp
	 rgDJMeYa8kH7Eewrm6ui1HBBW5jVSgif0+L3boJXXJqwQsCJkYhd1/WKhbZL4cWZLD
	 wTbJZbdUeirJ8K+hFth3AmUGMCZdfA5sTP4velrwr7DfJ+/JgxWWijqpJg3T7NJnDx
	 +XB3ttAA7rp6DX+PvfuhKkMqbSCNmkjDREleph9Lr+B1p1vA4AxpyuFjVhYxKwZ5LA
	 cH2XX9hTS6xkrHDn0PJ+ZgQwRV7KDfaR0iHUXqKxembKdeqZ8cb0yoGWGpmS7BF854
	 //5vPs/koTtUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0152C55174
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178598103369.23337.1709483945962087426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20efe01a1f2444e3ad5c9dcca25d1b0dc9572fb34226e8f5426fcc7db064e2ef
Date: Thu, 06 Aug 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785981033
