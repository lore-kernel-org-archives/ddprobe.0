Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B04D9443
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 02:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764381775; cv=none; b=dOxXeQCwU2KgUerMmJg3ZJs9mz4r1XUDZtl03koWZYcri7KBJMoYIiRPFPRPJC1BY70qylNPlmFx1y9uUcJIIrRth6gvMXsq5DLu5g8DY5YTa8a5+joQMkyLqoTlqnwF1nyOTs35KPE0z+h78wv1ZzxlVmNdyrXLQQbkUCtrsKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764381775; c=relaxed/simple;
	bh=CYnno0GoMQfoMBAsNJkm2pcBn6DkxozJe+rm8eR4wEc=;
	h=To:Subject:From:Message-Id:Date; b=fo8iRPRgy4Kg0zRwD4MCDWnd6f6x/WZV16vuksB+4M+9GToo4BiM4R5yaiigrku2AqbcYVhoYJO6q6bP01He9ZsQSgWn8N+UO/T1Qus1zBQDAyRTWfD8Q5fhEsIdWRu35Op3IhS/UDMsU1pfqqdCN2vjO/bgIewStG3POnHZc1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xs/k3faT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xs/k3faT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C21C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 02:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764381773;
	bh=CYnno0GoMQfoMBAsNJkm2pcBn6DkxozJe+rm8eR4wEc=;
	h=To:Subject:From:Date:From;
	b=Xs/k3faTxFSJ40cv5j11C5yrMtFwgI/2NEOxd9fBTixaAUqAF+kRa5pWxvmqxsKJd
	 UeNq/2XslTbMYTuchWcIvYd4z8XyZVdERjacSTnfzxsHGwKdFrPVPZ1GQdofspRpf5
	 JETuHyNj0agdzHazfrFB2xwdPZIy79SurodnYsZq5Dlj/a80SxXkbWnIl7tgtDuDf5
	 kxxtwHsQwo1lzFGyPPgzMqUMIr6Q+bdvfz1vafbPCG8yBos+UrZ+TTHNdeJ0R3AFmQ
	 QqEYqKEqZtBLjfWlam4xkNmsNX6xjz1BylpF2aH03m8T0QecIyMvlVatWFY4auDbL0
	 pweEy+vtGjsJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97547D116E2
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 02:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176438177358.18885.8997324995449473853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a95928a5c7a5aa10bdc05f15008c8a14bcf00da15e3436d4864781f26222fdf3
Date: Sat, 29 Nov 2025 02:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764381773
