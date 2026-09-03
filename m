Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB87C48F829
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 10:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788430835; cv=none; b=hdSfEkU3igE3iodtrqPe3zx66P1wJgQ9yJCHoUqf6LPNh2yA4iPxAPSuw2qV2ab/uSZe2ybzr20KuEZc1yAoHZ3HZkadGRToIPk1mt/RZke8B2arfg33p4yEHUn4doia7fQvIqd4F45zxPPZ6Agj2e9a6mWOOosb4GQmg3iYjNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788430835; c=relaxed/simple;
	bh=QfinWHHXktmiSjgkwOdVWJ0kMcMHon/XeN39y/bileI=;
	h=To:Subject:From:Message-Id:Date; b=q837PJQieoiyRFta836FN5CRGt3YBEZbxSL2BPd96X54lbxFpsENGea5b7prWGGf28HOIpG49H02yr/7mQHgxKeO7iiNCNFrMXN59+ky4v96CRPz/rkCVBHBl+N5Tx6Obls5m+snqlkCULu84GmcxtunDckgaVoNzSq699lEQf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ntttqApA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ntttqApA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1375C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788430833;
	bh=QfinWHHXktmiSjgkwOdVWJ0kMcMHon/XeN39y/bileI=;
	h=To:Subject:From:Date:From;
	b=ntttqApA9vQ/K3QYhhWapNIAljrhdpy6JZVzENh6NoepscV9/IQoeyuLkJnUog5yX
	 addLnxOnQcmhJm9QzopmLgsW54xG9DDDjeFZ7jCHn3C080A2nTCnXybImTd50Jvi7H
	 0ZRANf9zdiH1MOKlsTgolC8b8i37XkndkQzLMvt+L0fvDVmcwHJdOIgoIFZjaELlZl
	 X6y+utXqnKKQNt4jP9dgkmkqDt5SbJFRqhlPnEP+aTWFlUI3qzUDS91R0BNJqIob9D
	 RLHWtqevpFcfjA3ugyNAcUPeQXj7E7+BJHrn7powFcQcMQ5ZYic0Kt8nm3w+xrkkyo
	 b0uCtheeUGhzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD05EC624D7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178843083369.19601.14386656191298679347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd6d4a47b763575d8eef5b47b5a31bd31889c33553dfc5dec6b134a8023e2d6d
Date: Thu, 03 Sep 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788430833
