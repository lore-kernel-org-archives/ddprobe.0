Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D029393DD5
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756003794; cv=none; b=YVfxTViKom0j7PFWpvooC6xE15W+yVNFzGPP+YhRD520aXvx+MN1ShjWPOP07VX9+HZM4t4cQg0JJX+17esuSiliCpa8q5IAhqidazG9RSFRud4yAyToUHgWSOU6unz7SMXojE0NqJNS7zeZvcjhu0qPlxQ3JbojXUIh0uKSAng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756003794; c=relaxed/simple;
	bh=RE/eOGuHt8bTQ9qqWXb+MGg/808SWyn9BQgweYSgwKo=;
	h=To:Subject:From:Message-Id:Date; b=LU8TIwjmj2ma5wEeZqQ5TwbssV+blL1OKOi5ND4aG+F6vF7hkBYs6JsaP4lepsQKm3DUb0aPqStxABWmIWURjK4zUHEC+cw64pwo/AKpbu/WyVkvFLX13o8lUXq1IGfbhSC4Q79IhApy5YIGpjIYIkeTMOZT5F/N6HRjTwlp6TQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AakgVqJ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AakgVqJ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FD8C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756003793;
	bh=RE/eOGuHt8bTQ9qqWXb+MGg/808SWyn9BQgweYSgwKo=;
	h=To:Subject:From:Date:From;
	b=AakgVqJ7rYS8WZ1d98E7gDaydFCqsVO54PBqmM/WFuGvf8dqWFdQBhXAANNOP0lYA
	 3dFY4GkFjLZ63eh0V9QtCK5kEVecA3PIVcpbMzdSzdi7FcBGkKn+cyAoNVG4yvzipU
	 qJ1majUcGgYGorbbjc98+hUuY+bk8Hs5ih0EcMrCUm+bhhQPoah7EH8SzWU5cMDBzW
	 QZg8mJAy98S7ZCc9fu1S+EU5Ge4XL2i1dH1YCgBG8p0IsEiTSNsX6yB2m7x21uYjVq
	 Z0iUKOpW6yTXghQZtau9XGFNBFVGyTDS5/gc0/alL+wuR/bSl3fxyyJNlPCYoKqXAi
	 c0z0JGGX7BrwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A69CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175600379357.19179.7784120708079116398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53cf2510eb3935daa002d3ad1fb58992e3efe564645b6b1b600dc062661bfc34
Date: Sun, 24 Aug 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756003793
