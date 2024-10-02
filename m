Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540911D0E12
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727888754; cv=none; b=tcxSrHJv2kR9Egx5PJbPZzgCiGjAHHUle4gYOD/r2RgDTZnyMhF4rPFwI0ZYz/omqEWN3DSoMyrE9EnGWBhpxF2p6V1vB2obPXW8Y9KMXQ7Qe8kOhGQCDDedX8ReKIXJFyCWdUA8srjs9cOiTRmVPT0FINw8jnrW8nPqRut0Q+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727888754; c=relaxed/simple;
	bh=M+3Vc0dWPTmz8ZoEzC4AyFLMH4P/jlOCDLP12rPIf6o=;
	h=To:Subject:From:Message-Id:Date; b=JUNAWxj/gfsChQ9qKwNrvmXDLFpssyLUxheDeu0f2J0sB8TtnvGFq0UHj7UoQUq8TX829qynKp76DPyh9eilT9Rzh2GIgROlveFHol04o4HYR3O5y3yBjzjBQMdTEfOIGjAb2rInnx7gEJ8EQTV6t9H4u0IqJE87+olTywrVE70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dCqoHG4R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dCqoHG4R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8EF6C4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727888753;
	bh=M+3Vc0dWPTmz8ZoEzC4AyFLMH4P/jlOCDLP12rPIf6o=;
	h=To:Subject:From:Date:From;
	b=dCqoHG4R7nd8Rsj/8+G6rspah7vtT/gLAxaC6IY7mqkAaOTijP/lTvo5Iqw2Rqteo
	 xHOkImIRz7MXrLOKQLLAxKiWxUslRJE8vMGXxpTYL9Ut3ec5ZEUr2kOblA3t/NYbma
	 8SIynF4GBOVVz3KtMFMzLqEv+OWy1oaHwjwSJCkogXOee+X3ao3UhCZwrXyS70Hbj/
	 BJb7jdxNihQSpSVc71ozXY70LlKHzcRiGGZFsnJObebh8MnjixKKdXZorEfOK4Y20v
	 um2JrWPepdRJKEeUH2kvBQH6BjfONLP960cXzcntAL3OQ87SspK/lCg6Q+p5cE0wKW
	 /1wu89rFpGXEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9884DCF6D50
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172788875360.18691.14569811267971634778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4055e0a3bb026d792db524f273d64cef331d652ff46006b26fa9e693dddf7f6
Date: Wed, 02 Oct 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727888753
