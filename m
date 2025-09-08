Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7DA1E8324
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757358594; cv=none; b=AEIPXkDqd7zRYxFWXZxdIC9pcuv1OA1bheR28HN67bTqKQreYnlE5xKmgTHs8VI5+gzOW9ktITzsr34i4Am2aqnwJCYAOBdE9pB8bimXIywoWu/U81yRGQ7eb84waWWV7v5t41JTJTCBEsWWvK5Z/BFP6RyrkYU+6+NUCr3d91U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757358594; c=relaxed/simple;
	bh=Kbvr7M0NjCuU+jeKLcNI/GZSAaRgFWk+u4t+wdra9rw=;
	h=To:Subject:From:Message-Id:Date; b=LvRlhR5knYcE5ktXAbhbUXnq3IG191b+8+xMzgs4r5osh4bwuEr+UqMmy5tVw0pDU8vn3QHdBfQWK0jGYTSw+8+pVCA6b/jGf5aJ2dNv/bklOzG7mvx1Jun39TqAvQ/gejxXXhxlx5ZPfDPXA6FAwDKc/KN8ukEwlzx9Izw3mPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LKHkWppI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LKHkWppI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9C3C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757358593;
	bh=Kbvr7M0NjCuU+jeKLcNI/GZSAaRgFWk+u4t+wdra9rw=;
	h=To:Subject:From:Date:From;
	b=LKHkWppIBR1SXgsuYdGDEVL+7JLjt1cstkF7/Nnq/s8OCT9FOkbdsgVPvJ72qU387
	 n+meexhWzONcWixEJEcILiySIpka7vS32QC4FzELvpPiVNGZrLr2yzIPF7/HSDVatl
	 Nu/8hdAO+A5A5+8AB6TruJawJ243Tr9u9VLOITlS5yprpvKsRINPnABj978Me3xpwr
	 aLt4L+Hx6Jj6oS9LWLUua6HHFsv/8qh4fVwI7S51gQxCyl0aoIqudvzgfDF5DRbXvM
	 dTrCODOWDjtY6wE6HAhXvqfXJGZgf7hlugE+AOm1aMw6UMHtCH84m8HRo0ww8fMM7V
	 X0lM71+VIEaFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91712CA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175735859358.25110.16632794002096561654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b78fd65b21cbe0397f94fe6e2b8f9dec87ee1fc05f8f669e4ebd470437e4512
Date: Mon, 08 Sep 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757358593
