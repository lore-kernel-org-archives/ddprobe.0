Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE0C918FDDE
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 13:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764251573; cv=none; b=VDH0EeXoS927LY8qhNmK/DQNgb5w0Ez3pCRLsJneBPeXmaKD+kEKKXTXzKk84rVf0Y+54NIffw3ok2hPaC2JVV2Z6sEdll1LnZ3qmV5/8z6XKcQcmzfsgoRXBjcoylmCmMZG65m+grO8fjh0YgfE36u3sD+0yZmZQrQ9pMUgLdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764251573; c=relaxed/simple;
	bh=MpK90HxIS53AzwjcvjO/oh7jzJ/l9htgvPVBVfLz8k4=;
	h=To:Subject:From:Message-Id:Date; b=mTiQ6oeWurcY5NIurojB8z85NmAZP6HXLi3YQPzOAg3dHMsZLUNizNuulclQlKbO2ARLBxSaBrxApgkfehp91pk0xBDZqr3svfKnPBwRCEF9mb5jCAkXXwnrAKfAotFBWN3OwcLnpiRHzHugeut0aF7VlOb027S/B8LeBcWlac4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QA4mTidg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QA4mTidg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3064C113D0
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 13:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764251573;
	bh=MpK90HxIS53AzwjcvjO/oh7jzJ/l9htgvPVBVfLz8k4=;
	h=To:Subject:From:Date:From;
	b=QA4mTidgJ35nz3uUgqNwcdXawu6mNQQ5xwkpOXttFmSIZa22fSh6eQmb+IvRBdOyD
	 aqdvglNvDvMTLZgsEgucOzSndEftn2Pc8Oe2/c2UgX4fi2HkkLFenHU7S2W743PCpw
	 yNKBTSVGC7DA8SorbkkEFSrmoypa+Xz1o5IaOUGf24s4LwAXqk2V3cZrg2YC0f9ws/
	 9npdjJMapB5nyardDRjcTS1mmUoQoeBUq/tAL7lPX4sibG5xehhEsLmbix26UtHx3r
	 e96b4aAWB+0umkh/CGSt3GEHUz4TB7bvTrnHfpBJJqiEmVa/REpoGYjyJMNLImmsFn
	 62ag3dzmKPY6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A6DD11183
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 13:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176425157359.27058.13439871219740454283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8ce4a2fa25b379f896eb6059ffcb3c3e59a58d8d6a98afc7a783116761b0342
Date: Thu, 27 Nov 2025 13:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764251573
