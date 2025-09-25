Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE6921946DA
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758806393; cv=none; b=Jjg+5JzKkgnAtctJ0tD3u79bYpXiVRihjxrWQupg2AfwStnEbUCtL4GkO2+yoLixHM25zEeiD2ztvEp93K2YwA9Wp/Nf83Zd0uDneq/OVtJEWWX99omLjfHFJf+SXLdfrRIBKVAYRiYKsmeFEeqvXFXtNAhwHH1UnMP6ZwjDG7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758806393; c=relaxed/simple;
	bh=A+dynLJW573614OLszyOdUBWJhgd5WtChC0eurGbvIs=;
	h=To:Subject:From:Message-Id:Date; b=XdXIg9fj8s1l3P2ZrPI82frZd2r5BwlpTtaVCBPGFrb54owfmTRbW+KkCMxnMjIJAmmQqQx3ix7yezvP/AAzo5LQMaOsj59hBHenexmEaNezL8fiHLVsP2RjBdwAIhEk8pZeaeb7fAONzX10uZ9sEb8RasxbMadYxD0SBTdlhhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a6yNDizx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a6yNDizx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0123C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758806393;
	bh=A+dynLJW573614OLszyOdUBWJhgd5WtChC0eurGbvIs=;
	h=To:Subject:From:Date:From;
	b=a6yNDizxIw/DqiLLKbzvdQ0daZLPSqc0FPahTdfUQW2EZWl2DIahs7wd5HMTaWrCo
	 aBuWmnTiybIGIVeqkrn3XoWYFrKqdtgBZ5ooeBcrZkNh6HgrAW8QWLouGLMRlbtwA1
	 rKZZneR9Bd3fjSh5B7EhX23idB6+0Vca6Fz1qfJIsAu2jrn+HJrM9kwUuRMejuQpHi
	 RhXfKdaKEMokjdc+IcsPmYOpxk5/JcyqnGbtmr7lBilfYj69win3T7K5rvY8FfCJbl
	 5JpSkopaGgiEqJ6qcqFUsPr3De7pK2ydwmQOWck9kyHiL+B6XQHHny5uA0PaTVBnee
	 MllBPGQ1m10VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916DECAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175880639358.26949.5791974748465762472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba913f1c42cbc8e543805caa5c8ebee76347a23bfa54ab09fce5cdfc9ddf54be
Date: Thu, 25 Sep 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758806393
