Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C665D8F0
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744551594; cv=none; b=CkD4g8dr1or+/PaEH4Ta2RyCEz+TeVQ0JI0rFrXjg8TXrwVZ6ZyVfbg7lW4jddj2YUbiUvz7appOZEZ5TPEKrBWzDO5hUBZyu3LBr4PHFuC8k24+UJamdcl+a1V56m1dW/xHfpn9+99sIPlMO4oFcmv+freOI7xm3VizyJzLMbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744551594; c=relaxed/simple;
	bh=MyFOCfYzlLYLjRKudm58IQwMt4Pn0CiiJhox3vAiDBs=;
	h=To:Subject:From:Message-Id:Date; b=GCPEJDcZtGD3wF/sijvhGTXlIS4DSUF7Bs81pprDmEy/D/VO2Kgl29RgJT1xuk85sbaK07+OpgW2nddhNJwMKCAkkqMCo4tzvIPeJB2rz4gSoacgJhKoB5pI1VFPOSX/kGvm55LoNospL3D3lIlbt5Itvg6B8GPRtnIbMOBRMR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nTspry/l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nTspry/l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3067C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744551593;
	bh=MyFOCfYzlLYLjRKudm58IQwMt4Pn0CiiJhox3vAiDBs=;
	h=To:Subject:From:Date:From;
	b=nTspry/lmbotqzwbHTpD7Ng+WSWC09+qbC9KjKnnrQrKVYrjpboDL+sqCstF2oa/k
	 llyUIOdEkdiy4TQFg7qGD+Z8XV086iKiqTfQe27izv95LGk9YlRJE2SCYaRdDIfd71
	 z8gscUkjAWD/bNU/MZoY/byJq08duGZ1pmFIQkZIZbMMuzBNXRH+zFAs0RYGjzhSyX
	 4yout1zaXhz0vN5vnga/dAeMBWACtGVU1nnWJkDVDtdE+5rHKePzfkn8csdcuUH+5j
	 eDvEqN5ABzepc0iV2xcLjCetGrNY3o7Gbuj2Qi6OxLtXtkHtp1HaYiAt9WwPWRfun7
	 o6uiUOVWnXG/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F2E2C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174455159364.2147.132245499570897274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a1354b76e25cc6696a6a68aed1dbfd18e823201d97f1c82912076f9ffceb3bf
Date: Sun, 13 Apr 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744551593
