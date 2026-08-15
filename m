Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 758E03624D3
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786781434; cv=none; b=bNpMpfX6erl98Mowh0l9WB9au32NGTo5U50LQkJwEbDnxqyjQu/z3zPdLHDBbLWRxWls5KwstUkUpFlLGRxdGA8ThIHpwA2GC7EvjzK6cVY9CS5Ptb5chpyf+hNocDXomFPeQ40ISATvbe598sZ2tjC80hqhO4J3TMAVq4dF7uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786781434; c=relaxed/simple;
	bh=cQUZjgwWZQlL7T+GgZc6e7C4N9EqsLwh20eBp/aF3Sk=;
	h=To:Subject:From:Message-Id:Date; b=fUUAdMoPUSJM+qF+E8vJhWRZyPu+i2GQksCAr9KwKnEgHFNGMa8nGYTE3z8ebZ0auI3OTlG6je9B0ErYNEz/NxsNlAEQyQl0BFKfnpv9PNGS3PAZ8EDmITvf1i/e7VQFUDcCU63ipCS8TxVL0Fdli9X5qdMXQV42I6x/F8VWX0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FRHd6UMO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FRHd6UMO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E652CC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786781433;
	bh=cQUZjgwWZQlL7T+GgZc6e7C4N9EqsLwh20eBp/aF3Sk=;
	h=To:Subject:From:Date:From;
	b=FRHd6UMOSR0aDq3jsr4mZDKL9uQ+JREIC3uGJWreATzV6bgcEO/tWmE52K0hEz+R3
	 +WL0112YdTYdZajID+vayYNPT/jmfg3hrUqIrPIVHgcynV6zOsYKBF7a7Zi27Glz9g
	 xw6w7G7f7DCYbY4gJ/HT7S8QLEhoBlNjnGmgeme8pSaWHxzA0AneAHc81u/lMLd9CI
	 R53pvFscseXezYXSnIBsRcuY/Ygpl4S3/6jczczN8t4k6L4tzIxxpCpc/I47Jlp0LE
	 jOh0eYVmTjVgP2rgT/i/+dmAkIVbfIM/IxSGRfy9fatevMrAtDySa1DXr4FpeTzXVA
	 ktzfiAaNeawXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C413EC5CFC1
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178678143376.2818.10932299020146027927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c71403422b05c36f713decc7effcbd2c6dda2f572d43e6038933da37591d0b77
Date: Sat, 15 Aug 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786781433
