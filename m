Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DAF41BBBEF
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722933354; cv=none; b=KnK2LIMYl0ZpF7h7WaFI6Rr50SxFI+RcNBYyNSVJJISB2wYRawuyZpLO3MI+E6S4c2dIIG+b7WkRj808jrGOMnLb9t80G90Em8XH9UZTjd/5fNGVZeHnZw+sHZbNf5n9bgjJmf5F1FNyKdB3SWgfolWq7lAb88uZq3g+lKiDpJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722933354; c=relaxed/simple;
	bh=mAvyOUsvd9vUOMRrk7MXRzWn6B5LupFzIM4cNXTjf8o=;
	h=To:Subject:From:Message-Id:Date; b=lmWjS3yok4A2v5eiT/kXXnBLa6z9Wztz4SYU0DrLmFlFc0b3PTujBingxJ5eHWxKYimppol1v2s0CKPbHeBKILT1HSaF7tTOf46HQpcDAqE20zXWVykLUFLQn/64n/W5f/SPR16rIdv7FcKbotLDbRqYwliw7zaggUilYlU9yxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RJiOU2X4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RJiOU2X4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE031C32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722933353;
	bh=mAvyOUsvd9vUOMRrk7MXRzWn6B5LupFzIM4cNXTjf8o=;
	h=To:Subject:From:Date:From;
	b=RJiOU2X4sBLbXCcrtHOcFGOnRKWJKMJx5WfK+MjJypOubVzkPyGO81wdDuboj26+5
	 /OH2aoUl4l/poEYfJI8BuWIYvgVFSlvqbsqAAspqGgvOq+edoLpLGDa3MizUKDFpAr
	 3pivp5ECizXoK574fzyEQAuIaN2ZRlRtrGE89uKwjsrnlx9zPeGxLECO6uLhJY1i4o
	 6ejlPr1dEkZOMkkSoyYjCJawNFppjnyN6BkrX22cFBVVuQnBb2VUm8nYYhGf92oC99
	 CzRvZW/VSjrFrW4PvylwjslEzJ0NvmWlxD49keKmyfRLRp2KeoE8GTKZQeJsehm5x0
	 JDYXjTOtTmiiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C2E2C52D6D
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172293335363.32234.8725756463664341695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70d7f86f377a52e2fbc6ae4265f8a444c0f2933f023edcb679775887e4842d8f
Date: Tue, 06 Aug 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722933353
