Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1BD3F326A
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790670634; cv=none; b=nrKHq/3Vq9LPoNoxwhpUDBo5aG0XZH0rMO848bky7deAYERLq59z9Lw5I9u6s2TohUDX13NdoTEhZFRuV/RLeGuwkUedye3BkzkfMHvQiBG8k8bi4OLRZ9s4McmsutAQBRSFPalcSuotIpTQh0nTCAOuMC3eMWy+LutBeU8fC4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790670634; c=relaxed/simple;
	bh=5RixHSquldHzR2pHlXb6fGnXb0DmAJo6WAJSRghnuWM=;
	h=To:Subject:From:Message-Id:Date; b=Nnev4TzmbK4RLIeMsVPBBs3tVu2F6CYXDCqyn49lG6rd16YzB/U8j/CFiXK/lxO0wUkbFbS/1nFd0VOpmNgw3neAvUpqbHjnTM6qx/UOyOwlkVT7EIOPzCtoc2ELe8pLMvZXvfZctq8CeZnKCaahuXm4th2wD8A5Im7FAvJGfhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LbUjDdhS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LbUjDdhS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66ECC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790670633;
	bh=5RixHSquldHzR2pHlXb6fGnXb0DmAJo6WAJSRghnuWM=;
	h=To:Subject:From:Date:From;
	b=LbUjDdhS6IOLs+5tQXPjY++KmkQ25afz7w4581xG2iWo3+gg+ZHxNF3d/fI/iMG+k
	 p6XUi2DSdm52tX/2AnjTArDPBpM9qNyKYaTXHgM38rtpddRqKsO8uOqr6fXVjIcafd
	 c5iNPU+a+vHhIQhDdf2HnA5e8OWlUK5BRJhenI3Rwpi9eIjaV19K3X+AIaNdVVfJgE
	 O0t/i2285N8kA4KhuLSHb2Yx6edeHLethaWd+tGhwawIQJeQLpWz3zKmhi9tk8S9My
	 v1DPrY6T+L4WR07bFxVfoxt55s40WRWCzmse4zxnFbJJw5aqiFhz2e2qdoMRb2ibK1
	 cQGHEbWdbSgCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3046CA5FA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179067063372.5896.16893586439846012712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a7f3267f3f73f0e458ac202b6b9e148890f4ae7dc2de92ac963cf2e26d2576c
Date: Tue, 29 Sep 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790670633
