Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BCF02ECE91
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771404294; cv=none; b=VOeQl08t0vXNEcNQzjnXWutREZr4rSpctx6wYO6kpFdjkuqcbYGyDkpMQUAzEYDvoF0AH3INOQvDoFcqUOHP2+eGPqZ29GyzhSQB5l/OIFMOWr+uhNYFgcx1aZDWYxQlUxVKEF07p6RN+pGW9M4bgmzKkmpho9Ol9Agc83XjroU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771404294; c=relaxed/simple;
	bh=ExKUcTDdkWaSSS8XTfi7P5GNCFpbgqJQ0GUxSIO2t6g=;
	h=To:Subject:From:Message-Id:Date; b=aPUdTin0sOfGaSpOy1ubITJs9PISXgn0Y3UOBkaooWbTKbiqZs1Bb/F2+fP+bMC+I672IUcXmih6v2fVXfVUqBMKQFDeZ1FoHgcfcaqd+rWKi5pdgdX6UXwSgDyU/3wYxz7rscx3RxgJOiq4lj46lGQqOOqS8TesDE9otn0FUpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJXfDQLS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJXfDQLS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF95C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771404293;
	bh=ExKUcTDdkWaSSS8XTfi7P5GNCFpbgqJQ0GUxSIO2t6g=;
	h=To:Subject:From:Date:From;
	b=hJXfDQLSahinRD0da+Lteju7K9mKkOSDpAxA3xsbVxvaWxhgmm6hiLpvYEgGj+Zo4
	 2IohWvpuFMut62kBvXBQrfiH/d94BaEcWwr+d0U4Vyw4/U3MhOA8vEPyRVMvw7CkBU
	 ibf34+O3Ldc/rX2p3KQK8pI7kzIp+AJXuJtESz+wNCObbj849gBNzll6uifqjnUqUu
	 3BSdLngJViB4VM0N4BA9rRRxV2yugX80Hj32zZBBymTVKe/zupXUcQj2o5g7LiiSoR
	 xXFB0D54jmmbERjp/r0WMwFvgumWIEgvUVzs/71DyhorYFjZwPj5gDE+KGtTYWCBmf
	 nrdT0LkgFPrsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DFDE9A03E
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177140429360.32262.6942055038125344867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4009969b02cf3ae80ba4361edd0146f6c994e3d2e6b859485c0ee76d686e4acf
Date: Wed, 18 Feb 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771404293
