Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40DC313777E
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 10:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763892114; cv=none; b=lq3M6WFabKu6k5t9kRIvOh8usIgNDzuZUycwrPyCveU2SuDtPCjaStW8MYI4MYhKstI+ljUWSBE5y2CVfnI5hVsgSXvHyLfzpZLzuPzdvGOEP8m5Pd2o95jvTOq41emsjE1/R54U2Z9yzp7BNs+QLB0NObLWncHGs1ULiQ8azR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763892114; c=relaxed/simple;
	bh=FPsom3OUZo+5Usk6KtxRNxRUB5JTrvq/CPYee0CUl0Y=;
	h=To:Subject:From:Message-Id:Date; b=lOPYVymXUBzWLdMw6J/Ol35FRl3CLfduEpna7JdABrE6c155jiKsDI6cUL1WEFDUeE4DAp857+4EiR/GxBC5O+8X4az0jcvk4srOcCk+2qdLGAJTtGZCED4BrffqyaBR/cMtWqOg8i66oY9wF78+gGN4J3nWmHspmv8wshhmbFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YRdarFWX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YRdarFWX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2515C116B1
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 10:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763892113;
	bh=FPsom3OUZo+5Usk6KtxRNxRUB5JTrvq/CPYee0CUl0Y=;
	h=To:Subject:From:Date:From;
	b=YRdarFWXX/l9JgtaPN6ZNR//T3odxCjlJxo89x6H/N7aXu3HaNw4vnHnADDQFbQbZ
	 rbtG0qp3DHZXo9h36rTKDn3D87kQxHLSbRZG7zM23k23UaGcNkfij+vX7LVOrSapHR
	 3UlAdqi+980HtWajTakyW0ZE4+3ThqCDhkGYcLqYevMxZpt/awv5SMuhBQ7l8bqrT1
	 w+Jn2EsoP2oFq9WdZ1bWi6aUFyMSOBhmSitjfteX5kljQo2khHE73qXG2imENty9bY
	 imHaSEhfcJAfqbjBdO7aUwQ3hGiayjHz7nN/2WT7GbOQwnDuh1eoUp56a7hVPUxosq
	 vmEWqW7PVNSeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E41CFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 10:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176389211359.18986.7311335759968860339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d1feeb2ba0e3a4b60791f5f884d2dcf3eb952adbc6c719313ffb8859aee60c4
Date: Sun, 23 Nov 2025 10:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763892113
