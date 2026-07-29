Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E1D3B058F
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785337234; cv=none; b=eGq/YJKfeReabfw1iWmkh/ZEmw96be9xFv4UnWyG24Mhzw9JlVPoJobJ0/egWz3wLsh3OMkpNgbPvbogyCNZ+SBTYoNbCkCF3HQhXNNGq7JUqcowvENJ9uc3rugPgpI9b7+nX3rrx05YA5myT71UyiE8A0Wr4U85BLtbo7js5+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785337234; c=relaxed/simple;
	bh=LRaWRkN3i8i0NY/O//FauVJdrRDmdgbsmBIPv/66x1c=;
	h=To:Subject:From:Message-Id:Date; b=JJPPbAE448GSBh3x/umysCUlFKMQIHg0I+wNQPvRXqml3pa0YRPk/v0XVyVySJ+qklvecIlHqN+gL5872Y6FhqVqIqngxdE7C5gzj3fs2TWatzbwiGi0JzvhjuJTgwTuTryuhmWcf0LzCA+P+6J5U+XRQrH9M9OVLduVk9zN7+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GCqySa4U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GCqySa4U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE656C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785337233;
	bh=LRaWRkN3i8i0NY/O//FauVJdrRDmdgbsmBIPv/66x1c=;
	h=To:Subject:From:Date:From;
	b=GCqySa4U66W9Q9Jr6ymQwnmzrcfoAuoL0vuGlTa5DsfTvZD5lIdVH7Wv8AO1qJ4dp
	 W86edmy7jUiR57mTS+hl+b4xd/FmIV05OhBqqNoeLQVIQ9QkQXipn5EcgwYVPYNBPB
	 c/uD8/PHhiTbSTqrG0qlOlJDLooOkG0LgtD0Toy2n5ttMbHC2z/J6D/KtpROJ4UEPh
	 R4IQAZ9njO7/PV9nYleT15aQXOJy37u1IsqxObThEjxhqSwlPqS3mIxMa5NGg14f3j
	 EcQKpgVW83bht6+kiyFY0PXrV6L5uIJlAndyZyOBMAHB715PZI8Sg19uzmiK/3k/cr
	 PMuMP9LovRoFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8388C54F51
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178533723368.13927.10434522582618759597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60bc13b0fe87a6815fa05a93f796f71abca3a8b515a9598484ba22c6ce0d886f
Date: Wed, 29 Jul 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785337233
