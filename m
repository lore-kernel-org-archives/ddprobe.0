Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3EED281341
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 20:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764880974; cv=none; b=FASQqmPhkgO6h64rEnMx0YF5r7HRkHbr7TxJ19y3CMiiIrcJk7ecpdqo+7Dh3Vpf0x+I98kB0mwCLR/j2XCfYRTUDDQfC2MRGSBA46CIXIkFLIwpB++K8BC87Ex5uadvnb4r7x+VFSRNDoPZxpxP62q+NSEuI8N/9ClPxsMSbN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764880974; c=relaxed/simple;
	bh=k37c6CXGgUeax+H4mPLlRtA0MFitfL5hccX6i2oCk+g=;
	h=To:Subject:From:Message-Id:Date; b=l9bFh5dmxhFV2HEMioOtO7mWeS1y0BE+qMx8U5aw2AXuzTvB3ZjcI6Fo6EPWC88WWoSGVhC9jcB+SDa9y/WNfjBs+HMNxDYm/W6jDGEZDNEoJmOHIv+emx6AGdNj7MQhgVoc0aFLddN/SlknjaM/sHdS3KJwBbQg48biwbCw2aU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aFuwvNkt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aFuwvNkt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AF0C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 20:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764880973;
	bh=k37c6CXGgUeax+H4mPLlRtA0MFitfL5hccX6i2oCk+g=;
	h=To:Subject:From:Date:From;
	b=aFuwvNktSATeDfKOqFQ0TNU9zce0U3VoR6wyMFkwbbFkm8j1/2X4haoIKE9JdO0VC
	 SfXJiQBfgr5aOokSauxCKJL6BkuyDstgJS8A7aRrohUoG0S4AMP4zCik0eROb4b5BI
	 +a+Hev0c6dBoYocElQ1S1L/XarkIbz1ecvQ6+H2vUwJI6K82BpEqKXAoWiUm4ES7Tn
	 z9gLJoephxjOaLr79P68urH39sMwrmSJeoG5WYmjcGMk/kikvwrSBB/+gwhi+Yk6SW
	 e8n/ohuvEf4qHKc6GHApqP0m8QKVLgWQjDvmGobFSIta79iHviy62mB3JdVVktp3if
	 OaiorQtvaDaIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94027D2A537
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 20:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176488097359.6528.17784112520049249020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd96ef416eb9696f2c7d427a743c2105c819bdd6d1f0e26c328c7cdf7118f302
Date: Thu, 04 Dec 2025 20:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764880973
