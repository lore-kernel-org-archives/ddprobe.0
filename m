Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35AC821B905
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766668434; cv=none; b=VTvhn9kgwfZKl5GA3cv/eYnR1OJ/ijgs3WJ3eXGWIjL5qEQNgINjkoAisNMAAw35qjTDYxbyoIzTBsksox8qRMDd0IqPjXYfVMFCHkNHC5QFR4AAUDYwJTkpohaxD7u1fHXU1t9/3ya/Np3MuzvFQ/z6ISiErUH6E2WLSXXUkZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766668434; c=relaxed/simple;
	bh=dBrtIQ+52YDleukubHa2EAPPPCzM96SQfmUJ82Fg7VI=;
	h=To:Subject:From:Message-Id:Date; b=P3wOJABna/HErlVoUEPa9VNEwF2A3tPs/iLqH6kQ7OnWW4CyNj6vemNWxfDXZxQPo0cEvSotbwQO6R/VI63SCRVLaocqYqCRLAysgDrbQJi155JIeF4h5xvBinIuPjPb6zKb+yeXBmElzC784maB1tUtTBvJ1xmBTZrF5PUlJ74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KB9VfzMs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KB9VfzMs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B16ACC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766668433;
	bh=dBrtIQ+52YDleukubHa2EAPPPCzM96SQfmUJ82Fg7VI=;
	h=To:Subject:From:Date:From;
	b=KB9VfzMs4r1CIJ6KqFRKTbrFlBSwtrs/EkkBa9uxphLBQzD7CCpUl8p4jHilOAkxU
	 MrXXE0y7Ybb4JCvlOlPWTkGtrpWVmHp+SzSgHBAi9Mnjs+U8S0z/TTY1Bi7JLZ0vNz
	 qMU2mYzMMBN7S6j0B8UgPfOv6rlEHejorXqBD92aOX4sltrseY3koLq3j3tGsfNddA
	 JOH70QdeDWHyUV/dJgidR7SB0avvVgP9WnL9jIZcsVDeg1k/sn+OK5NldQN6cfVngA
	 drvNhRWiiXzI40kCUydk8rihgpIwDQnztoeTvfzhgOvgY3aQBFLikotlZ6BkFMuKOc
	 oN9MG/KVfOOaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D995E7AD42
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176666843361.27054.5092736118299815816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 315a3f6041ada1b8d2e73f2b5f8650cc4c9236492020ee404b7a79f259776213
Date: Thu, 25 Dec 2025 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766668433
