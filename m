Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177AB3E9F95
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 20:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783543714; cv=none; b=qPNDclpF3pc4fkoVFheTljdFKBuECIwjJ2kT6js4YGiba3ImTOMgsfje4haYHWDRYGT6wBYN6vqMHtM4G7sTJ1HnahBkhMjXRlw/HxcbhET/NR7kd+VSPM0DbCbo1ub2OnCLts+6xxC/XboYnHaoxn6IRzF/aeLeN+1kg5juDZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783543714; c=relaxed/simple;
	bh=Ffd3dqU5VM9R72SnrphRZLghTshOPEFu0VRo+Opsy7s=;
	h=To:Subject:From:Message-Id:Date; b=V6bhDsEk++vk2afhBGdAr4ZjZrwletJFNdYU2jVuVfhJ7/iboViaIAM5UbYwmy8pITwtK21vXqQ0B1+2ulD8Z/+9LvB5HBi0sav9v6SG2hKf77f9muK8CFEXV6WMzy7zwIcZnPNjBbRMqrxC9wNCFxwammZuCIPpol/Yasq/Bhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rnh20vIi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rnh20vIi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD9CC2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 20:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783543713;
	bh=Ffd3dqU5VM9R72SnrphRZLghTshOPEFu0VRo+Opsy7s=;
	h=To:Subject:From:Date:From;
	b=Rnh20vIiaQyUSf3gdhETpaxq9mw6SB0tpLBwvoyvPlGCUsKw5wMBWUWSgQBOc177l
	 R0lggpr9/kHq7v0CEQEknn4lz1SK/Ru8X9DQYK5AsDpbOW2zMN3isZIjP9JZDgQCWp
	 ppzgfW8NHFgfC7riIPHLF+oByqSqK2En6K864/O7106dLJMGzO98uQCZsW1M73l8uM
	 yASfhgcnqDy7kAIvAtSS4eQVJnepN/ajSw5sMhQQ4GKPmEHE9SIRS4UjMY7oHFYb9+
	 D6PeA2NP3Hbk7qMvblClcnkqEQm+TYHodpWUXepozKS4MSHsA1DkdKtZmXpQj1kQqw
	 JCZ+sSMKtI5yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8257C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 20:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178354371368.1260.9565826244476482845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20b2e5e08f41ce6ffff2e950419be1b7792e0dbc97fa9ac4dd7149dd6110354c
Date: Wed, 08 Jul 2026 20:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783543713
