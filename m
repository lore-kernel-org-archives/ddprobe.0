Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 877A37FB
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 00:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716510803; cv=none; b=hLdKUso844nAepKvlujTrncFp16PCb1GFiW+Y8kCMao2ItoWhaJ5Lziz3rH3zYBhoBp0n3FlSy85WEti7X79Mxm1DeLZrtH+9nVbdw6mnqZJZq0g2jgG+CcJq3CbEvbp2iwgULoiPjby5LK9qtnkD4w2eKuqNPmMmMKi2GKbg1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716510803; c=relaxed/simple;
	bh=Owm0rZZFgqqIxDog0hQoTZrmkjJqCp/11RAZkjadkRk=;
	h=To:Subject:From:Message-Id:Date; b=YrrrbJF+El8eaqaZuN5QdhY5jflildHhxNCbbuTH/L6HX3FJrnhb/mvjc/qosmq6TKijIAEDoduuNWy1NJkBJ7BYjN1BUE2a5RlzGoW8s3XTcmVYYnisn669UYL45rwuxTmhEcRK8B9aJrAA/8wXM4II9rgabfWc7R5s2JdJuOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EAhXOfnK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EAhXOfnK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF0DCC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 00:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716510803;
	bh=Owm0rZZFgqqIxDog0hQoTZrmkjJqCp/11RAZkjadkRk=;
	h=To:Subject:From:Date:From;
	b=EAhXOfnKCTMS0NVl/PSxXaS8KGesn7bthHBDz6djk/wfpnNJIwHGvIVgI43IdH5LX
	 zvzLkKUHdmaq1EDNrCSzdUF6dzZDg+rnZ1Yg7NzAuecU0nT++aKnZd9ocYdt06xBws
	 xKlGgje9hQ5WwhG4EGSjdZ47VwLw/K4jkSwaf0Fj6Wag9DksS+FOhBrQ/uR8ES55kA
	 qILx2Sj+L0kWViw4bLdpXLUaSjMqSZ1p/z3yfSIcDHl220Rq49Gf2Mnz22f9cyYXxR
	 drtGLxcr8zX8oMUqteiQh83gQ2WHOva8ec7UiglBiD7jkQbELr0yVyrdOp/FhqvTOX
	 XLQkxVRUjydgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFD1AC25B75
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 00:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171651080280.16433.6698251494500421243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59a81afe2db8c86052c55e8d79f221b1226441b33f606197611432b3cb308d47
Date: Fri, 24 May 2024 00:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716510802
