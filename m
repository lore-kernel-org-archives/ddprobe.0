Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369C74A3E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724556354; cv=none; b=IkwHdZpGN/nKj4XICWGMbAP+4aYFzdv0z3CTtLGKYTxmllXuS8OgI4K+uKEd8CxDpIeS2P5uem454BRfSsylz4HKjxtjJtFRujT47Cmy+VRKBS51lNRxzaoPDwye2ogqier3Lk7YsaRhxLYPV+bY38Kkfg32tV7hWAFiN+c0yUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724556354; c=relaxed/simple;
	bh=gYwukiw5sQbgb+CoRbWlfrn2fSFGcjUkfMhnJ1yYtUo=;
	h=To:Subject:From:Message-Id:Date; b=sgCOyQZW7kHntJjLIUtub73g2SVKdtxId1oQ1q6tFWQVt0J08CUZCaChF8AYG+GbtQML+Fa40vSIuS/+GiiPCgGZfvJT2pnLb1DAXJ5huhBRPmgYhPmtK3DEwXuABnQ+/CZJjxkGSSBcdhJzh3w2mK9xgPrfyljB4DijYWem/KA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n+JMXI2b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n+JMXI2b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE4E6C32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724556353;
	bh=gYwukiw5sQbgb+CoRbWlfrn2fSFGcjUkfMhnJ1yYtUo=;
	h=To:Subject:From:Date:From;
	b=n+JMXI2b8v5YZlFenVVcFJOIPLUI4YcEsAngeTUyiOAaSSKzPghg8xLViqPuGLQWB
	 qNJYlmfIWPZwFCXMlMQV0h/PBkmIgNdf/THQPZjyyDSbdQ9Gs7/qs136JV9oTV+9P5
	 KlpL7e+uv+EjlhLSNItXus5CfqHnmcaawyhc4c4v+f5gcLyE99prORjtgqRv7O7QQ/
	 Rb0OS/Yw+kW+w6D89RwYI0JGFUxMB2QoT3vmML98HBWNHXsb5+1qA+y84a0Di4uJ52
	 xdoctIztzy2SdhYuzQCo64sjvw20g7B7nCLOl/BelT3pEzNIjrucDfWILfSmhOPqU5
	 cHUR06swOAnVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958B4C52D6F
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172455635358.29743.10501822822030991747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feace91835e57070981ee25ac47f7605c2743f6cd5a49e987d2d9385a27053f4
Date: Sun, 25 Aug 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724556353
