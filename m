Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D28851BBBF7
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 17:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741024733; cv=none; b=orUj/7TgdpZQvqs82ll4e1DM3lrg+tgI27EKbw7xA/y4ZMSOIOM8erlmCj714H3TZmjO1wRdeVtP9LTxWEePKG6M/foY1MwM46seCIMHXvajcNuS/t6rTgeV6CQALUdeMSVqqHd/em/LyZAHtEYlx3J9Kavf6mDOeTd3QtwEVvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741024733; c=relaxed/simple;
	bh=hiZSf2z+bFklI6uaPqebI9pie4xYFFzcDi1Z0OMNnAU=;
	h=To:Subject:From:Message-Id:Date; b=J9xrSV4YMRoPUZwOYPkTtxTrAZsFLbHlye2hhSt9GpdIK/I6KIoWRcNinD71xyzvlkypAQ5Y1Q/aTLgn2wDQsYMvFwoETczK7vOhoOGHtkJ7L73McFUwb6jdJOzgvFPpl5rdiHFTXQ8j6JIbS1RSoi9MU5l2b0aDRc7WpJq83/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BIt/5GT/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BIt/5GT/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B46CCC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 17:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741024733;
	bh=hiZSf2z+bFklI6uaPqebI9pie4xYFFzcDi1Z0OMNnAU=;
	h=To:Subject:From:Date:From;
	b=BIt/5GT/J7Tx/vsEPpZ2CKFVKcHIKJJQt7tef4ZaCnnsL9Eek2vbCzZl7ZTA7GNXE
	 7M/XnwNmv2AM+1KGqtzBlFLlqLcgqhZs6ExRLYN2v8MODhZVC9MmjIRRaysMWoCx77
	 LirS9X5I46oCMQuPMVLEF3JlB8swx5zJvENSmCt1zBZxEnyUdejAzaZNs+zAi5Bb7P
	 EvOpel0hC9TbVWTy6WYk5sTkLSbuEKWb103uYYl76nCX2dV97vIljXoFEyw4IbtYLN
	 gDPdwM8iG4sT+DcppGBmK4GLkqy/MCm4GZa8rybdIwrnAqbu8k12eMWt3m7pdKmFPx
	 6XwsndxCHwNuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2331C282D2
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 17:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174102473365.31229.14629924417244610959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eefac12105a7d4d9d9ffa9efeeb50cc25ca3e28c6ffdf072ddadbd3ca57b1d02
Date: Mon, 03 Mar 2025 17:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741024733
