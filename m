Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400272E7623
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 04:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781153194; cv=none; b=Et+nthPrxNhIDJQconDjw1d3zpP3owTd09vqwZERV5w+1tHZsypapG+AdWjRblKNQL1A/jcJf8K9XaEZWA+29rPxeWXBZb5lpDT7KD+IhDiDSFwG9rBYaign6zxm+VHCDyNiU0jTtavM2scrIamEeTUTIgkIcYJHtzIWViLKkhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781153194; c=relaxed/simple;
	bh=Emfk+AbUn0DEsaOxeXtix7yYEz+1cI7YcFIwB1HlWRw=;
	h=To:Subject:From:Message-Id:Date; b=dMi6rcT/bNl1SXLmQL2BpPH56jTx+LxFtQMqvbnrpoq1vulKgfVXVhig3Vw0s0VyxldbUKjn2XYc45oMK+5coh3fhHIY1S8MVYFK04b7LzZ4BS1iP22SjCveznm73Tvo3aGnrhnktffPTW3lBURQMQkBwwLZRnVn8dxDOfJgFv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fKHujqEY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fKHujqEY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9273C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 04:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781153193;
	bh=Emfk+AbUn0DEsaOxeXtix7yYEz+1cI7YcFIwB1HlWRw=;
	h=To:Subject:From:Date:From;
	b=fKHujqEYTwPOQe8IqLMtBPKN+6041O+vzwSHPQAPVCa1cl9tXtRjpFmUKcxCtYXhR
	 orr2O4Y3rEJDM4Lrb5NRf7Z6C0PoJzDtHP0qy3kJnFdld6DZRRNJDdSKKQz8dgqvcA
	 X73TSYKy4FMsTj9gqdVqf6Jag6Lx+QEu/D+vtku8VlEloJywMZN7sm2P1UXFqjHVds
	 0BuLSBmyY4+sTdVZe7HC7tx9vofdV79Fj/Q2myYFrACcTdrfYl8k/lw7fW2kUlRFzm
	 FjBW4S67jpHjfKrzVasrfPbL/2B2C43aW8xzn1fFHiONWSYN5sWXdH3jiLPOE5P2sj
	 Adxw6VkjywPGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7BCCD8C9D
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 04:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178115319368.21430.1087556649962477475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c150b025fd97d936b72cc0f82e03f436808015de4c44b4356e2418c1966caa62
Date: Thu, 11 Jun 2026 04:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781153193
