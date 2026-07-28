Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51EC344C648
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785249034; cv=none; b=DvCHUmwQarqyCTVISE4xWYMICE5NGvkfLC25cjGUECqScFlJD6+HF+P9P9MTarrFCLDIt3MDs9dCWSkGV6DjTuXjCv7pDnjs+pK6ATpDRXvld2G0pVMbcek8MV53V5ItUF5vC7pjXxW2kUAHii6Pjp4sHzgL9EzhCXY4Xj8JPgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785249034; c=relaxed/simple;
	bh=tgFJnIXauQ2dLUiCBT2dbzX6ehlICG3lZ3kB2Tfzh4Q=;
	h=To:Subject:From:Message-Id:Date; b=QW9Tu1clR8tSsHC/b2UtzIyY6ysIgoqiTZOnZlpMVkN4K1vsYIp4PesR5kvNOmRmt71KvOnmIwb4Z3jlH1VzeXHmGUieVGtZAp/XtFX+xh5I9GAJA9zAibJg8N+F4Z0dhMxQa1x+T2n822TVQL/YyNhm4RhL579kGNUohIpRH3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nIj+9APL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nIj+9APL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1144C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785249033;
	bh=tgFJnIXauQ2dLUiCBT2dbzX6ehlICG3lZ3kB2Tfzh4Q=;
	h=To:Subject:From:Date:From;
	b=nIj+9APLZvkgc3yHKcmzyuqLSvqqU2WInN7AlK7qKCAf8iXiSyVUQPkS1Z2lKULdy
	 +Nucw+2i0nGyFtTiKOU7Cj62fUMYvlxtHd1lSxvnfM3SMxkx5yCdWgYGei0epYjnhP
	 bqZmFKueOVDqRjm6LVj/pp6riqoJFrt4MZJJ/rnzZ8ArB9qDtkCGDY6sfCrgFhddn/
	 jUSPRW6oDforLfubPXBP9ipKDtjx/49wnfQBpUo8hsfXXcWw0mVH0/x7GKoNGN+ybN
	 vbbB2FVy8kK+Ck9xfns4pJF6GYxY7tSSIwRLiy+gvVRS1R/KKI+nkp2oYRUpYFkTAK
	 Dae5WL6vaB9Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A965EC53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178524903368.28765.9191047916877960737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 867396a9167896e71f1196090d64e13a0d1e0e061f912466e21701ca5be65cb4
Date: Tue, 28 Jul 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785249033
