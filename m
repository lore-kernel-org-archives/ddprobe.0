Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E57CB665
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722008754; cv=none; b=Efv0mzOt67WPRENtoNlb2GiFGw/D0YNaOlLbzANTHakgexWweuvCYk0bkCBjQ9enc4eCU7TdmbnXrIPUW6JDm9Nffs8V1FV4MPCspMzekwJUZEN975lxVl6l9r30Yh5R935nzwrv/KSPpjafVX89rpMaOjInn3GurqHPmfe9UPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722008754; c=relaxed/simple;
	bh=eNjYO4IUfDyBKVeLPfMUMB7mkSoWytVv2UymYIvuh4s=;
	h=To:Subject:From:Message-Id:Date; b=ATHBfEkvKSR9H2y31zQm89CMQ1PanqKUUyncSXcmo1rAXrAwAWqg2RcbLmgpGlgH6XVSg4E1D8vphzROOkULmO9Yd0vccuWvhWxSdZKNMBCI67+dOGc3OQnX3z+8SEBy0aRXQpJkYkGXG1cuqYzHVu38xZUCYV8FlMYLkKFrAIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYYiRiRK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYYiRiRK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA788C32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722008753;
	bh=eNjYO4IUfDyBKVeLPfMUMB7mkSoWytVv2UymYIvuh4s=;
	h=To:Subject:From:Date:From;
	b=oYYiRiRKt7Lq1PUWvGhllZKWXMsHBIWwxNbL0sZOyLCsFG3So6E4K/EjwxruWJiR8
	 VajglGJwgPhR4a+ZQoKZdK6GyqiwOzIHTqw9pDYfrqYeuYHBFPuZI1HrIdMGkNt1nP
	 mIRazpfwoUAasyj2hZf89LKhTKtAI337a1vaEYrB8Nr+BDNP1hU/vAIelyS1+NxoZ1
	 YlSFSFOmSQi3sek6wHxOsyRglceLewOXKUicqio4gFlMaJoaqYF2UJTgTEgkQHkynd
	 mv1GwaquaCXaRRLe2qgOUHA8iBDByou5aDsi5E3q/t7K3Pc1nQW8jpxcv+V5TeNByz
	 L/ZGlZOM5UtFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98991C3DA49
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172200875361.13316.15253108979643183602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34d991502b0d3d565f2a7ff1a1f0a8fe3d47016c1c77f2b82ad76939977111f0
Date: Fri, 26 Jul 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722008753
