Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42DA0523A
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762735194; cv=none; b=a+ZxoMAnmeJ9Oru9whs7eU/eJ2jj+j+jNLjVX9bkW4wBtYdIlrohLjf30vWuIvPmasqOd2fiNWFIH0j2xEgHSHk+moKymiL2PK4+y087ylhe8ZEhHgb4sLF2++3ULIvgakFuujWyZK8yYVyDQHUvgODyfZAJH5SrL1PkK4RFTZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762735194; c=relaxed/simple;
	bh=SmhXtzsrwneGvJ9JcF8817u+NqdqecUsgzrfnD+ywqU=;
	h=To:Subject:From:Message-Id:Date; b=gJtaqfJZHh1jrC4j1kI4LmfAeG2AwOt0vYITOpIV52LtVkHQuBQ3wOqAzFQ6cb/ZthDsIx8L+3O+od95TOA4JKB7BxRNHNrklnn6xrqIf5vk6QeJ6SorDr0sGDAElXhKKklx2eAWdAGJdMmaCTaSA39AG4s6aGy+5pIdl/NmSFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UH3xS9mN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UH3xS9mN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1581C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762735193;
	bh=SmhXtzsrwneGvJ9JcF8817u+NqdqecUsgzrfnD+ywqU=;
	h=To:Subject:From:Date:From;
	b=UH3xS9mNfgre6jMor/KN1o7NsfqRr4mNv/9OWC8fCu6MUJusX+rfBDk9TgUoaic71
	 b6zpedAwKCX9dr8SrkpsCRIFFFvr8oxgckrDAjWmi21VQ4+YE/2RWwTLUJRv7GApQN
	 5f8jtVV4QcC4+F7SZZ4t6LOafe9fqmYVSzF3Znt5Y7+hD/8C9lat/yRKXnfaNczdSx
	 KzVqqU4w2cmhZOO+WkbR0Hx+rtiQ8eQl025SaAu9Fq+gXg/vRYVuRkCVSqNeXAo6oe
	 icB27wTUpL+ctuGGeiwWBfD0bEFTi92z1TIMY1FjYNj1eaRTw7uIMRj2pyeGtooP4E
	 6lkIhX4oM/pIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A11DDCCFA1A
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176273519363.22191.12052883113239716039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d9dd616b41fcb08176d84ee95967f1a384e18c13bfd66d0f36d5f19efce5811
Date: Mon, 10 Nov 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762735193
