Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00B622D77EE
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 09:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777108054; cv=none; b=fi5c8UKLqly5cXJ/pztXNpoESvk7PDUVgEAzUIXH6UV5yNhe9U14mBbMecr3yqCg3eM94maSnnHhoNlU6tVj5cLsXlBVkJAV3LUpN2J3NLDzopCjkP7S5nWue1IHf+WDOrwZ1vtnSZvFyq3saZ01YoP6eSIvb+6ftwl50MmJWOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777108054; c=relaxed/simple;
	bh=Zbu7zt34dFOXRXIBZSoZMIGaZJPmYSAD0STOyINy4XA=;
	h=To:Subject:From:Message-Id:Date; b=Ou65eb/oYvuLpLn21Eym8x0slpKUy9ZGJyPwRslm9iErXDzWgeMGQKKFJBacQ9GnxXyS9pEEgz6u2apCmNtBa0dFgv+mkKS7WwTYBHNoLq1vGBBVGV7G84VAmGn7PD0ASzlbtEdY6SO8iAb7aKScUWL6ZBLz2XEcwzpu0XFfdRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W16/CFVL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W16/CFVL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC319C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 09:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777108053;
	bh=Zbu7zt34dFOXRXIBZSoZMIGaZJPmYSAD0STOyINy4XA=;
	h=To:Subject:From:Date:From;
	b=W16/CFVL1MLkD68t/05YtUluJM01kj2JyTyali9EJvLkB9PaV89wGOHPgD+3W5dC6
	 bYSPzD/X/5qBmaKGwteR9WiYLmZCrOFBU0IRIwJSzQyt3gqPOAI7Oyqa1TloAYcP+M
	 XUwSQFVypAG9kmv6fcpYpWadhowhZakECVDZA6eWaHaYDcn33km+/nrJaXP4nEAW08
	 0XNvPraMD7oAaWeRb/WJBCGZIaDUZ/BFm296hRHmSrFpBnGDC8nZcuTOWHLn8cXBPC
	 R+yPn7PaifOulLHMZdJ1zduAlsz4tcc6qF3m35DO0i9K9NACIos54zXHHajVbhqDHF
	 q7pfHdSHfMTiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4B4FF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 09:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177710805368.1615.3937465864993174993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76d243d3b3917ee52bbb7ce6d31c3b8c2d58997e92b51df2c430fd5b938b65d8
Date: Sat, 25 Apr 2026 09:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777108053
