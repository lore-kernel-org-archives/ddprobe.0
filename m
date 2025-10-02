Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CEFF22D78A
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759420194; cv=none; b=Lc2xJSWms6mi26Za0oLFBS1S4vzji1tjN0LZCw9uic/2ssIHEQJX0vRF/EsqUO4K1YevpHKhb0f7s74A4D7ZKRjQVqd9yY8KYVugIH9YGwv/9GHARMv979zxM0vhsf8vhh5RngYs+sidSN37gcWHEwlG7E7BsNWBi7FjSabOA2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759420194; c=relaxed/simple;
	bh=e0l0omzdFJK/k0+D3P2EqRlxik51nUTO8ugiN7YjIFg=;
	h=To:Subject:From:Message-Id:Date; b=P00t2V2tuqNY1YJT428bBecxT3H9fc6xQIT30lZK7zmkjnqIASQ0oNxP62EQArn3C3cg0yp5JEpcmMlE6Z7qWQUqcACf78OuvXXNZAZo0qpXpE5EJrt2g7zZSW91NLFE27t/o8KWeRaKCNkzQip5UYhMgIHfCN3pU+5y6onK7kA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n+uR9pf/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n+uR9pf/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D207C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759420193;
	bh=e0l0omzdFJK/k0+D3P2EqRlxik51nUTO8ugiN7YjIFg=;
	h=To:Subject:From:Date:From;
	b=n+uR9pf/L1ejXcssdYzVA8bWX2MWd81kaGS2YDVwuLvEVTdzd+rVJD07NgKIFuoh2
	 yVhjmvgl2LbENbFWHz6hH8+wNDtQw43jnMaFv48I3T9NBANl62VzhGBS/vHxZtWzKg
	 XUWIVWFlRuj+byae97l+z9EQxBcUgvNmFS8mE2iAN/9+LoK+C+o7sKwsF8rNkaHVEu
	 mLeuXZSY46pk59HdbDReY9ENJz5DOlcZgC+2/Fo7b9gnVXGr8YuPVAGWvy15iADb9o
	 DPT8KFwZ1D/GrcHK4nYNw8Ne9YCf5aUALOJM5duzCbekgjIIhQHvk863wnk8swtTPr
	 JtsyxOhmRLR2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F60CCAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175942019358.18067.8171213977846466693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7babab7990704feefed4d2ad0324ff8f8696c6bd479d0d132626bca0e4a718b
Date: Thu, 02 Oct 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759420193
