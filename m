Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480E72ECD20
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758713394; cv=none; b=bcmNEDnbvwzDLG/Ulwv7OuTBSeZECQvJ1R/WTmhAFoYYHNqmiUCwIJdvSHg3C7jwZzC8HPsw2oWlb3hNcG8h71eOGk/4gQFZra8oXtHc8nxExYVTRvM7nAHtQ41F/9rE3Wnlxqgv0Hdfna7cSnsVR1ZOKx/Bsrfurrk5APbRx18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758713394; c=relaxed/simple;
	bh=Y+HqseTHhqVyA8oTfgpsBQJOWftslt2KONHPUNvtXjA=;
	h=To:Subject:From:Message-Id:Date; b=C4D6DdkooQhvkkj2ZQgZdOFWUywlRZT863u5NnhbJN0dK0or9/HGGlSU44jAeOD2lXGQO0BCNDPVXZnhBq5YMdbMP8EjTl9ZXXmHbT2nfxLeKVMGRtm/bEEdnjtniCtYONM/cDLOG+vcl9vsRaXTEuvKCoVKWE/nTUpD3stLob8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o4ts/A/q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o4ts/A/q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36BDC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758713393;
	bh=Y+HqseTHhqVyA8oTfgpsBQJOWftslt2KONHPUNvtXjA=;
	h=To:Subject:From:Date:From;
	b=o4ts/A/qj/kHi+hwc9M+9Oy3+v+KAsguJIF1wSg0JXpv3/1M6IlnBpHZpK2Hi3WjF
	 JO7asAQIa0b+xPC+QgR5arbD8h0xuyEsEKA6Ipm3kbWzE1yb9cC8KZcroJFPR/AG+B
	 4DYSk2KlZNZpuQXY77fDhyr6fA7SXcDgHSrjtpqi3Tl5up6qgv1tepIMmIHhqZBf3+
	 dzB5KA/LJ6+QQeE9uKxtUJlJH7FNvQsDU9ZxqaYC1f+khRO7W2oeerQShDr5hMG+Zh
	 Ym3SlVdkRI7gEKGADrhUKPYoluld7ZbIouqCLOFkpFhgDQ3bxmYQDXsBED0XNAcSM7
	 MVvg68i38XdXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A88CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175871339358.16177.3670139581617082905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d34dc1443856c9af4afbea00443462a58ab9bb163251de478d52433ce54435fa
Date: Wed, 24 Sep 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758713393
