Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389EB279335
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755730794; cv=none; b=mwOwTwqnZxX0mbKnU4yZ98kBk21xoFr16UUc4t0bfc+kAQZMVXN9RzSNwhbP0uX8lNTtWrkG+r/aohdglFHLB2EbG9NFo7GMnQVyCrJawl8zv5mlPOr7VdCF0V4N8wuEjuqAn+04ehtoPtyw39EuvEOnlbRiaTKHoBXgzxHs4PM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755730794; c=relaxed/simple;
	bh=wHTcp6S4NXc86qQDwLvyfwExLd5Im7wCkY871rxdwOg=;
	h=To:Subject:From:Message-Id:Date; b=KkDuZiQdjmE5zuf2aW64deTQUzcnLj4dxOf8JcaC175UszS09An6DgEcYZleatItKgjKvCu5EwzKqf+bY2VxQ0/e2RRK6YpvLfx79amXzJ617je5YLMpRT4YW11u78UoO4crZqc1k1GpVUAVDh9aI25QsZl3nqa17b2IK85CFSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQbL/xos; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jQbL/xos"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6059C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755730793;
	bh=wHTcp6S4NXc86qQDwLvyfwExLd5Im7wCkY871rxdwOg=;
	h=To:Subject:From:Date:From;
	b=jQbL/xos7BY1rz/bLLuyZp8/mLtvU6pgPMmlBzcHXEld5Fg2zUODcla3Qpnj4pFFJ
	 R/pknRe1HZLo4tLzz46rjBtgouaux6zVfI7h++wjdlN+U7nhfvj4/7kcMqpWTCVNpI
	 qSx+YflvjDryrqqNXaPUETbL4u9DivFnFBTHkKe37M2PKJX22lIH7REg5QZ6XZfFkk
	 xitRuhD9Iv10ETs+m4NkCroeD+tDe6motu4Ecfh8TmOqsXQFvNBSBCp8a5usGyEV2a
	 Obg02FiMlNwgMgnyhWtumwrNyzxJsaC99ExZQpIsVqbZPabQvMi5qbk76VY5ERIwUL
	 oANr+lEjglMTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C29CA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175573079357.12099.12319305403252873192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2130bcccaf0fb0f89090891943e353e4e31b6e28029c6df935ad7a7defd9dfb
Date: Wed, 20 Aug 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755730793
