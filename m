Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFE410E5
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726801554; cv=none; b=YmORD53doPnJmBIhZwfXI/DPmMeWDxMk6cyX30Ln/Go7h7zfJp4GCtfViBBceB87j8iLePXGU1D0Lfu/powcp8wB+7T88WYF9aV+PT7RPjapnQ/MrWRMPOM0OQPxtqL1TcaQhoZLSVC1bzxgFwXP3DkDoCO8P4NN02YxNDL6xSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726801554; c=relaxed/simple;
	bh=exszixzGLFg1RxDOiLEiPSBHXqKqhL603vw9T9J5FE4=;
	h=To:Subject:From:Message-Id:Date; b=WjerXHhQkEBilunWYgHsPnOmfskyP/31C5DLdppPxEawvUK+n3bGgVKFgIrEXp+oJ6ke/CS+Qcu+hsotA4ksAPHmvHz4/SvlwYmSrCHoP6t02fC4cQ5BEuvRz7YFJlvplkhqs2lkKp+mOkC995/s0u3nROk00ibRxsoQns0HQ+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jKpp1qPF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jKpp1qPF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4155C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726801553;
	bh=exszixzGLFg1RxDOiLEiPSBHXqKqhL603vw9T9J5FE4=;
	h=To:Subject:From:Date:From;
	b=jKpp1qPFECIj7DCzXycHlEvX7qll7hlt7KWmCw594ypruE619zPe+Kc+umTBVMEGu
	 aJBl2VlAHw5zodjqmtocx1JksYVfH5iK9tllIbNS1zy3X9Ybrx35fbO0EAMibu04xX
	 +SXM0+MK5KwyvIkRUrUnRu3H2y6UtJGmvy5W7mtreSdMF9hE44KmQ1b8kjBD9GScm2
	 shFqH6g5/B07c67l6aL4q41I3YBNDFCU1hM1ubWSBqe5NVqUsu6lLeHmcIyJt7juKK
	 Mk9wt9IMMQVW7im9wU8EuiYl8WefkpEtqc0Gsf/nVFRipqY4NatydXk1gxfIQyD3OA
	 2lN1AYosDcj3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F401CDD57F
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172680155361.3887.15547579518923578341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53f39f56d429970cd1528d32aeda64a5d68201467cf70904c41726720c2ebf63
Date: Fri, 20 Sep 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726801553
