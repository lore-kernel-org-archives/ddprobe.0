Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4BA27E04D
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750281594; cv=none; b=NGQi6ykRwqouYxuAg60+QyJSAQu8d2EXr304CaeinBxCKju8eGF3uKYhL8lXeEttjkQE825/KuuCCjtuWKSD/klD+fB+IUB5E7C7UHO8VSHWlfowaqS7/pPITAvM79eolJSVk+AtSPqGX7DlP0ORlpCu2bBYM5mPuo6xIwNEv3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750281594; c=relaxed/simple;
	bh=DLxRlsguCMQT7Puia1ArFpXHp5pAcatA33MmrwXrEAE=;
	h=To:Subject:From:Message-Id:Date; b=YYSIVGbR5Nj6/bMmwI24ybiDcN/dzag2C6/03C3zt7wALHpD0dW0VKsG47Dj2uN1OkCD+6+z2wMLUUE+Dqj9YJ3TgNLy3Ke+ngTI5oaLxRbi6W0JWIxKL/efktdIce11ibvBlTto8LVUY0r1lkOomzBiVSf0VXdZDcwyxbUwy58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=patKPe0K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="patKPe0K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDF1C4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750281593;
	bh=DLxRlsguCMQT7Puia1ArFpXHp5pAcatA33MmrwXrEAE=;
	h=To:Subject:From:Date:From;
	b=patKPe0KtbZC1YNtgEgH4u0UD/m0Jksa2Q61DphMISxdV/GIoW0Q3WrZCFhBa7IWf
	 d43mt4kGMJi2A5g138ijpM+WmVStDeZpmXqayF7yhLTy0eSYVkcocilEfj6WQylAlB
	 ErG3GuLr5A+BHcJ5syMXHI0/agpoouwG3APl+Xr1OaDSbB7jvdn1dMdl/vXLKhZl7i
	 FpMzHJ0gfW+l0UETq8a/iEagY2H1BoN0O4AsVTOhKnnv5aC+GQ0kG88Iamb0InzRb0
	 jZLylT/gmouAdkwp8Y/jCauDorKowK7gm8bNUCsK6GlJyCjwoXXI8GcFuJ+brnDlpZ
	 kn/rDGMlyHyqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A914C71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175028159359.18611.10417812792837272369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dde172a9534b16bbeb80e493508ae2f38d17f8850a0985e54f607f649c7927a4
Date: Wed, 18 Jun 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750281593
