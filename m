Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3685D1FC7DA
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736338554; cv=none; b=TcGOweo6kUzinosAyJC5CPMsNEDpyybDcNXIDLw+82+rGVQGPSbEZKRyfT1pI1DJ6oax3GH0nWidXBKY5wylnrIJRZSttN9GwEe4NRR7N+kCvbHstE5WNXSJplX3RNl9PquYdUJjMrDajWsyCiY358zGK4v0y2OwbLWlex5zF0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736338554; c=relaxed/simple;
	bh=uxCtR783hoMSYedJ2afqo6qjn0ZD0to6lmiqvDirrNk=;
	h=To:Subject:From:Message-Id:Date; b=pnmTzEnVIhZUPJ5oLIxpdKo0QEJql6cRHZIENPJg7KWJ+Kr9d/j9Bk1qeXrfJtXDVrt8ozHgqr4xEIf4atARQomsdJkIdaIokzlACQa74JkZEMG1lGvfTEBPDdaAYi2pqSjLUM3Gfgb5cKv3qca35txjOB6UjeK87ASWrU3/Wc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eZQvb103; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eZQvb103"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B28BFC4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736338553;
	bh=uxCtR783hoMSYedJ2afqo6qjn0ZD0to6lmiqvDirrNk=;
	h=To:Subject:From:Date:From;
	b=eZQvb103gNpbvsXN4gj0XxjrxAFee6wBmpqRr1CU3sHmDcdSqRkbUum+XCjjCWDss
	 i6IUerqUIJfnNVGzbGLcMSF50QbcypBs7IXM9FqEhSMyj5gYL3bbm2D5sZCJX8Fa3D
	 FcXLqL0eesYFOifUbqr4PVAAsshf15HkHqTfvHMxzI/89htrHVMRjE/JZYrrM98rp6
	 RXCD54RlS2XPO17QmbcdiOpAqDYTb09x09Nngc4CQSrg1BxLvsPOKh23bm4QLoDQ5d
	 1zjs4RTW17Y5ZOr6uHCeU4w0O9R93vN9zlnFVYpHqGnAasBjoqbDCA6th8u6wkRMX6
	 GKP7r12Smrl8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD30E77199
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173633855362.32672.5304012390844197171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33bfdae22c50be191dc15f1e71b44d9b9cdb351ab6c794bd9baf068afc801eaf
Date: Wed, 08 Jan 2025 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736338553
