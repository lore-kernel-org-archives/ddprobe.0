Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70ED634A791
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785735034; cv=none; b=SEb1kiBBXEw7EIrRX15r21DcxUKYgfbVWbhJpAxByjRfggWHtdLjGH+jL/511I60o7zSQ+vDGmCvd9extwGYvBRsfEJ6RweNo4rObPTtQ6o+mJOowqEPkNkt4y1w8/I1CgnHA0qy3iUB1mLMOVPhLCGfuQvPi/6k8d2++ySWaVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785735034; c=relaxed/simple;
	bh=ExCHiLwm1+PXtAch3H4uAQOthN0itaoKXpZFg9Kz9TA=;
	h=To:Subject:From:Message-Id:Date; b=A8OxWw9r4k+MmTQqsATQgNMtPmo6nM57ofH8/kpWntRhBlmJettqzGC1/N7w0D/0oOqyU+K9k81CLmqMyj7tsDP26DCeYvtqRn0WvjpsTrzkD6n69LXjFqi3B0q/g2wggTgLhB7fQ80ge83tHX85ky0BCTEz3UyOximjEMhjLro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rAhod68C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rAhod68C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2C4EC2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785735034;
	bh=ExCHiLwm1+PXtAch3H4uAQOthN0itaoKXpZFg9Kz9TA=;
	h=To:Subject:From:Date:From;
	b=rAhod68CuLDyEg0DRJ34u0jaVGWHjaP+hOCwkr0jyM/uOBeaJ5vjH/zjhCc46a9nv
	 gtzbQpzxYmVayNKaavQv6Mn0tTya+82XBetXz5cZo9vx/3M9mnfeFFjhv9nTTx+Kwp
	 hCXxoXIgsMyWo9w5vjTeZ6EHPWSUBPRxrAv15hVwJWzVFq+okM9MJogWfWCNFE9aWj
	 NJocpDwzZ5bK8uGwQakYWslG09HLq1X3tmq5fC1F2PweNoQeqX3JgDgWQx2M0Lie32
	 ECFhRhxYFBJ6MiCZZHFiDZF5p1Vf8sWr63FsI6kLDXjTG4ojZSlCriI6unqPrb6fvb
	 pJLPfYB6yXafw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C831CC55162
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178573503380.21577.4652881441515859380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f12ef5f32159f95635ff309a6f4cae53edf0b2fe8985d9d938a27227ff4ebac9
Date: Mon, 03 Aug 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785735033
