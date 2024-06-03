Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CCEC81736
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 23:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717458923; cv=none; b=u7AUHz45dS3QSWLXN/JMz+qFN9glZwbMvbAT51/vkLPZZfqKK5Dw5KM3dpdyvcfab3ZJ/H8r5jnHjNGvSa4WLbJZXyNmGP3rMvT1XoReKRV4BNk6j3RU5GjfFwBsSPd7kr02IOLpLe4rIIG/x/QiHnsHytXbcSoLpodK4zASE1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717458923; c=relaxed/simple;
	bh=U1XffzUXrjGBlFh7iUHctxr9yNu03JuQrehIUUZVjLI=;
	h=To:Subject:From:Message-Id:Date; b=Odlo0XVS3CpGV8UVq87xMTKGoYGLAwPL0hAzF1wEBpMf6yljf67KhdBUwquirJmG73aNXO5Z/9O4IEijSnxIX3Zzvbu8LbKY5/XuLmK8RFejHWezoyyz7FHzmr6E2qy6ywDMRdMIuFgOZ0/vraxAlym42h+P9rrfPEEENEcd1b8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iv1rfhDF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iv1rfhDF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA5DBC2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 23:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717458922;
	bh=U1XffzUXrjGBlFh7iUHctxr9yNu03JuQrehIUUZVjLI=;
	h=To:Subject:From:Date:From;
	b=Iv1rfhDFFP2MjPquHSv7BL+iH2RBwSSiae7QJjpvpAnAo0yXEaiwLBfQHFYBaTdfO
	 NBAVQjdZBEYEOucZnzCs5DfPYiCtREZSjt2CadvkNTSH2SlzFvnKVVNf1p69fgvdYj
	 gBCHXLBtrCo1SFEg4jllxQwqxAYOpbj2kuRp0HhcTjPf7QBiyLZ10c52owqB+jBes/
	 dkN7TghPKoQSApmGrCLPYm2+3fZeex0qQWY6uVqB0d26KfSm9rarncS384ALSYPbjz
	 KTtJvBoK9qqxWn1/Gb6xi1YiD4u1wKsKv4GQctVu3y03lqoYbVPwFEBdN+3vD+TTg4
	 CPMieINHY2LGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5A4BC25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 23:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171745892277.6044.12509642616935441329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2ead7e5ab7fb932e7777c0e22c6cdd06ae88c65d041eabf345feff779a3ee23
Date: Mon, 03 Jun 2024 23:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717458922
