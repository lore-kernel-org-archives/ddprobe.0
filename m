Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2640BF9D9
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770883494; cv=none; b=EDoheqcqjTy9wCif7EXMr5KScXv2couqvSILVjRNTkf8QdGXrwgBXIpr8n4lo8+baIx+UqmFWteFLxdnMBmlYAYFsm8M3oEkJx2ope1/eUhYDjL17sPiYmmInmegVJixi+cnJRdi3B3gvn7KIBsqd9mB+ccwbR0REy0f1aVGaHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770883494; c=relaxed/simple;
	bh=oChvWfT7crwjBcw/5C/V6vyO+TY7mKS/KJ5g3pyU0jU=;
	h=To:Subject:From:Message-Id:Date; b=iqdaNaPrk4y9cOl2/5fNS9aUfYjylk15cjLGj367ao9+1T4At62MiaNy46mh9vZmMzVmuQGJHvyrSqjLlUbCdVQyoa1kMxHMHrgVc9qrLSClztaixmZxb9Mfpa1xdDkPG8Wpws2P4H+QZYYVzSeSF1bqcUZi/fLqljM6FuQpRLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vh9/4lJP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vh9/4lJP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7CF4C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770883493;
	bh=oChvWfT7crwjBcw/5C/V6vyO+TY7mKS/KJ5g3pyU0jU=;
	h=To:Subject:From:Date:From;
	b=Vh9/4lJPSY0BK0cT+wiS9avRpLx/4EZgn7KMCY0mEc1a33+VcBP9yXs3ZHu7Cn5/R
	 xbFKTE5TqTg8pnfkN7bpCm6fSPrWuzW/SPggngquaVBMsaDc65NVpHWKAf1OgKX/Ek
	 BgCH+H4NOH5Bue3Mt8lwpyaB4wNWpqbaWLZ4+Eu9761Bq11dbJNQmwn5pkG2CfEP9f
	 0oRr4ExDLfSCGRc9gWnfgOhAxXsJrP4/RySfLY/JsH/NOKB5928kNr32kK4WM+8AYN
	 5/9GNiUd40L+AHwZ3p/brRTjaWM3EJtqjkUHMjoLuY/twpfE+Dv2T0jhYvB6rGG7EA
	 6Ct4wX79Xetow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F3D0EDF052
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177088349363.19451.12019270669469340208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3861384b83267694aac7c7748861aa13b950359425fd5ec62c387998a2a9f47f
Date: Thu, 12 Feb 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770883493
