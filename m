Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C09D37E5ED
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789411234; cv=none; b=sVr6t2Ub152xB+HWsu2mN1ucPCbXRwWA5WrxeR+Vyhr17isYWQs8Ot5zPWoZ4q14CTVrkDYyuzpB/7F9oF0p1CEvLxKacTjHj5WhhvZUeuFT4CHJEWVGA+SMH+hYNgcI6zsjRzmYu+MPoe8uEbVmRp+kAYNVarXqENngv85IZ2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789411234; c=relaxed/simple;
	bh=BHQmcbw6JsKZfiW2YSDHG4eaQxk0cxibWZwqW3yDRgg=;
	h=To:Subject:From:Message-Id:Date; b=aqXvJpv0Norh6GqVEdX+0hmG9pgTyn9IvyLSRMofAFJNX8plQ/nQHdFy/sBXTuTbeoUxbyEDMnErTLFdOxMIZbig2w4INTvi145bF0ylveTLH5rEgPxKE9hdwYe8jg4jnTg8kYwXkNoCVahfpJwSJIWQnjVlLbndZ9Qdy8yTAxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TAOdE29O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TAOdE29O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E96C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789411233;
	bh=BHQmcbw6JsKZfiW2YSDHG4eaQxk0cxibWZwqW3yDRgg=;
	h=To:Subject:From:Date:From;
	b=TAOdE29OnfSEYVFZCJ4aSlQ9S7AipK5/p40Z5D+lDy5D9R1X4BCmeQ8S7uSmmUl+6
	 HimdTR9onBp2B9QkVmWKK+XSR1JAUzgFCp+5RBRQexCSJWdSMYm8UMbRUhlatnMAxb
	 KqBdUHfBUxHLmCYvAAc08NSWBZFN34j5RfmWpyH3Pb3mp7h2WGjXnviY5HxDBT8Q8A
	 H+LfaKEk0G6tPctn8r6wX4ioRAkfjE1+swZ4cAHxDalVi+RYnaKI37foId0FCYyKzN
	 GCMwUNR9EaQOup5hP/WVakpY7bzf9EQ4DynCbgapq69DO7CuuCHUP+5esQYJhfEcE9
	 zAbDe6vQMPdHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC782C88E6F
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178941123369.20616.12933284506071706711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 550b40bec9a5e9f4ebe126425171ff2e08603860b90a8a0fc996a974dbb6493c
Date: Mon, 14 Sep 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789411233
