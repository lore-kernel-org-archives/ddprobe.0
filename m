Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4720C281341
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 21:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765228974; cv=none; b=psdGCa/a7bEvJna7aZRcIadMZ07sA1Ak89Etht+NFVrxCOFoi8x/lNCpZAzN3Ut6rXMmxtZuoIKSC0AcuHObs6yQycnRR9SZBws0dnpiZdz6H6yb47j8PUrRIwhlFYUc7u2at/vGk/IO93mvGXWMTuFS/C2kud9OSjJAOiFf34Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765228974; c=relaxed/simple;
	bh=7dD1ma92U3Wv7m467Lkc66kiYeIE1FBz82iXnZluYfo=;
	h=To:Subject:From:Message-Id:Date; b=tCwqFY8qvVps0d8TnvGRXpBQeGQrUZ0ELGwNj/aKpDhRN6M7BGF2U8y3DOAjpYwh4ZIVAOiiCmx8H9ofV8z44F6D1vHtZBfLxrDnbAJduKg3vafci5jmhyZ6p7bSSZfHUrfoD96AOzk/WIeF3fsBf3wBCU2oO1P9Gmnwfvbgox8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SEayK2ql; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SEayK2ql"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B75BAC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 21:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765228973;
	bh=7dD1ma92U3Wv7m467Lkc66kiYeIE1FBz82iXnZluYfo=;
	h=To:Subject:From:Date:From;
	b=SEayK2qlHXl08C49GTeUUcr1RUcYrsmqJ2ZxOMBWj+AKPcx2QEuNQLwEouq6LaYIC
	 9aQEE3zeyqxBAOtUBmT8iRsW3UFNTGf4MRxbZKhf1taXKYNC8yb9FkNa7pxR0ihz9R
	 ZPcogxpOwOPFe77a6/DIBPH6NUks5vUjBI8npEB0HbStZ364nxwv12H2AA6xlcK5WJ
	 f8ubyb/BJGffWcvOPhGYeAJchYS1nXDPkOzbHSk2/RLT7G80vVHpY5/rpC3kXZwGD4
	 J7xXvy0exXNK9WakBbqKOL5CrxaeGfVXGwkUU6hyeRioM8zLrNn9Z3/0/8/cEejzsd
	 gGJgbLEyKUvSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1160D3B7EA
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 21:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176522897361.27259.12228640190165716462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62a1099fa8fafd552e903ff5bf7b4ced32711e03ab414b3745a163a77c443091
Date: Mon, 08 Dec 2025 21:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765228973
