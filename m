Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8792D0C95
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753359594; cv=none; b=mXJRMhwBnOxqAmmiitdZb00HNufXJ6L2FDwy+wSYPYvaLOInaBUlDfEB3tTGp/00+9DZtoEgek3r7abN4axyvoZ+k5qiFBI1U8tXJyyxKo0m/hC0W+Cg0cdMeU3nRwAFCQ/dFi4hL+L3gJnotusBppXXhOz5nIOBGuIjLR9iLXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753359594; c=relaxed/simple;
	bh=X5Bbxot39M2ThIWLfJEVx0LJjOmSzoh9m+UsQE+bLRg=;
	h=To:Subject:From:Message-Id:Date; b=vEu80snlpQyONHWRISikGg1rJ+SpDiphOfhKXkCY1yTAiGAso1/qcU8C/bakVJBmgmiC5Mh3OlG6kPFYMuodGNfEuKgCPBgja0E6zouVpTZNLcv7WJuvc91PUQP9MAYP2jJIXkSLRgbSjAF10YlOv2iO1a3Tm6/eqkByym0+qYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rif2EmYD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rif2EmYD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA79C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753359593;
	bh=X5Bbxot39M2ThIWLfJEVx0LJjOmSzoh9m+UsQE+bLRg=;
	h=To:Subject:From:Date:From;
	b=rif2EmYDCl/f4v/GqRwG9BFlEmDMZp+xo5K2FNunkKK8e6bFuL6Y4PSThRvNOWogm
	 fZeXWNMdj5ho0d/weaNmKQ61Wjz9k0qdBCmIePAU8kmOhppZdTQACkarU3b+dX9Ey2
	 vKdIDNLpt9bsjFNCbEht0nIPi0R1BUjOus1jnq0v2w3RYGA0UdbCDG2uUvH60zmB13
	 YURvpqvkKXHz+kQPDMvUrUWTEyz2bhBC4ruLPYduzn0QEvNoA2LeIXLUOhy9XyZtcW
	 cJSdE0ds3HzBc97qqufNuX8lBbYWKPahkpxf8MHwDEg9UlMQuP30RSo/Zv1s8xaZRf
	 QWj3ulhfLpwrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E789C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175335959357.32672.4790320924789990876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cd2cc24a4a1b473eb3a375c9d831b2341e4d83d25c727f33f074ee0f1ee6951
Date: Thu, 24 Jul 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753359593
