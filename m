Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287861EBA14
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759216794; cv=none; b=BFcVHszcLnBLOaUExeH7kcSpOKb1G8btYf2BaJQJGebow4vNqTEch0oTMffu/Upq86YQ3UR3zT5wpWYLAIdVr5SSAXsTZZCkzHdt6MKiU4nmVChuETKDHUmKDeeuWkmlRwXAtho5ytdI1O74HLwJ/4O0Qj37Ii4Z+P5qBECqA2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759216794; c=relaxed/simple;
	bh=EfcGH7HTsKCbUCBzzMe6htoKRcEccdiW8K29MllnVm0=;
	h=To:Subject:From:Message-Id:Date; b=BWCt939AM2eclmW7gptk+3XiC7muu3a3BP0fDysuFyKUvSu8vsuERIfiIwxDZVlUzHJTSgMlErQ7C9hpmD+KFGxnnP86W4xtlZZT+m6ZXQZm1Pl3OirSEk0esc0LJqtd+OLaa+rRyUuh2OcqUvEKBCX+y2gIhVfqpChkDBjMxSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nXW7Is1s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nXW7Is1s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30F6C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759216793;
	bh=EfcGH7HTsKCbUCBzzMe6htoKRcEccdiW8K29MllnVm0=;
	h=To:Subject:From:Date:From;
	b=nXW7Is1sAq3A/zIQUKtjg6sWCq7DjPgDwbvkoiueWLcqLEfaAaAYNg9cUhSU9z6p/
	 NOjE0dJqVouixK/Xc9P9zVyQIFpE8NJDHNxR/DBbOCuGFG88sZcSrjy7bKGtkup22q
	 fySF5fvhNqXDzeW2ADUc1MTL4sQkXpHPYOlHd1LoHBpCrjwg0Xu/AbFhTbDU0cXEVp
	 0doxvvYgfWVGdU8aLzqIEcs8ZSiBG53dtFLCRbURzhnE5Ed68a6q4EPdSHo/0nyKBs
	 u3vlRfGv2YwQNxhdvow8uQ7k5kBvSZzqyCkI4PO4hIAKftpRNqpPmgT4xbeRKiWGX/
	 YkUaFaUiGLlPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91464CAC5B9
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175921679358.11953.6093130404989721648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a08159d70563e1a06e6e7b54af6d50e0c82aca3025200590ee7e0e10ca19b4c0
Date: Tue, 30 Sep 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759216793
