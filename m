Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C6CAD4B
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751689794; cv=none; b=VB+B584eD3l2wiXis9uwgvasY4aFrWNLtvzEflpV8xCklgpdTAJzjlDvBV8H1STIRSPnT7ApFA2n/xUmLbLc9Edn039NKLZnZjwtQeMREwctZptEZbjwyNo/7OE7zldPq+iXoyxXQp2e4U6fFM0RmW296HdY2Hr9O4yauw/KA1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751689794; c=relaxed/simple;
	bh=1vytXSee9epxX41vwRzH4mz9uyoUq5H/+08iUMhMY7Y=;
	h=To:Subject:From:Message-Id:Date; b=NxvnV5Q44uUOqxCwFR03K2QxMywYW1iwlrda6xcF9jJwweHKZh1TjU6bGsfOsCTQothbyP8hLHEl9U5ET0sES0UNlKcMfw/aw3ww2sH5lJ2OwfDA4fOQRVtr4+y6hwRd54GvCga0UiwtnobMMrXqFKd+rI6rCNGfi3AsTmPBq7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kCdhJfYj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kCdhJfYj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB31C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751689793;
	bh=1vytXSee9epxX41vwRzH4mz9uyoUq5H/+08iUMhMY7Y=;
	h=To:Subject:From:Date:From;
	b=kCdhJfYjibgcO1t+t0qTaRhcfbND2TxY9ovNgO9YuMnVOyw7wKD4t+D1TXYfX9HHO
	 0KBJ2+k5sbAfBKV1sPK7OXRKOKEK1Ac7AuXRG96EdyOrEv1J1ZBzHzDqc96SnNW7og
	 B4/p6tUeyandW8HjPuRRTgAmrkyAC9HE2WHlv9CBMBZVxA1Kr1xdF1BouZ4sE9K67e
	 FzvBXfOs+ysrIeski0C0Sja/9qB89f91aHyS7I2Bdkd50S13bhwntNpzwb/BQPxd7a
	 FETf9mmWrsIVohUvJIldoyct2hBBnryaVICOUx9W9OEnAja42V5SwY7wprr0/4SHGp
	 twqSSMT943ZJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC43C8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175168979360.25103.11575007194992682191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1c98956fba995b04cf7aa3c33dc6a510f00070cbfd49d11bd03d80e2021ea69
Date: Sat, 05 Jul 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751689793
