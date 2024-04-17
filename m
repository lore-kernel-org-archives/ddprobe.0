Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CFCA52F6A
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 05:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713333563; cv=none; b=u+cIn9wjajngYLiKHMZp15QrJU4/9Vv7hsYP6QghHI5JtAWOSeoL/qOXbzpKFhcwQPMntG9BzvVbAw+aSdonS/CCzcCNiLvJ2NxRHoFAmSllHMggeSDriBLSGp8Tr6iQsd2NpehoJ0G419R5Q+QaAWLFvZKcnWZDpxWLp9jj/b4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713333563; c=relaxed/simple;
	bh=Q2n4/ycIyc5KZ8p5m8i1qgQGAUWWmi1mferB5Jo6/kU=;
	h=To:Subject:From:Message-Id:Date; b=hvIIyw/cFz5+13eKyDSvrXOll+VkXjQxrmm3977fvUkX7S2bT2bDhUcD7nXPvAwOH1x/CtAJxVByAzCDdEvnqXaJgscLxYmlXHEZ2ttOZwWWfFmqyPllWPfYufXQrUGJGnkzHKJZ1npfz6u8m+T3BdVBF1TVnsQSiwYelrpPeXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E8dQ4vyn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E8dQ4vyn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF73FC072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 05:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713333562;
	bh=Q2n4/ycIyc5KZ8p5m8i1qgQGAUWWmi1mferB5Jo6/kU=;
	h=To:Subject:From:Date:From;
	b=E8dQ4vyncFEkad9NJvOTVx6qMA1gsRu5tX2Gc6u4OP5J3sqYs+YK+/zs3ZeaOz+9g
	 bkFzJg1K9+4nZyjwfv84dUFeaqPvSA+pJTKJeRNg5XC2eqNvHrVOoazVHVTrqcBSt4
	 VyRXwQ8NbWLZTV5YxGck5wFrJTAHVEcGI6+pJUXHcIsW1xtarN0KFXZ2bRc3KdxB2+
	 9RMH25RC8vf+MBzTuH1psiXaJhHCwnhBWxy4/CqBQSeAqDT/tsvH0XOPdAzF0BS9tJ
	 bmY28ov0gI9MoznAv3FOUZLMIgL1vUKrgc8yzLc+95LlQZVvBTIt+Bx+XrhLx7rHt3
	 LqOLk3l3gZnFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD108C4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 05:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171333356276.23424.2785592263476765794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b2cef6af5b2d88b9059b4c38258ff509e60f9af534bb787e22359165d36a78d
Date: Wed, 17 Apr 2024 05:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713333562
