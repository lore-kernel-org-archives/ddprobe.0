Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A8D2DCC09
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748781594; cv=none; b=Lw03G/dpGx/rAqEnB/ParerkX4C1To00sgjD9oSPgsm0DVh4T1WHGA4Hao4MVfvD8MU2I7bWFtBcRA2sidWJ9pQuMfbaDXn4JGDOoKU2LhGZLM1cyBd1TXp+JGfTGaODCZ8tMrnfLWBZXjdJwgcV0dHKug/CxWi8ZURXsU41xfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748781594; c=relaxed/simple;
	bh=4zaZstyA/9MvufEUUIxdbDx70HHiuMvnu2kbnex7voU=;
	h=To:Subject:From:Message-Id:Date; b=XqMMWbMQ85nOdweh+HG7AJQLNB02wHWQdHn3ydWJfpWCt9mhDjIUb2+J207Qy+LYqkIHtlo3G+qk1xeFZWP8RRhw1Bk7K0deAfwtsYOFtxpL5KRFPzHdKfb1KL730XqO+adNo93EkRAdAOOvR/JZY4jgasuqrBxxRqe0k76RBuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BufluRCV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BufluRCV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DF1C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748781593;
	bh=4zaZstyA/9MvufEUUIxdbDx70HHiuMvnu2kbnex7voU=;
	h=To:Subject:From:Date:From;
	b=BufluRCVJgY/0PBOSFUdvWkq27dEBFjyprEak42l0ZSm0xYgYd/MzZmT7rclx/OnB
	 4EpIzsF3ftkpLREeB1p7d7hhadoRAxXa7Yn1rc7NO8RwdhBzYVt7KuSGU2gOf7nruj
	 BnN17wxwAZ6/c3IFEZKoqi80QirrDfkUb8gN2PcUoTfDZrKIoba80NX2jatbSt5YlJ
	 AoiJp0SOr284b8sPA0Gn7nxfHYtZiQl2xfQr57+Gg9yiAKf0HhjN0FL8ljcJfoGOnW
	 jWs07Hdx7ktpXiWmV8gE3QFeiSCjg4ZMjoVW9IkU6rHDM8P23/YgO8SSdlpF/2Ep3Q
	 38ghNAi4gsOPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DB7C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174878159358.13021.11983652905502534433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebc5a6476534697593ef053bf037259af0687db363f5619bae7d0ecdf206f9d4
Date: Sun, 01 Jun 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748781593
