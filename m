Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D85619C546
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 03:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775878054; cv=none; b=VAoXr5P0g1IEX2UN46VxXD7KPRVX09jVdJiu9RgV5Z7Vlj/fm+YAIlLSOnRkf/Pvue7XQIk4hPYbEjEi4rFXsaIAqozAobPOekQ+ocCKKtdwlxDxgz5HiHrEAOS4pfZFlI0ik62EtHaZq2TvCvQxww1Yhuo/aU9L7qCfq3d+F2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775878054; c=relaxed/simple;
	bh=owVSaL4pQ28Y5VHSInXMkym0p++DD+Aep7R7GjGGwog=;
	h=To:Subject:From:Message-Id:Date; b=ZjWwzSuFQ0RZU17TiG+D7rzvVtWQfIo3hXO6P4pJAQIxObSbfK9CEOYcsRwPyYNbWOsrWePMrN4jkcXyN9nedBoKZ23tkBGuUcbC9xCbTRoLgu98qavpHcoy09MiFDfxG5gNvWY+2edufZSWNailU12zuhjSh+FnG3x2x+GBOjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=foYXj6mr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="foYXj6mr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAAA3C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 03:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775878053;
	bh=owVSaL4pQ28Y5VHSInXMkym0p++DD+Aep7R7GjGGwog=;
	h=To:Subject:From:Date:From;
	b=foYXj6mrlDLm/csFy99vD7UMlYWtNGRCHGHMuSrFHnpy3ZnpnUnbzxR7oMwDB5bB7
	 D7uqDLZvYxdPuOgYmEp6m2wy8j2T4gLngayLdVW8379lE2RvnPvKGsvGJR/8A1urQN
	 bf4/EE1EyBwiJVqkVbZk0VfIb64+ed1ziDgeimuPtM90SukQl5yXFPoLNcPpNUnB6e
	 bsG+B/eyIUda05obnf2v6dGtS+KRVCcgvRFzC6BDiKEi9s6WcR5lTvTYp81bwKQKAJ
	 Jowx3zJqYXdyrBkWt9mq2Tc4vXlODbGjGUFZjZH/Bww8Z8G1fLm4VwnOwdj2twun4s
	 ivlhzZ9Sq3CBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FF5F45A10
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 03:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177587805368.17238.486899958827940080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 373ddc1715d842c3d721e4bdb6ee2de053834f2434f65b247482d7988f223b83
Date: Sat, 11 Apr 2026 03:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775878053
