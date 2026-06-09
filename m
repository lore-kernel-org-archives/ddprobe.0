Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46DD21EB5FD
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 00:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780965874; cv=none; b=u1IO3ZXV2n6mQPLvcYev6SVEfsZmrlTRAFDD7yl2KCK9lcAMVuD3J40aRqM46ooxNk5c1H1em9/QXNy37iT8RZIYcNDyKJjekM4zMlYmII8TzxZnAD1K01xwQTko+wAfYH+4qQFx0gUdyg7RljgFCBn/MbAfOxdvv5jt9xqB868=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780965874; c=relaxed/simple;
	bh=HkSADISk1uCKxVnJ5reMdikEk3KtRtCIgmOZzaILow4=;
	h=To:Subject:From:Message-Id:Date; b=GzvDpSTa1JyEoLWfmsQu5QKh0eWCq63fQj1lnRYYx/MCvWCrV6OS4Lqc8Sijl0xz64+AQeJwSaYX3LcMRft/gcFZvfopft3g98ls2c03BdeO9oef/VZb/WDjaZX/L3Xv63dP+4Z4Z+WgDVYBJeh5oCA+E5Y2XiofMbrLDloxgn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MFCDRNNp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MFCDRNNp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD670C2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 00:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780965873;
	bh=HkSADISk1uCKxVnJ5reMdikEk3KtRtCIgmOZzaILow4=;
	h=To:Subject:From:Date:From;
	b=MFCDRNNpHltjVsx/IsrfGu8VcIlthFTl7+Kk0vO4gFcD9tyldSUGA8mrM6BF/3UhS
	 bLPy4W13tj54PUIlXDzSF9yoN7H7GKTq4e+js8LtIYhylVyVWI93zaKCsdSbgl6Yo+
	 5MwyImcvn7PPNSXWS36nyRmapH4zZQst3o/uy8+KZ5YY5grJ8ct8XK5bA+BRvkXxRE
	 w1lCTU0uYz5NE4I8PmLYG90kVTQq+2ll7eSvydGDjLa0QkicBZAdYy8+FRVUFGpc4I
	 NfMCzLb8qXCCkqm4w92oUKGktfL1rL+yL87EGSlBiTl/NR5lB9rCaGr7TZuFWlqift
	 gf6WFApuBf+5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B141FCD8C9D
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 00:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178096587371.26022.2935555828351924688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fa2d482c509f45079b212d6cb4f6cd411b5b963fcd213a0c104ac1bee92475c
Date: Tue, 09 Jun 2026 00:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780965873
