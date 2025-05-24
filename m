Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAAC5695
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748055594; cv=none; b=kCJi6rMPG1sxApXz0Y3h/YZ9DQeYnCZ9HUmUGcXMxIiE65eziyK+DrJxX4cRK84oZ0kTzq8kJS9X+gNn1XcRDdqAOAKtAXnIIWFjKNtMAdsP5zkN0RCoC3X0a72uo96nIAtSQF1qT1AWGUT2OAMqnV6hp/jXPDDnwa/sy1q7h/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748055594; c=relaxed/simple;
	bh=6vRpN9p+My+BWAqUgasTfEWavuZr+flkafDiloIa+d0=;
	h=To:Subject:From:Message-Id:Date; b=SA1hZDbwOdP9c4KtDms57tQyMMntJ9uJwSuPNLei9Acg/h0SWIf5xIoCmE39R6Ml+uVO1a3ZavdUVmmqGfh9G0Ssl/ZA2TSVtqlCQyLuj0N6bWjKf7UUgyRwjIlxshsz9ulqtHOibWXA1E3s4lFJN+SpfHIfChjYFRszi3EcMOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jc8bW7Lv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jc8bW7Lv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A1EC4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748055593;
	bh=6vRpN9p+My+BWAqUgasTfEWavuZr+flkafDiloIa+d0=;
	h=To:Subject:From:Date:From;
	b=Jc8bW7Lvh2Tf68SJtosAQQHwaXpUg4Quu4cOqAxNKJ2vuaYkHwm/NNlqgePOCcw4a
	 PjxhKqUm4w0HPcnZuDcTgk7WHLUppGZhuG/WH+3UnTMceJ93lnKphdPdo6y4njwk3y
	 2BU9jOCvIcoafcr3hJtUM631tstEY0SYl6lzztzgHaldFupcf3N4iM16DayclJEi8k
	 GpV7VH4ewICBFq4azjQKP03J84pxN+Smx+zNy7l6nPjQ8n/nGrl8rkyoyQYsX5OkSy
	 kUvzho70tUV1L8UCtumQ0k8rac6H9Bh6doBgweopu/8ifvuJ1AIKIMQiPv6R+zodFm
	 XwE0WpRoD76+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938FBC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174805559358.21703.6059159856375025411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6189e673414c7fda0508b29938967150bb9f24645560d975d5e22734330b2cce
Date: Sat, 24 May 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748055593
