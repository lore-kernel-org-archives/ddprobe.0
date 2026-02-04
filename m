Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2670D1A5B9D
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770164634; cv=none; b=AXSutD+wTB7m74aWydwDLiNpw+bpnheKXYmXlpOhbr9vka0cbDff01LcX0FwGiL2jvdEZltxzXu59ngUsCUJG723vJ7sRWf8Hpq7A+rJTBk/ijaPzPBz51HwJwlccXTL+y2RdJ6cdd9Aash1ub+KPEQ+i/gErfa03ujNfWTw2hE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770164634; c=relaxed/simple;
	bh=TAV8J4yP/Z44vuhk/9vUzM6876UxZWLBMgvXjBkd1VY=;
	h=To:Subject:From:Message-Id:Date; b=s6y2/rUrozboYHhg4lYImvSLlks/+By32K0W2L6Lqsc7OGX6uCU1zxjNOtWJg5VZNUFtQkzPxQcKGzdWtY4BUkBpJzScxk50/1+pQlipPt3lyWEZSYwj8W6LUuuKLeUFvaQvZC/qFeiYSIfiDJg9FgL+Ww3seRp6BcIgaGVYpOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mfc5NcK9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mfc5NcK9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3C75C116D0
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770164633;
	bh=TAV8J4yP/Z44vuhk/9vUzM6876UxZWLBMgvXjBkd1VY=;
	h=To:Subject:From:Date:From;
	b=mfc5NcK9QUf7K10jICvdXfCLUU8KLvS9yty0MU5xPN9phqW3ppZQPRBEG4JUH2dlO
	 9WnusF3gWTkzRaxqoJmemc+JGECss6NOeMyTZQ4lgas/TZOEZvgTb02Zja+cYX53Xw
	 V47h6YDXpIRSN1EoMMiUD9yuzeP193PkPuUd+4Kx2Y2m59Qk4yn1vy0+xLtRZOrnfZ
	 z4Xqyad6gMFr5oBnCjpwy0VG+Bo5IZxeg+NYxo/RhjPCLyiBT2YInhLsgCvJotXEAI
	 vNK9V+CMbqOpPsZzHBE9cchPmclG/pYZjUmuE0NRqq0VMWVuvzahsWrRRHMhFrJ88m
	 ubtVYP5qzN3sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AEE5E8B387
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177016463361.20487.17787526708282444575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83c84984fb97642ac6765b77de1cfd8971dd869290fbdb3091f92fe87d989b37
Date: Wed, 04 Feb 2026 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770164633
