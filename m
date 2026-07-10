Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0913D6493
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 09:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783675714; cv=none; b=RfEDso9bx8eTU1kgekJtNAmSvTHLsV/WM4AY+k/YXcA5rjT9Qk1tezrsr+wUqfkhqs3lGcZMH3vGkF3LInXh/ZJMr6TxhVZ3GHcyLpSeT33TyF31/CMKcU3v0LH7dpIjR1POYlSmTyKSY8LpamyPsePC7O9A1/0d1lOdKFvLK24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783675714; c=relaxed/simple;
	bh=OdsVxIFLQjAIltJKJTDZtCbxBizvZCHB1mDDEqYpqKg=;
	h=To:Subject:From:Message-Id:Date; b=JjU8FylC/O4+vOWHfjtyqbh82l2iVlLjOu26ezpZEPWj0F5cMN3o2FzfBRAhnPBSZH1tGuAXVm1lSzHp+/msZ6/t2cvj6uIeoHA+WMN9T9ReLcRjreBbfBNwZ8j6Gu12WI0GrMdWFMbQxiCxvP9Mr3nl+fb9jk1Mais1H0t9FNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eqhHhpeU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eqhHhpeU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8D01C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 09:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783675713;
	bh=OdsVxIFLQjAIltJKJTDZtCbxBizvZCHB1mDDEqYpqKg=;
	h=To:Subject:From:Date:From;
	b=eqhHhpeU59yldgzNX1hzYmliAWwFB7ZKM8O6sNerMwE1Z5gBhOgO8aqkRaKM1RTsW
	 wOMPt2Y4YZP7MRiQ108v/b1OQDZtGD8xuPvWGjNZTKD1o/r+TPuTgNKYU9QpRlYwzr
	 rrB/uc5ucuRXRUbmA98pMRcA8w3ST64CG/jAdQwzmYe252a/cpHiQ3ZOQCLMvs7HMo
	 +EwbCIhr9tWah0JgnYQS6eV7g8P18b8ZF/8wpXcWi09/830YfF5VROZ7HUrEsOZ9/1
	 hW/0+B/SNQxNhBAtevFXbf7aWTMMO0qKOgLqejXKjNk3CX9E33hM3A+8Jw+XPmIY49
	 cA0nJbhzdi5IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89D8C44501
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 09:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178367571368.30768.15393547480210958942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f252144e2128203632c68c2598eb4c2ea3fcb7d395ea653fc06ca0ab75c93247
Date: Fri, 10 Jul 2026 09:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783675713
