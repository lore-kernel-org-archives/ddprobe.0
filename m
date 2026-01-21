Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5823D7D7F
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769026434; cv=none; b=Lm+Y+JxCJ38z3ST0tyjiy38CSiq8OMFytzKLbp/DtjH4iH+umhIpGIHmRkBBuUx1Fki7/FSVhmTLSTAR8oxjmcY91Qp9RPRxSSzV8x1BLwY+2tacttPKvW2iN0OmX6zExlYLd5E/qSICs0SzGnmH1CRWIvvQ4nNtjL94JyJZ5Vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769026434; c=relaxed/simple;
	bh=thQn7kzm6IjmtejELR/rQQxOShzyL6JAbgWK7UGLsko=;
	h=To:Subject:From:Message-Id:Date; b=cryCGQ5MIUmf2fzfZ50xxVRW2fGwsFf1PKxz9Jrqn6CUuNO8zEtMaUYN5cYNuJnuaO3OolHnxS9Jtmxo03WhXko3KHFOjxyCgrs826UnE30JA+T7LVjU44lsOvIT5L18rcLtgMgH7MHSN6FBETdQsCANPKL5EyC67IRzQKpiH3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kXA6pfyi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kXA6pfyi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB48C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769026433;
	bh=thQn7kzm6IjmtejELR/rQQxOShzyL6JAbgWK7UGLsko=;
	h=To:Subject:From:Date:From;
	b=kXA6pfyijV3WHAVtAbXqp1B8Y+ewXYO3Gqx6FXxAUMhB3yFrmWszOqrLI8W7rCBa6
	 qpttuyHFOEQ0sX0yIU5KP4rX3K0LmbvuLiuz/5wBMH4p7prL4HuWwhgN0cbQBOIV4k
	 n8ycIvb4C8w9sOJ5k1MqesIcGsOqCN8pKO1Lf2hF2zrMMu/Uj/UTDgz+PKufPcLOkw
	 gglbxvHUuLZmIKFw1uQR53mjrCu1mgutrV4VQV5lgUBkSSPfrpD52coHt4f2MylyN6
	 NwfePsBRjwtGaw8FM1BmxgODdvNePDmc7RnikqT3XzqBe0zENanrfwbtWGJfz9hnGd
	 h9KtVz8vsfKaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96238C44506
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176902643358.18539.1544892015982981728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2116556e9c2f8f29b6258549edfc8ae7fd849abd915a3bd8949556d433627b3d
Date: Wed, 21 Jan 2026 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769026433
