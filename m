Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 453EE524F
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733030754; cv=none; b=SwdwFG2aN1vkyeX19+GmD3ABIbru69E4IxQEwiATSIE7qy3DSu/Go3GbppTNawmlZHeIdXGan/bZSzYC57c7qtMWPgxNFhjFn1r6lF7/yDUse4YGsaQE9vcmgxrg7qyY9eCkpWDE+Wo9n2Z8Kj8Kr+AfJjwMaaO0V9io2qic64Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733030754; c=relaxed/simple;
	bh=rSrIfJu8VHfigbHDe09C5rND683YgGoKsc78KCReVjc=;
	h=To:Subject:From:Message-Id:Date; b=D25I+AR+npMTD+F50MUESpgbQJzkqJvQbdzLMDnW1achPvMJHzBbSpfjJP72EIaS/ltPODy0TPN2BSjeAvcEBJdtbsq4+vxxwnQkqKyjR3qyWbxuJZnc5O2BkRCXJ9lJYMC7/CZclXMxo0jw6iUwbKmrtFYFtYbMTATX862h3JY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qLoiNejI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qLoiNejI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF060C4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733030753;
	bh=rSrIfJu8VHfigbHDe09C5rND683YgGoKsc78KCReVjc=;
	h=To:Subject:From:Date:From;
	b=qLoiNejIiWLI4ULRDUG6bW6xeSOr0l+y+Oh73Jj/O4YGipgjgVtH0f8UfYW3kCtU2
	 bH7ASTGLFi2g21uBz9NipUrEtTwDKgKDPy/ZWVDAX6CR6+cFckE3JgvLekmh1wxTSG
	 wZOL5FL7PUaGHBORdJ4tsgdIDKmwnmU1jsCjgZ/5GUwFlW2u550Ed3c5W9LUluCPiQ
	 N1n2t4TvusV3Fwya/At8c12aQ9+6mPGJr3ZNs6KZKbazaymdWdZpACDeU9yzNpcXVs
	 1ewTe8TEDzrsJjagdC/k+P7DhQAQtbYA6zmqotGMr4sTnNiPcpS2rRbQ/Kprnmioow
	 WGy0mUlGEUwQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95498D735F0
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173303075358.8710.11234590115319277457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efbb39312ec44f96bc3797496947ba7210e118607ec1ca5f4cea45f74115b28e
Date: Sun, 01 Dec 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733030753
