Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F46F15CD7D
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 23:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715039543; cv=none; b=VzsMfK2EgV9czylLfMoCBCZNzwIQKtm9+IwuzZx1Ui2J4VvhAM6XbfvxYb/LcrVD0jmLpRMr5UBcoRlmh95owJJnL5NhB4cVxIR1fCC7fMCuoXMz+UakFtMGJPbjdu5Ac35doTOB++BvmZLrjFPcICKBKF2YTGQNcLKZ4ig+sg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715039543; c=relaxed/simple;
	bh=jBsb66KWZxTqIAuAbzz7xHmteK5Kpz1hV2NJDuZq++o=;
	h=To:Subject:From:Message-Id:Date; b=q4en2CHRYkFjBbgh12FRf2YNpiBa5kK36K/mDhGAdNBha64gfvOiZ7kg5U8LerJ18WgCb5sHWerpzBlRBOoWbtuPMSqTn1A+GT9npguxeVjPbU772h/PUB35WiZw3tpIYzrfr9C5r97/vag4v90TOpjofn3uX56pF38A+5bN/0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s5XK1k8s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s5XK1k8s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD56FC3277B
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 23:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715039542;
	bh=jBsb66KWZxTqIAuAbzz7xHmteK5Kpz1hV2NJDuZq++o=;
	h=To:Subject:From:Date:From;
	b=s5XK1k8s5jiU3yzwTsobjrfRSx0nLWntT38r26o7fZuo0JzVGo2x3V+BGGGBZ3fY3
	 13acSZe15ht0I3ZW1raTLQdS5be70lqE3fEr+lZFagQZUbAYXcj970Sl7u9nIyH/Iy
	 L4hp9lYKqSIS7TCj8G+XHT0NsvLBn5DGfWWOG9Lnnid0RzvvFdSTOoPqMuRWwTDfCn
	 Qc297R5aMdMu8f3c/nukM3g25plsBXPVzN9ZMXkf/IfRpeezMIBeB6UbfixhHiefcN
	 xvf+gj8FiUUsfh7LjR1GL+YOf51J2zeZtOQe9xyOsgMQPP8S2V66Uk5sw+zK0IIWMh
	 0BsG2E/bQyoBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBD8CC25B10
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 23:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171503954275.24344.8812513280088068712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85386bbd5494e6006742dd16cd10429b6af7d268d7362a4d9e304eed16776171
Date: Mon, 06 May 2024 23:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715039542
