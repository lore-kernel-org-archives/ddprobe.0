Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358B739FF3
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 12:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717158263; cv=none; b=ISj89+NzMnNyzIXfSyNf2kA74S6uTyYeC4dzezQjhvqF7tR5qaAW/0Zkjw6O41PDDIUDdmye8C5cyHSndTLPFnjN6zSyXD8EjaHTC56GOKMd/C/IaYF0SfaQGpD89cY/7h7WzzfpIyUoBTBJng1kwK24J0+MkDZyHBe2djMcl5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717158263; c=relaxed/simple;
	bh=zaxuTLBP5ekLNfM33vqkRdvkelCF2uEo4BLA6QxiQkw=;
	h=To:Subject:From:Message-Id:Date; b=Oys/1mGil89YuniC3xmKR7HfxKQYeLGvhJKLS+JRGH51TteSn4qBel/0w/OHgyJn8QmJg5ZTpN8WJ8P81Af6GA5Qyc5YT3vmhkAigtDAXRTylykBwVZOqqqpHbFF3FJsOYkX3OIJ6CiapgRuYb0hZfQzdrmmzdwpjmsvM5yZ5T4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZaj5GV2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZaj5GV2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1480C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 12:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717158262;
	bh=zaxuTLBP5ekLNfM33vqkRdvkelCF2uEo4BLA6QxiQkw=;
	h=To:Subject:From:Date:From;
	b=VZaj5GV28rjz1sptNsTNwBf8RMBrnN6GU7GW0JP1axrF8muNV879KhMyxIFCk8ZGb
	 7fl3advmVb9IZXob7YkzWD8d/7WhlWXnuTuZusKvMw107B9TOkFtSulACcanVyNqM4
	 DSzam3SSP9gciehJV1HxZri3R68mpMj6+bs4YnD+c6tXDhvUpFxZ3eXUZwRlsrFtLU
	 DOZnLqCLq2djGlt0XaBybxLtJinnbu8X9KCtXVd5v7NZqbROa82W0bDOldxefANeIj
	 p4e1Y8RELz7tO2ZUiONd8Eb1JCLLpCNBXTNo8dTtdmPKp38uKNuYaaM+zvtw9Vh06Q
	 WhEFoY/rfHDTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB43EC25B7E
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 12:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171715826275.21996.5086975098752601832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bda65573f2f77fdead7603d116e1383ccd1c499411c79d9288bbf82cfa4539e7
Date: Fri, 31 May 2024 12:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717158262
