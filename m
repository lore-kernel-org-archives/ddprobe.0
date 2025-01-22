Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6F420FAA9
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737536754; cv=none; b=IYRLIgT2UdCfDeSxQv6XSf5Hyl9Qzqllg6r14USzj0Ayml4F/RVF7BgqZwb7uMu1agCV43p4F7z+rJP1iQamRYBRbe9JPCM6Xc5DFGODFOhAHXrgKQTPHtEWz/7LVmxeStuDnB0Qa11gJley1rfXWB75KdCrVrmv265BtTjSxqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737536754; c=relaxed/simple;
	bh=3QyvDDGXJmijY9FHmQdbg78iwzMo3/01RBth/GHfy3c=;
	h=To:Subject:From:Message-Id:Date; b=kDCfEzzD71zcwCUQfhciG7MWyfkR+iNuatIvtfD+kckL7KLC8E4/78HP2o+8GQ7StroqStJbCPeEA9ACldSqb0oMpvMZUU+xUv+8YIsZ5hRfJ6cgMHAzUmnuhUqcQRLgfAxkEjUHLSc6LwX9tH0tO9FoZFK+sClP8DIoIMuSRUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O0IDgMoT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O0IDgMoT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F32C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737536753;
	bh=3QyvDDGXJmijY9FHmQdbg78iwzMo3/01RBth/GHfy3c=;
	h=To:Subject:From:Date:From;
	b=O0IDgMoTG2RBjXZ3MglnGm/HMVX0dwTVCuQr1cJHyj+hZ3zP9CeU2B7jRQIVgfjLK
	 LvBXklIwLM7mXRmTsgqHlBvw3W1PHlI5L5P/0G2CognC4qC2pcWF1ZVkhBSVEpvAEP
	 mUjATgbWJTKxQlJSjmk5y74WgYad388J3nJGg7VvIrAjjd3f3me5ZsmfAJpeOXafKS
	 4KOv9M3vgMl06SSOSlgEqoqAWaZSj2cfuFFPrMq1LK2K6HQ5pgP/pdkNBB43Dos2xF
	 kxh54kXw4tmHq3qd1IHhYHL8x2ld7e0BUW9A1LjEFpNXIT6TKiGYLNJJhrW0E3/UBN
	 3x5PwWzxLT/Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D58FC0218C
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173753675363.18896.10104541470691661204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24bdc77a9b4efd4df45e22eee8b326446d5015be8f44ba380027f5263158520b
Date: Wed, 22 Jan 2025 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737536753
