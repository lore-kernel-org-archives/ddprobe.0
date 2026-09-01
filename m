Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526A442AF82
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788255034; cv=none; b=JU+kqATalAqP65MGXha/u7V0h5zwZwZqedvMcOm0cV0so+/N+ZB9P9Nj0JXo8Mo+/BaeZYQCKXd54g08TUI9wiYu36nQlY+rdugZ3iR6CT979B0ssMFECe/2gXd0G5LClmXp6AHyHTynxL3GHsVHNhVi+uk2Q9+noatkCn+Sw08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788255034; c=relaxed/simple;
	bh=eSrBpxyY64YYC0+iNnm938gjZwTRe1B48LnKM7oOsl4=;
	h=To:Subject:From:Message-Id:Date; b=IeMFYvOzNZ0kHjggT7HOvZsFBLx3owlPLtsoXTkVfYPpCBS3BeblgLeYSOYpg24d/GpplQQRSIRh4+pouOTLbFwvDeBwKtd9xYTBxGZV7Uedd1AaEz8G3KLWiI8GHSP2ixt5nMsOR8cKNQimWAMCj8iO0E7Rbyx1XLEakHSKDO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cs2ZdHru; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cs2ZdHru"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B45C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788255033;
	bh=eSrBpxyY64YYC0+iNnm938gjZwTRe1B48LnKM7oOsl4=;
	h=To:Subject:From:Date:From;
	b=cs2ZdHrutItR7VE9wgK/AiH9A23m5r+VVXaa3+GcXUijt63kSmO3dYHEs7usLTg0e
	 yecnNCmI3FKHSs/PNStsTyit2qmhQW9CTagRWxbbL8PX063xMIJngPdsKdnvRvIc01
	 eLt+SFt63acjCUySiCdDqbSimkZ3mWJFy2C+uGt57y8wVy0yEeOCGarNj0a3O0QuE6
	 j7C3UExJ3GsBsiYcTYds8rk9c0DmH3DvpuoYbbuAcn3awvB25MsKF9L2E9g0RnXTXM
	 ssbds9idfmQq5ibhUuMCtMQ6ZNaq5vtUTxhmZzNMMYopaL9EbZ7Bf2hgCKWAaaD0N9
	 pHoclVNXTRdAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACED4C624C6
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178825503369.15455.3278258048852012981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b445b99130898c7f36c03f639a83022655e387b3c39b117fbd3ee95f29c6cbab
Date: Tue, 01 Sep 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788255033
