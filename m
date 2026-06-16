Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E89F3B995B
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 11:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781609794; cv=none; b=TrrhIVe9l5WQM+YffIHhPB64DOtwJ/EJYix/vSMGPshbWn1yMI30tr9aYrha96cG5oBd8jFPCg0N9WYMs8sGaOlY6r+OgRTAZmUgEiD6JkxmevQi7XAH4Z1lGV4NQyz4vpt2+z92gs9q9lM2+knsfO4v9EVUZpZzQ7xLVNi80Ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781609794; c=relaxed/simple;
	bh=MoBuVLInDKSj3fdwz55m+5epDaLyl9/tGqRv01tnZsU=;
	h=To:Subject:From:Message-Id:Date; b=qNt1ui+SxsLnUCbOSCfa4ujTq/nBxZvoRBB/S9gj0cBPe9nGlSbE9qm94lkz4g+V5nmryXdVmoO2IaMXXJN0sAZ8T3+BoMMHguIJQ5bjxWfCb6URhE+ht3y6LLWe1FVvIqGy4MuhgwJ11478601ZzzStyo+1YUKD6HRiMBiXOxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ME3WMQiX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ME3WMQiX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C735EC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 11:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781609793;
	bh=MoBuVLInDKSj3fdwz55m+5epDaLyl9/tGqRv01tnZsU=;
	h=To:Subject:From:Date:From;
	b=ME3WMQiXLpmxrMp2c4HWhYrMvXvhf+5RSeShi56SYNB+x9s1+8Jl4PLOlSN4++fUz
	 lSN1alBIxSoaAlJB8G/vVuXO8NO7j8CmSnj93riDo6j2PmYaVY7cYJsHXw9CVeyIgU
	 q1ledj0DE1JwPdJwx0X33Y/+fUr7usR3O1ZwIsAtPKhNeKPOjBDl487CeiXKdjoPvX
	 AJYJwyxRcJen8dGUDf6XfAdmeAJWunGsxAPCTpQB96ac8M4bbIOVi/lDdfFCWV+UKT
	 qHODEUZwOyZR8eOeXoAaWGDmQYd2O0PwtXfzGzwaXcIAenhhjb75NrB1/8/xk876H+
	 303H/EKGnIiXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA99ECD98E1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 11:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178160979368.6413.3982300077291861265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26d828d0829bdc5e29792b28df0267bffafcf238547e7616a8b0a0885890f734
Date: Tue, 16 Jun 2026 11:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781609793
