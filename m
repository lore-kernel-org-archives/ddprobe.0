Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217011A76BB
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769322234; cv=none; b=ESoZb9QiNKt9HzWqOm9vZGKR2zpcTPafwuVtaCqdstNWZtlsuhX2EFPyz9u6e0yHOWW3b8sGAQwc0H0gAr/xnsKtFmuVv14PaKjCu+AS/N36BaicpXkmKBkasFDOkkH4idgRg0mjX/XvFX+rKrnyTe6HutYvQ00QwE1SxuHRL8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769322234; c=relaxed/simple;
	bh=KPbW/7KIrZxQKWNKsSHA/zH7qXKnwef7SmRMrakD7IE=;
	h=To:Subject:From:Message-Id:Date; b=CNJaoczW3rXq8ewOPZEhNo5b7Z+dlrfRbgUc9Wy8+iZWRuaBXWdHMRMGVlUDNHpDC+m1wTqvbX+HIMEmcK2b6VxVm6ARkvfdkyXnQ7ErkL+LLVhsTZ0cO5nQORpzGEgky3Yl+8EKGO6C8irvhcqMtryqBiE0P6jHWy3RPdOJQGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mKo6mt1l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mKo6mt1l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1733C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769322233;
	bh=KPbW/7KIrZxQKWNKsSHA/zH7qXKnwef7SmRMrakD7IE=;
	h=To:Subject:From:Date:From;
	b=mKo6mt1lYOT2roj47vdlhbZ9w/T4q4EHSOcV5FKWhVdLgbemv5esASk73O1EFulET
	 GyZa7moFFPri38FiTLEJqRgihGoQFk91mprEWjFlK+mZp0g2h59NNaTeizXPt61o0m
	 OeqVGkSm4ma5S+YLWEfdOGCZb8XdD+2TkXNOUGrByCvLSze3+nj5AyvnnRpuX+OgiS
	 LAHRl341uTw0FWgSiHQgbPn7uOx5VWrpqlPqLvEsLTSYK7F1Exq+u3BvhQP+0kjK7n
	 RJCk2YwS0DlFIm/FcrMUxb3ErF+KQfvjdTh6XCyOdwujCvM4K4c60tHrRE/VlK44Dd
	 JBAOrJCe/ucGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F463E63C82
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176932223358.7896.12009857728102400745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86278d1ab88e459a98e7039cd3efce7ededd78f9a6a02727d8b578e353288f48
Date: Sun, 25 Jan 2026 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769322233
