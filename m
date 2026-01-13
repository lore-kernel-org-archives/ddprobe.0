Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BCF2389DE9
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768298034; cv=none; b=GOsKhrK+fiCIHjJzbJIUtqW325+TSzmux1y9GiaEZgFO5940gqVx5/ju3SrLG3QRW0chiYoL1yRHj9dp5ANGld76wfJQGYKhtmNvXRTqavSq2z11DGOA2DwCoTAGR9nhzP/BlJiM2FB3fwiC8eSyivAw4+p6kGvUn+mN8c/yVag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768298034; c=relaxed/simple;
	bh=l4UER6YOs+BnOKHiCcliIMo/BVFroBVufgN5Eeoc0cY=;
	h=To:Subject:From:Message-Id:Date; b=DmYbqBcQ6Gapi+AWhuybW22euGEKdQnNAJodh5vJkliduxnp4zODGWotF2jDwdJDKMBFyTYfmUL/8Nl/iB80tKmOaiiNYF5lyhVE9Q+hPAzpGDcvU4PU+nfPWcGn4Xw0rhpAVOtd3OKBQ4ycyeXveeEUIlKcFe/WVPol9yHgRYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AYTJt7st; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AYTJt7st"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AB01C19422
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768298033;
	bh=l4UER6YOs+BnOKHiCcliIMo/BVFroBVufgN5Eeoc0cY=;
	h=To:Subject:From:Date:From;
	b=AYTJt7stB99joO1OKCKW+8kHxhjpeDqW/0QFWLqNRIkVC9nTgRkIPZYu2Lsj7RMV4
	 ISCxdssXIxHRsfL0pUfJJeCASsI4jCbemhS5g1sk5FqK84+2aEptnJLFRlwV9DdqPY
	 floDG4nRXlb8zu9aipaLdzFIDpYqLMPbMHgzBnoCRTdVc6NkBPg/kWg0NbjQhXn86v
	 3eqn823v1YtN525CWzrrdaa2KFgEh3g6LNGEvzpMILvFcIuO8VxnRWe/lh1A415mrc
	 A3IXZScpbuix5/K+6SaXk3PBjBZVv+s6FcJl2Qwcy87clJ/TcWCNK78JN/cTsUbGqu
	 10mG1qUmlKrZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8F1D29DEC
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176829803357.7463.6266581730467171153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 358a7eead7baf3e63ee375420f7adfd4b1513e7a93f009629e1128043573ed13
Date: Tue, 13 Jan 2026 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768298033
