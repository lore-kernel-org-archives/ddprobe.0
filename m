Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0FB27E1DC
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 14:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783606114; cv=none; b=Y+8fE2XX8642lFH0gpzYEbGHCnDP6/3T5UjtGeJKCXCRlhBKSRbnMzma3JHVllDdW9fgihiwHv2ggtG0KUWLsGn8/RQRJjhZv1keI/13DzO8WCNq2kDoX1ftTM4bqm/H8HSju3c+3tiHiCumaOe/iJOcoaRUGtLwVF0PLevL9U8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783606114; c=relaxed/simple;
	bh=P3YeIKGMZaUB6sIzzCPOHhQwzcXYd+P6RBIboiVb4Xc=;
	h=To:Subject:From:Message-Id:Date; b=qz4GWKcE9cJCqKfBbd9uZtSSGxzzLnPdtoXpHTeN2LjAiyiI/Ud8pBXI5yQ1QmoR0157D4JyH0oO0YhpKGzND3/Lei8Z1D+tkPGoC86guu3q4+sMxtJ43/HdKwt9txNhLdx9amNfff5IdtRKz3XiQ5pCd5RTs8Fbj/sw3djbCsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cxiS9lqX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cxiS9lqX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB7D8C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 14:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783606113;
	bh=P3YeIKGMZaUB6sIzzCPOHhQwzcXYd+P6RBIboiVb4Xc=;
	h=To:Subject:From:Date:From;
	b=cxiS9lqXRiR9oXq7luueM7S3saVYH281nw2rJR6WjMSEZnetOBPhjQZ/toclysMkW
	 0pi2GGqyZEr6UMa6OB+aMXT6haBetvDxiV9z5EcMKrx375Y7FMzfaX3OqvmXD3c/Kk
	 ecNL3blXJjSgxNtI27I7w6aTkfoIQFHte8Gau+QXfhQKt80UOP5OFdnZp4CIR+nGIA
	 rWBdaye1XcbA/X5PMjmyIjMUDAKkNgikLlL/PLRIC+uENdudsGPrNY2CGG5PBNTDAB
	 Jmmn9VkFEpyoJRjTxfhMgWhJj+UoovQh0aINQ6qQACt3/2yg9qfl+n+roEX60YQf8o
	 hfglfxpas+BzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8282C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 14:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178360611368.6409.1423411611868719031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dfd6b4ebb78c332ccc2a6de76d4001385a92eb3229f8ae94963293fd0e3ffd3
Date: Thu, 09 Jul 2026 14:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783606113
