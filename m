Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8D03A16BE
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 11:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778671234; cv=none; b=ZIkiZ6rLXdvI11yhQOOi3i77fD9WEXzufsOu4DyTeD2hNtQ9w9lfToCiYnjmAetLxA931H7n0dPYbcQcGW/DAkhaHxjhE3tmneX2KUqM1kV5ZuP6X7waJBnQYvbAk+InO2NUtggl5Qu6LqABX36fkr+k8t2VVqpqmewQ0A6MGfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778671234; c=relaxed/simple;
	bh=A1SXVx/jnkTh3VHtnfJsSHywW+NE4dPIYzVA/gumbQM=;
	h=To:Subject:From:Message-Id:Date; b=pslCdev8qJ111Lj9IddlFAff34rnLJK6xWfOHS0YRObXU7x3shgakshFg3esegyi9iXOp+9kyrLSWCuG6XT0jf8QLP/rroxw9ZGtc5+J2zWyLRPmOfEwpc+XfBzR28ySxTnAizfUUFrwwKWvXOv78QQMNF7/T8HJrG9PJZ0Rwac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J4m7WN4v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J4m7WN4v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC3D1C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778671233;
	bh=A1SXVx/jnkTh3VHtnfJsSHywW+NE4dPIYzVA/gumbQM=;
	h=To:Subject:From:Date:From;
	b=J4m7WN4vb3fUjsI+27N2p1o+dwc4+eOzV1qL7yGuDmV86oxn6qXGX0lnZReI3HnJQ
	 O90L3idttgFcHxmzEKtPinARocnMOigfGqRuKrVEKcCjT3trizTWrcnSlTReMDqPIy
	 Csf3bsO0PWWudPVSzfzxHWX68RAYbLQvCBvnaM5Ln86l7K0qli9Od9N7KY5om2glly
	 eN55jYkqXKmn26RVv7wsESEjFPMOZgE91gPC6MqQgQEJqCkiylEjFzdVUxqt3ZOHug
	 pk2jgdypnK6lM/OhNFD560dCVGBqftDSSJloYGX/In92hFlKGk02MBxksVkOGB+ZbH
	 KZucgKd0e1v4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7D4CD4F35
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177867123368.14523.4969289753571488768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0915e6fbe7d552c7e2b72fda06c3f343bc11a15cb9c926319383b246883ae2d1
Date: Wed, 13 May 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778671233
