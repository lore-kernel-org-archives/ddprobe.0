Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387BF205E0B
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738599354; cv=none; b=IEMy8UMmHZvB8aaPjshQwzS6K1D/gmj4gVGYouezauKvOR0mF1rgOa8exKtGVyufKPvtMMhWsACbo7Kl6bYousVkktpsbs4wtSiW8gtj03joIbB+oVokZWS2azeLK08l8IehgWDU6POpKr20Z2Kmg3CsA82aK4pbSgrw/lR5I20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738599354; c=relaxed/simple;
	bh=cw/l4vMe+JuRxx71JaAgzHMmkTicGGhiYlQiycEi+W4=;
	h=To:Subject:From:Message-Id:Date; b=hqUp4uMl9jm37aIATtmwkz8aIYn8MYCD3nVMoepYSdHzdYhOyasn/E6uRR0Z7iAz+X7Jbj0Da9GFM2jivyrOVB0JqA+/mWIhP1K2dofrpQ0fqkeydAxg4B7wM0eHMaagRIbfOWxGdEOBNpZBHAWjzIwtXLuGpwee3WsM31Bg2BA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RVndoogI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RVndoogI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF145C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738599353;
	bh=cw/l4vMe+JuRxx71JaAgzHMmkTicGGhiYlQiycEi+W4=;
	h=To:Subject:From:Date:From;
	b=RVndoogIKAqCseJvjqDOTdQ66tK9TkjWL2R93fnFiUjXmSv+LMgL0oOI1hblHOeW5
	 x5PkWepejq3oEWo2EFuXwZpYJ0I0Xw0y1tuXOdduZyr8V7ZiAjRO7xW49XPhtSib91
	 HdIalp0Arudx4JiNPF+DbeUadQTlAWXy2HIny8pw/I4e6w1w5fjWlVTv3DV60Lb23D
	 fwtvvi24fD9boYyh3r1OZlljb+LoAgT6w4zd34YYH8nud3wkmntD8YDDCZocTO5V53
	 /zGCn1Y52a6paYVB5mcTkFNu0Fl3BUMIv3+GEjTKqYZGwSnB/iz4JYkSa792TyLsM3
	 0ej1jpf5RAaMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D6CC02195
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173859935360.32638.498754593772635011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5de4a26f08ce8077f4959d8f7ad8ae317e5820c704615ec7ec9990f1ec40927
Date: Mon, 03 Feb 2025 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738599353
