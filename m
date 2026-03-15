Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147044502F
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773545694; cv=none; b=TeZR7H8ylNzmAoaXgLhnpfAFLy/afnjfkudPGbRtjbDgTQ4liDESgau1MfyZXpWqaWxIH+kBpOoatCLSGd7/5cITpm40d6aGLvzn2QHjJeEtLxEFXJE7p/O64juoZ1X19xm0NpA7GwNhNZOKYFY2YPFmA75lrIHAi1Q8yBj6mfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773545694; c=relaxed/simple;
	bh=krpi2HVWuIhLD9JnTTP638OTh86p8iCr84ay6VV+ejo=;
	h=To:Subject:From:Message-Id:Date; b=i3LKkF2EKmKj5vGCi5GFTwwODQCG1A9WxYSAClr9D5QqKjzIovwPhR63vJbvy8gtWwMJ7XLYC10+DfMGWk+o4v9+T8QUgNuw9zCuJqE1EA2IO6MVmsnD+c2VVCK26WhdMlVxsoO14mrVrRZWLRSM058FjVKMn54dzKLpRlWYtaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oUAvZNI+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oUAvZNI+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8319C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773545693;
	bh=krpi2HVWuIhLD9JnTTP638OTh86p8iCr84ay6VV+ejo=;
	h=To:Subject:From:Date:From;
	b=oUAvZNI+pMAbsSpSW5RrDqYp6Q3TdwNu+kDwoOXW6km6M1uHwk/NtmjpY/oEcOvmF
	 9tM6NGGrupc6iVr4OprUqXH6S2gIt/YTQ+4cFFuIC//14WhJbrm2Y5SV/lA4OwPmeD
	 QmT4Bmj57dqfTd65nmighwM8K6Cn1MoaMoRjr7i4BOuedD/JmsIfqd4C21bQaG+H01
	 UgtvmcPFcYVfu6vPrHKQ/21nOvCbK9TW3xqIOOY4x1uU9oA++QKXqZn1O5O65mPywV
	 NOJbRWOPr/XoPIx4gLE4OitcQn+boQJpcrS70w9khdqTy0Wyf+BqmBYfYQFknsFfpd
	 Odw5jCef84xCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9188BD58B08
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177354569357.23646.7485086570791756253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d3100c50aa04dedf53372d43835f4dbd1b6aa7b00a4c65e3e4100613a02b0f6
Date: Sun, 15 Mar 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773545693
