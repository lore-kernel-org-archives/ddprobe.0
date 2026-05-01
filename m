Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2590B19DF55
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 08:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777622854; cv=none; b=ehgA0vMVZukYrp7JHUEcCCycw7kaEn5G8+EFIqbln5Ekgo9p9WA4cR1HMXbMRMWLowdJPT4liOoGA8gmOApi5VmMKbB6N8SKB7MUXTvbTUyxSA5Yiz+jIvbEVO6E2mh6+DmvTr0F1Ke5t4tiJFuDtxVb/uxKMG420wrcJuVVxxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777622854; c=relaxed/simple;
	bh=nFT4skGPyJ+6lWpnS4XP3oXMda2KXu1eGbRPd15Yq2M=;
	h=To:Subject:From:Message-Id:Date; b=HCETV/lri4OKTdr04v6ZrZBLy/nSoBvCF4n3gTHexl773uA5CxXgVdJOdqAHBUecvZYJpv4IhgoYD24tFoZwCQueqVStuD0xmkNJ7AN9UDu8yWbN9bhqJcyoZe2PCjx65quA1VET2dK6DdvGzUqPQCkHPj0ae/IyqWo25HYM65g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GmPw1tTz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GmPw1tTz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA341C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 08:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777622853;
	bh=nFT4skGPyJ+6lWpnS4XP3oXMda2KXu1eGbRPd15Yq2M=;
	h=To:Subject:From:Date:From;
	b=GmPw1tTzLTJG1WUiAP2i2+c/Hp2kq/fNbJIMZEZsgy39gfXSCQU0Xwdx9nPwLGD6t
	 ZD3JcwI2iqoDxelYAFyOWMn4jgvLbh89b5E/psCvFKR9g/Qo2yYNzLu9jVXkQF+uHs
	 KqXoK7j2EIZ+2S5WqqFmun8jzA91ldsf5PIim4/KEI0rKaMxkV5Rxm+b3hwhfi4c43
	 QrzQz5u0OqcyL73ir/175VF7WnZysSVwEmY00ZGrRIdGHrw0nmzp7YNjZ9+kP1bgxZ
	 iwTVxyRB+mPxwbB6QKKtgr6jTjqW9wB+oaZCRukkJBilgm+Rzqvh85oUmE/b4GlY0/
	 3Ua/KdLRZY+jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9296FF885A
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 08:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177762285368.13731.17775788400160541687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51eb064f86ab725cae890a7e85642e30a70017f5a037d84ba5b0bceda0772227
Date: Fri, 01 May 2026 08:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777622853
