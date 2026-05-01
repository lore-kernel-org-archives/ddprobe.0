Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C60E14A4F0
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 03:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777607854; cv=none; b=lbEvO7A0GKt90LLLv8THHdkWPvxVML/hlT7PZMxRP5+pxCOlivnV1pWtkcHy1nWnLYK0JU/pqMzxT8RhtnLLfL9ZwEWsPLivgQx7ZhLfW/rHKqb3SKwXRhvqgd/yWn+5Jdumy1+wYmGt/jZTklm/Cc9Qsffqfa/5kQUgayo7UFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777607854; c=relaxed/simple;
	bh=wrBVSqwhHFntVpdvrq/lru+WGSYA9jl7ipNEL8X0v2M=;
	h=To:Subject:From:Message-Id:Date; b=kFkwp+nNSAOiqVqCwkprqJ7wcyKMuYVx6pBIf/n1fJj9SGkOpfOlr2lPDznx5auxhrIO++oYObILvE5NnUo9O/E2Pqy1LBIdnRYELDy7+96nDHwoukPzS65iyQKb4snJN8nOmRdhceyCkh7bWwi73qs+iiHv+hto73FDw3P+cd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K4XZcR/C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K4XZcR/C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF376C2BCB7
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 03:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777607853;
	bh=wrBVSqwhHFntVpdvrq/lru+WGSYA9jl7ipNEL8X0v2M=;
	h=To:Subject:From:Date:From;
	b=K4XZcR/CfJ8nEWA4kE63IdGk/NFtDxdUTQtu2LrkbnQZzc3EVxDz4Xp9Cxi6wWtMn
	 WFNMJ1Mz1f07fuCTKwxPpqs5OlTQuSgI5h+KilsvXuMjyflhDZqWp5BUM1wd4PWyVY
	 FR8og4/reinL+2NXxvGc1/UUNnxEVhNc/pFiqW4JwO2v2m8dwAv0Ba5V4bZD1OI42M
	 fdztd6mGTU3m86oQ6gCABcuPBVCRNVSJtc0gud6MOLNIUfMs9xFisxzNhDb1FsPAf4
	 MTQ6derKX0yQEhYZYF+ffVtEXZ4K+RNOa9E3zTM2oSM+lTD/8aEf+DyUUsv4nT1vbo
	 8h1K1D6u17Vsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8C6FF885A
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 03:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177760785368.4505.33051307135075491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5effb285570df0548f99f9e84d1947a07bc282ac174b0062a09b2e5a41afa32f
Date: Fri, 01 May 2026 03:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777607853
