Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361B62512DE
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 18:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779993154; cv=none; b=gOi2Ob4MUuyua9tjyhS369jBf+S86Ig2MXXsKEC7I3clN49osXvQGbO/5Sg0N3lmHx3OF44R50qNEXp8/f2TDMMKV+z0ADci4Q99mAvPQ8wExNAEb0xdvvhNScjTFSK/ZY5arTbnijR0ns7WrMn/iQinEqAVfZ8uWSMlXVf2c38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779993154; c=relaxed/simple;
	bh=MYNU/dYA8cmaVPlSuEtv4CS8dGo4kYWzPchECkTMOOA=;
	h=To:Subject:From:Message-Id:Date; b=GWW+PxuD0fvOLdDbD3Bi1qFVMDIu+LW4OAgPGlx1sxKXdyprLvChlKWibgPNA+Vfi9Ziu8LjjWbFLqjZWSRDWnEfTgrCAxDb5AA8Yara8rS2v/sGIP99ZPyIDi/KyDfyrk6RFL6tGP3Afay99qIU3ipWBZWAC/Z5g3VWdaxv1h0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xk7CT1s1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xk7CT1s1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6379C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 18:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779993153;
	bh=MYNU/dYA8cmaVPlSuEtv4CS8dGo4kYWzPchECkTMOOA=;
	h=To:Subject:From:Date:From;
	b=Xk7CT1s1jFoAtua31xktBBrnn/VnCWc7TqDo20Qu8j3DpwF0UYOLBAVXP6pZOVui3
	 pbq0lJdJdZkoie1kcCE6XHBtmyuYWBEyFaALGvjz1s10HpxbVjjXNXiC3rltYmnDjy
	 aNof6olKXAxasat5lo8aURmHvjvM/zCpzev9Mk2NB5ZjbSaFXM0Zdi+L5ib2zO7pbx
	 VBw5BMsRfsj7oOBRcpBozJ2/Orq2/18SMP5BTdJcoHaIkrPWKpgMOrdxRQwSilwog1
	 u1StylxY5smdO2mWhCr0AufrTSW4Ae8kbY5ywskiHnJSAqJhf3c+ctGzbqDGs2nLIQ
	 BJWXOwj7cRNYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE88CD4F54
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 18:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177999315368.12298.7231313650104454414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dbe4ae5cf750cf44ab762631058772cc14f35911859b6f15d532b6f22e7560e
Date: Thu, 28 May 2026 18:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779993153
