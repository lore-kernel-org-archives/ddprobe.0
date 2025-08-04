Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251A52E371F
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754278194; cv=none; b=NZO4gbCppREIeRxiBvoVaIY+WUEZBe7VijWDFqYWuLO/5N66FGCLc3XWzNor8v9bx1kvanQyEjJ52BjqwWExRBTY7XLQoA5/s7x24h8CGPSO3+K4jQVIF/XnWKXqyAJOyUt8l8vi5Eqx0/fDo0tPfFzeXCaE0a9K6GYO0FImS/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754278194; c=relaxed/simple;
	bh=QOr2IXpH4+VojsKVFVVZgm6y4BYCqakQM3p1N/qeJQg=;
	h=To:Subject:From:Message-Id:Date; b=FrnNIrhzUaKZy4teb3XZpzrNedGupI02sYdf1coH9GvKlR8sRSwY2uyvqEUFb+NHYZy1exzguu4LqmYbiNhHUG76lW95cXjy+iLZRq5f7Cb7gHNijfG81vSeEkk+KppPky/1M/jksMTc9AHZ3gyY83PK1W21kTVf7ZZfTc1pUZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c0xG5WkZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c0xG5WkZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6692C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754278193;
	bh=QOr2IXpH4+VojsKVFVVZgm6y4BYCqakQM3p1N/qeJQg=;
	h=To:Subject:From:Date:From;
	b=c0xG5WkZJ5QLWCcBDmRCQUD285hJ52VDcEfTFk1YXuj0VSAgFeYEhA00A5E9RQ7hx
	 zQuLYVMKrLtynxPUcjv2iavaXJd8woD0m9TqDBBgxNPNUzMmhBHI0c5OLltR5B2cUo
	 6EnXrsXvliFiI2HAU5gTOIo6PCc2NK5bzoDkdbaPB3R3E0n5F0LPJrveFmStMlM2+Z
	 lxzy+RvfwOdfuTRXCzXTf5hwV4SdDnmehCTM56TpnZF1/7WIfJTKNWzVXsPdtJkQCl
	 KjGdt1o+zKvWOlwi+u6zrCmA5ZdmKkuyZWq6wVBHTrWvq6MvuOJMaiHfeNsPtPY890
	 7M3zx1YPi+7yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F17C87FDA
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175427819357.18221.5378946147343770713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 812ad1158ed7134fede9fee193c2759eede71342d684b91f26460122037d3326
Date: Mon, 04 Aug 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754278193
