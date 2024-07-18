Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 646A329422
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 03:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721274923; cv=none; b=VXw/p6rtiW7bVcdiHvTFKrhqnIh81aVU060jJZoKd2HZqvawtOKU8AnsgFsnNFgfjXNXxxLtZ1Lf2hTxga5ZIxGBZ1BKPj+xGqx+bhVTTwtqIXYS138y+B762YtDg60akj0osAYQ32nLJmS0bwZ2IkVjuuDMtDAG0VDeoL4t1qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721274923; c=relaxed/simple;
	bh=zh+NNdP7YxnYXL/U3C1DR2GV3Dh9eLoK1uheMXApph4=;
	h=To:Subject:From:Message-Id:Date; b=PfarsQjVI6H3kOByiFPnXK+b/ZSMz1yI5mPMngSeuLWvTxFWeQURsDl4xEAQ31WLygRFOrWlzPH1E3uMyjbXfYZlff/Bb7SXd2UmCgZWmcCmnKdy/ZUDcCFykjbS3QymlJWsMLpDqKFxzdveTasl5pEw2tgTfbnqA3YVkVZcF0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n/xG8aUb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n/xG8aUb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E36DDC116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 03:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721274922;
	bh=zh+NNdP7YxnYXL/U3C1DR2GV3Dh9eLoK1uheMXApph4=;
	h=To:Subject:From:Date:From;
	b=n/xG8aUbhMavLfivCKYThZghhdrNJzMosq7qDr6usZ6Q0T9CswVBuOy3ZIJr7RcfX
	 /eQlIBmqfhaUQ21cm0M3Xqb6PuQeLIuaB8pD4uJcVnWjttSIxvYKObb2jdkyrTCVkV
	 /+BZB9L8jk/O9QlUjNQwtTuspuNRdE4Tl2JvD/S/fbgavPO9sPEg9StHiLnEi9q6qL
	 fSZW9eLBd4Vtgx+BTvfR6v8x+mVXVekcUDY2dqzIdiuj6G81W9O2+eV/KQJcUxw6D4
	 upzusFTqwFQNPAbNguRtKGccN50Ds3BAsumzKYaQUYN7h5FFIJduinpU762j7w+2+Z
	 g6zSb0ScqI8xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBEBFC3DA49
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 03:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172127492279.25694.13285545259501217826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c60fd7fc70df28c19434725416a43b46d040b52c568e8c2842d8141ebf1f164
Date: Thu, 18 Jul 2024 03:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721274922
