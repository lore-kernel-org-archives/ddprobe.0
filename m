Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2495E1FBCB0
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753909794; cv=none; b=EjC/ANzB+AuDeAVwgZbyrX+eP6uUY5qUsElPTyHOXGk9yqdRH7v5owRLKPbaRiS1oXMM0xKZ7g/1wQ4DoJVudjIAzXDCY7kADOiExWKsg2eeBZVZVm0/mn3k1qK1XFDzjQrSakblO+thlo5z2koxresNswuAi5dW0wOY0Jccz8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753909794; c=relaxed/simple;
	bh=ZZAC7miYYr4R2W1Qnp3BPpJ8ZX9FZzExV4gOA+fejcQ=;
	h=To:Subject:From:Message-Id:Date; b=ei0AOUBwjc3dQuASkDinpHlbpHn12pkFLqpR/NFyT7GzQYXxBMh3QzqbfSTrWVQgoNbr9BHHhioUJYWgoaUvEwddf3D6xccK3ZT0M3lEgGVkTio0AcOfluros9rV9HKWCgJlCyMrN4HeE8lVVs7ziI5jRbTWoUP2UaE74q292Ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cstqHFyj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cstqHFyj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A304AC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753909793;
	bh=ZZAC7miYYr4R2W1Qnp3BPpJ8ZX9FZzExV4gOA+fejcQ=;
	h=To:Subject:From:Date:From;
	b=cstqHFyjKsYDwvHw53w+HwhbP7LB8MOlNklBndHUJAGa+a5MBNThVDsCPM+myGxpS
	 Q05buE/aBCYVlw8SQwKoqQuYNRVD03bvMFBzc61rRNjs6kVTRuQrEBjIqUtDfRHm9l
	 WL3MRQiwz/pvU+lVmPQKljF44UtehecwYD7NkKpYj9zo1a39sr8ZN/NBMnX0zP96P3
	 8InCYbJvNlBVIXtKUWIaS0rAiX9y+rnmwEgPKmGxz4HbBjfhyUGpSyOrikpHQcmASQ
	 JX5VG/qOgIEilqs1Ac/A96EtW5+Z/YdLCwUmD4gco/6WIN7aq1DaYFTf7U6jECe/sR
	 iXHFp9lxbbb8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906A8C83F26
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175390979358.1727.12907694970341991802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dbdd82180f8945d4eada01a26b0ea8f2ef84654ab25b67e36b971426c45fbd0
Date: Wed, 30 Jul 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753909793
