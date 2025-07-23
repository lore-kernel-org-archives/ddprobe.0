Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141411DD877
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753258794; cv=none; b=D2lRDaR2OI6sLnVtRV9o4Z1z3uXf/yr8XKC4g7aQNDTWxo7apP6M45u/PI9AuF861vcthfCzoQPzLrv67rflYi1Q16A4QnkUx0/zCLASCINcom/RT7DjeV3yiHdvJgoIuIK/MY4cRQqltkewAor0Wmwdqi5NvBaEtVesuo0EPxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753258794; c=relaxed/simple;
	bh=Lrj1s5UGrjek0dl56X+lWn3nHSOH0vKziAQeuFVl6OE=;
	h=To:Subject:From:Message-Id:Date; b=nOnTCoFDhJl027oNBzklDs5w3BBi7l9f2L+mHsHixUL7rZeKnmIaPdqA1bjmTCKG90zT+j1Nu+S+juVnVYYKefynq710adHnaiwAqpf5ufTStdE2WF2aAzIO1Cxh9Q3NIcylSWxkMkVhIPOPFgM+4TNlfdWcTkyftR6dv1u3a2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SugJErUq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SugJErUq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9946DC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753258793;
	bh=Lrj1s5UGrjek0dl56X+lWn3nHSOH0vKziAQeuFVl6OE=;
	h=To:Subject:From:Date:From;
	b=SugJErUqekftGqmborWgg1y9IttXZEXyYxKtDP5GC+gswaWmv8KtPjhKoixefYbbi
	 GmeL+0nTOLhUN2msS94VL+b+760mihLCTxtKqeB6CSftF76D9zO3wiHKGzQto0qZDU
	 u0hqqFcy1BhLpaFfzzx1RQ47M96BlfTRg5jkBWq78ALUbPiBzkLfGGM3dHuUFKlLUR
	 0He6IxPoynKUZxPVdhSoPQfH6o9HlmjxLkAae9w2Jq/OziDVP5GRnqLKdxbzlaRH3u
	 XA0qmm77r32oe6GO0gFjwNvvjmGWfRKRZh+yIMLpv5FYeOgR+qxYWn74r4ieLc4l0o
	 AynKWv+LR7cBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDE5C83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175325879357.28579.16498858857578291042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c3cdd48a8194c7dd39b85dc337698b5ac561c29cd09dc3ee8a14fe2cd7be78f
Date: Wed, 23 Jul 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753258793
