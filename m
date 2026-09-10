Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DD02594806
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789067434; cv=none; b=tMEUFloIjHf9BV9VqmQowtQVQlsgn0uVvhRAB5lDeEyR9TneJIi6RmLWCsiA6gDASPYLJ5fU6aEr+pkVgbuwfQUIZo958pIfelXMVmMUAC9T4tnnoOgEHeDyk+kcalneGiIRKt3+u9Vf51AFMdXHkQ6eWtxIp0zC6UYjLUKod/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789067434; c=relaxed/simple;
	bh=j1GUI8xSxcpPsM8ISByHEA/v+WrdNknvhGyx0cdrnX8=;
	h=To:Subject:From:Message-Id:Date; b=lvpv/cEcS9BomixC5IoW/XvCJzuW0qm0eJ+C42YsPv+g0NEO9h5o4cA8zexoTBEEnZZaP8KO6lrWQ5FQGPw1FDNLui4JpxfaT7sNyUVxKenvO1dTJPTh6L4ZaKptaJhs7r1b/fbPTxOKyFUuzuxmatxIp5VEj+JaxU+SkOJaQmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QGGdgjpj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QGGdgjpj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D489FC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789067433;
	bh=j1GUI8xSxcpPsM8ISByHEA/v+WrdNknvhGyx0cdrnX8=;
	h=To:Subject:From:Date:From;
	b=QGGdgjpjPIFigr7I3zkqkXegyV8ObLDd0IVwm+ZXyIk/3W2xYjcA6wFq/lzbSR1S4
	 L0BRDuml8WrTdBPggsoV4AIYl8UEoxKVJ46xy0M4qLK13IsxEPll/J1LqK8Gdi2nnv
	 sikkzeYUOVg/B1iyMulOnNcRrHDIsnZNCCiWi71RqOQRWGkoKj89+0SdYhMTPCN/qw
	 4VrmyhRIIAeeXf7ZDTl0mo1rfeDz9oIRTPv6at8bCpSfSwxxry0qx6xkIv+/7FyHNN
	 oXFnBC0wvvhDeBVxtDIglDON6YbpCfJMaatC1psp2z2+kMfkzC+SLbdvgnxUsUBuot
	 Q5c32/muGOuLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA08AC79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178906743368.555.3912491366769773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae0a1f6b635e927c473d550d3507198c060f4ea9c3199f7c75a0448893796f9e
Date: Thu, 10 Sep 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789067433
