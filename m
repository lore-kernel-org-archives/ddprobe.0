Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2866E3246F3
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763069394; cv=none; b=cUjaplupjZhdSskhyqjuql/aGQF6TgsWmvUk+vR3EkZW6lquTWCQx1NRWrPnQOziWRkbJcC3ByV9q+0tLOW3zaXBj0g9tYNSqEMTGuvuypAC44Y1k7uJ+vn4AXLhxNFEJmA9QlT7pT59Z9xDPvmE4X3czwM47l8p2QCbGdyGxO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763069394; c=relaxed/simple;
	bh=+JuBadI8PN5lMrDs1hA0pWV+PKBItVRxgKNZ4hv+U/Y=;
	h=To:Subject:From:Message-Id:Date; b=LxDMWzfpIuiWAzu5lP/eMhqPb4QSpA2s+QTm5dFpLrvrqAs0dWHwXIj0AMPEZLf56xoi9cShrYkX9MEOnnrriF+sgR2JkyJXp/CFgjo0UexnE5fcGB9EMxRUX3ax0W1I3nxkIDcgIB995wMNO+zKpzCFd8SOU1bOdzjhINVFmRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QsdJWthD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QsdJWthD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB01DC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763069393;
	bh=+JuBadI8PN5lMrDs1hA0pWV+PKBItVRxgKNZ4hv+U/Y=;
	h=To:Subject:From:Date:From;
	b=QsdJWthDvjv+3Tv5vMHBSOJDQq8ApnQIR8ZOgDiu4+30h67Qr8J5K0BPTAKYIxC9m
	 GQPmykgtWbX8VEUZascDKkU1OlpadDV8AOLZohM/2k/K/Ome9Q211SIrFRAXDfffm0
	 nF8l+ZaEmsR1dp79MKJApozpcMEdvLG+1bK6SXvIjYehYcR9jzC+eorZ/wbGj2L819
	 uQ8cH/EEJi1Q3xwto9MFpj0aEY18ZMi30ZXDOmH/MvTKY/KP5QxUPL+pWGLUIx7l7y
	 MSWZglRzE2i4uUrQWYXckA/2rCnfPFEo3jee6emjKWZd8R9Fo3OF6P2fxf3OycCvXW
	 Hp187if/6Knqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E2B6CD98E3
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176306939361.13497.826627776388015320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8a7b9c7f87a45ce1f2b52a4d91a05da908f96c1b134c7b9bf6cd49aae15bd8f
Date: Thu, 13 Nov 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763069393
