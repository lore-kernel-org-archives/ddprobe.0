Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71F08BE4B
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 06:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716618263; cv=none; b=A7N15jM7xsCj45dctxm1Nml4bY0ChiAmYCIPaZ0A0pB9VjE5IHClxwz4qf32ZC3CferqCW6u1BOPNKe48S1CaoTZpXnWPcN1VvrXmOcJelBRP3+evC/aWZOQSEJgTzM+yUQuS1wxvC6Txt14hhceV+zt50O477TJqyxbqvLtA38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716618263; c=relaxed/simple;
	bh=GQKhKPQU+uACtaUdKfbCrXRnHD6t/CsKNwOIOYqMlaA=;
	h=To:Subject:From:Message-Id:Date; b=l2s6Y0NGxP0at631YzzME7s2i4TlP8mJT39jLpe1Y7pqcts7Os+XgS+gKZnmaBClzCTU7aH4yqjMWOLK/EntZtKHQZvGPaHHXhjF1vQtn9Y6fGrt2tLN5UfjisJactgSCUADGqrhH1pzo4cWLvGpJww2OqQ0nbGTKr99neBFuK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u1qnrN2b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u1qnrN2b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1851C3277B
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 06:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716618262;
	bh=GQKhKPQU+uACtaUdKfbCrXRnHD6t/CsKNwOIOYqMlaA=;
	h=To:Subject:From:Date:From;
	b=u1qnrN2b8etYm9nxKBr+4J67bNoHSCzIvwj/ZrvMZR/siF0YUIoRmg94pU51CReNX
	 wD3MRDG/SXnz5C/d1wHkrUcTf1MelGaUHYOiaQxndR38+SCIX6lN7NdL8pJyYpyNy3
	 kerwjJp6y4FRdq90AH6sMBcM7IfccDA2vkAnrkIfErRgAgF7EbK6XtJu+RclHvBZoi
	 4vi1NPGNv7jeQY0buk6CdwHmotAE/XfF7/voY1YxeyFg5OhMkZDXhD7rMAy+nV4Ahy
	 gu/kbJdUQbuDZpm/tnO8HJSJZzGf0tCRhfrKR+syYOJUS9akqwCAt/deveM/AxlA0I
	 sV3qpCSksXGVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C450DC25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 06:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171661826277.30392.13595764465885455623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 907ed9512ebff27cf6d20e4d5cd4309cd7d4224dc018ed61006839a36d614754
Date: Sat, 25 May 2024 06:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716618262
