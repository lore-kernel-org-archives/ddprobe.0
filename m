Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25EA119DFAB
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769915634; cv=none; b=rdaccB1GVJM4COAie0CWwMRhlp5/fuMm+Ui0EvkYgWq8ovaQPD+pTrVD0PBXcHi0Pz2eP9OP75Yz5vKRwAQR0bELSVB5agQB7QPqQemd8YhNvigHSbfNMHTzPndIzOwQkQqM0WmyKX13orpDgvXerzgrWsNfJx38IMrTeB/bEA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769915634; c=relaxed/simple;
	bh=2yFHAQGwe+yb1dwznr7aiConKHzdS7QEGvj9MJtn9t8=;
	h=To:Subject:From:Message-Id:Date; b=elF45FrCeMId9WJ/PqeNmX2mxqWZs/PxlkNaU0BYFlcuKWn3LBPcJBmVerACP7hpS/LgnNyQt1L035itBInEKB18olu6qgFVKTQEK7xZWsh6veDEoxGrT7q3rGp4elS2CQYFh1VkuBaYvnPNfiWI16eVVSCHC/4OKlo795vLqCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QgJJ6KHF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QgJJ6KHF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A576BC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769915633;
	bh=2yFHAQGwe+yb1dwznr7aiConKHzdS7QEGvj9MJtn9t8=;
	h=To:Subject:From:Date:From;
	b=QgJJ6KHF8csjPc2e2SWX1+c9joyvcdNuZXzOLGJWuzq9JWd66AqhaZoxiZOwI5SGt
	 KIfNKH/lQWsiDnPFQGdhvNlSFO1cm1pFub5pqvxSrOpv65++cA/E0vRK4sbxjkckk+
	 RsM6RJ5BwTq7/aC2I5vDKYdFd9JS4TgDakznz7rDHh/R264gC1oL/mcW5s2oyIQ2lO
	 FWtmu6k+lNL/PQnU5UNsbceUPtq5XURVQYPushnoDoLuaIXFoKuNcCkxSbE0UjEZMi
	 nV8AB3AQyLMkOU6eJLA3zqCTIkSZBt/ga4pLcOHocgkofPVbXsMFzcTfquL1wWi/eQ
	 1Ih+IRiznLXsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9102AE7C6FD
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176991563357.12267.7236153226567921436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 637ab53e45df705aae0a7155f7de42e2dbef5f3b930f57f27ac28b5b6072d851
Date: Sun, 01 Feb 2026 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769915633
