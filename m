Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2089828B7F1
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753172394; cv=none; b=bhLlK/sd/EusPM6M8o4hTy2eYpfMJdPyS7npjxRWNOS7urqq8dbhWysuvLRnz+ATmOiLLQS/OSrgPObByurYPopM5LejJ4FIKbNe4LWvJxUKRXpgxVy3XBg/84bxdBKLOTYaWIMbzd5IQ36a0vvuMnkL48oJU5s3NmhZSnpJNp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753172394; c=relaxed/simple;
	bh=Qhnl+3jiXpFQjoR8cuEaiDgp0ZC2ODC05u+rqEtzMOI=;
	h=To:Subject:From:Message-Id:Date; b=IdjE00ZGZ74Hi+5Z4g7GIqdtBfFJsu3GVpDB+9LsmJNwsbgfu75OTM8xders/j7LbjkooYSW+gUrSdsyU6LKlFGpxqevR7sH8EXO7uDyk3qVpfZwE14AM9luIMc0Hhw9emS1oo6akyAbMxyNaM6wOKAz2nENC//e7QPHw0jCz6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OtKWRK2f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OtKWRK2f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F60DC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753172393;
	bh=Qhnl+3jiXpFQjoR8cuEaiDgp0ZC2ODC05u+rqEtzMOI=;
	h=To:Subject:From:Date:From;
	b=OtKWRK2f8zXiHYXvSLfLZxexGjThCFwJZUIPTOLLbComAtxfV0PG3bJmh3OxMHbZd
	 5aPBJ8ZQ2atfjUOG45TJImEH2Neonw2HnfNgKh+KL2qkTXUgP7rSjYM2c2+DV/Kc2X
	 gq2lP/TI3M7xRCzaMblCGfOVRl03P5kD3Wo8R4tRBe/U5NGcKUp4uJdFQrAhWJsiVP
	 5HJcao4C2BSECxJkgA4bpOJSzRFmKohEw9690Q5xWYkDaQTBkda5LEZdFGy7rVPPVp
	 fCOeKKBWy6IfT5upDIbdNK89wSK6RTOPcLDeFZM27LOvwinZf8BYCBAnyekkVSNGM5
	 55aY0IkGwPVpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90353C83F25
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175317239358.22457.17631175501395467813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a2bd7f114853977c4b83248afdbeecf1f37e2d161dc3dc0ed8db5c233c214a9
Date: Tue, 22 Jul 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753172393
