Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B5F1310771
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 11:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765192374; cv=none; b=KX/8r5Yxbnm/YeezhiFRI1aNUEyQbbQajbE+6fcuALZLd6D3c1FUWE/mGdr+S/VxoXMpufY+3BJ4PtrB5Pkq3tUhO5O7DpqVkkiyi8WIoFzfzhI2JfVFnlPHVUq5l8EGm2QlpCUSATPP4nAf2xZ5FeadIjn52NngjHdviG9n5Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765192374; c=relaxed/simple;
	bh=osSQWqVIdpladkSUADFTOk53AyTY/dKsuZ34W4KY0EY=;
	h=To:Subject:From:Message-Id:Date; b=tbilj9h0RsD1x9rociE5YqVLPVMEWoKodL4WaOUXfROHuRu3kmvq3udQNwE8XyxkKCMRwVPQSwuQVz6YehLIWWPKNmfQGhQe7HfRXk/5mHPDiqRIoVFT1BvE+XMuWTyoO1GYq6GOJ2v8e1LUUw5oJ2qEEuxK8Hd3bP3mdMzYzbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5A5MV2e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5A5MV2e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB410C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 11:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765192373;
	bh=osSQWqVIdpladkSUADFTOk53AyTY/dKsuZ34W4KY0EY=;
	h=To:Subject:From:Date:From;
	b=T5A5MV2ei+rqSJ7UI0ByIs3hl9G4XH81r4Sa510pciZTxWMavJegCZ5hdqddQScjR
	 /taAaMtkltGeJQb3vIcGzirqpKaBSoCTsEktBDIJDF68k3SsOHtshCVIHPIse1e8r0
	 zrU0YZKShzD/lQFM8aR5tHvQLXNVSKS3xf5cXcDPeiNZeou2QdEs4R/b9g9WETVxLV
	 8VUrEDFzFDeJ/AA0kKa0BI1Ou+OZvISmSaDtIy94V7olkz4CNFcRKhLyY64nVep8wK
	 L07XeNTRLB/UG0q7qWQCq3Gt9OiA9g7qozfvAYZOirgT4HrhbP8gzvjJBZ52BGBFZj
	 PxvtAx5gKuu9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A366D3B7DE
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 11:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176519237362.4256.4514737688083110865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4dcac11f90a13962c8decc3b21a030d26c94562183df76387cfc1326605b28a
Date: Mon, 08 Dec 2025 11:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765192373
