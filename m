Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4954D2C3254
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748903994; cv=none; b=jm3Mc8wCniJvoPpJu0AoW9TukNYEn2bshNIylnkAkrziBfvwXekSEEs9xhUQ7ZW0y1mADk6pCfxHUF5M/R79G1TURYDojkK3823KFFOXEoG54T9msy6p0fToZ1IyCXBYe3WJtmXOt97wMxbgycbiRoI8mM3SFnIQCCr8gXPYfKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748903994; c=relaxed/simple;
	bh=72UkKWh3PRasN9lI98bGkJil03uy3qAILZySCS0yrTc=;
	h=To:Subject:From:Message-Id:Date; b=rF6x49Mi6PABNeUngWhOQq/teuhzut9ncYvAj8nk1L2NN/eyiBbzJggJ1QYv8UAvQbUKAXi6sb6Eh+ebu9xpsKzt8HMc1HQMc51ZPAIJ6fK6bVmGFFMEvylRHlmZ3zPVeiF/0WVm9q72M1SpmLKKOy81IkuRCNuvUiALCFfF1Xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N+ensmAS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N+ensmAS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33DBC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748903993;
	bh=72UkKWh3PRasN9lI98bGkJil03uy3qAILZySCS0yrTc=;
	h=To:Subject:From:Date:From;
	b=N+ensmASb32qT00c9e5RG48a4LOQAcFnbFfBv6jzZSKG0/fsASdEd6/pfIMtHvIKU
	 RfUt/gdo24+DprKqXxf1zoduQhlm/mqsuKbwwy2ok9NE5h/xcifgfUP/Ck6yUDA+j9
	 5W2prnxIepfkdCB5yfJ6HgGjoVbZJta4eBoxgStFkkWjjC999xR1BnYE5KUvu8+eJy
	 8UXjA30DR1nnngaGKdKFVsE9KgwPbJlRmTQ4eXjx4T+CEjPzMKBdNW4Nq2ptCYU4CA
	 6jJbT5vVVRmaT/ELBW4CpF8UAvr1yaaT9Kn2AWbZMGMsMrIj/AIeRT7JJqv89MkM7t
	 TB4/Mf3fljVyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9197AC5B549
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174890399358.12446.15556390670104804202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 385ff89df6140f41b4da1c3ecb926ab28fb3089f7daa0d75aed6731b8b16b69d
Date: Mon, 02 Jun 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748903993
