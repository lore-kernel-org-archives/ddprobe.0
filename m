Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B44CA27FB18
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788549634; cv=none; b=H2Hif8yqNxZx4UwM7LBi6mXYHwDIld+SXEHuFjy3pxzb1fC6sl0FDWTKib4VMaAaHFGzRbRvcClRkyiqmc6+P0HooZEX1NaPdvHtNQfco4Kpn6eD4waebOet0MXPaKf53lFc8FIJMkH3ObBz2XwMTsXaWqCe1RmXpmrYBmFvWE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788549634; c=relaxed/simple;
	bh=oHjJc0AHy+Rkt8ZWhHm7WIhvqZlRXXNctWZSXauHrtI=;
	h=To:Subject:From:Message-Id:Date; b=jLCkqr6a5HQaXP/7bg3FynxK/cnwwzdaF/QmxZoAwly/0gUhMCy+tPzlEnHS7mcy8g3iyuB3HY9ADpgtuEMzVuJ9N/n+4UZ8wagrhASftstBiT3hNSl/FjPlBW4z+slBWWyTuVcBXwqQ2FcSwwLHoJpN+O92EgcqEAHVKTUXmw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c7gXb3rT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c7gXb3rT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D475CC2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788549633;
	bh=oHjJc0AHy+Rkt8ZWhHm7WIhvqZlRXXNctWZSXauHrtI=;
	h=To:Subject:From:Date:From;
	b=c7gXb3rTivXwnoj7RThHGAAHM8lqDJu2+dpPXVbdflFrh/Iq4u5k+BgBgyit+N+O8
	 JxcXRVWMLdcM9//96nMyDi2/zK09v++dzKYECdRp/0+p9C+bos8Zgge9Zb5b7cU3l7
	 RkvOMyPxl0HUJ7OeejEDIolyRuE1K3Uyr+e6wktAZSdcLAcfeSHX4yRJrBs1Hm9oWC
	 DyPq6r3mdQa8ZhrsPJQYfwil9OvGi3a6zp2VkCyKSCcfzZuYUM9t6rjEorS/GgbCBK
	 Kv9Z3RIdAqcLuyLt3Oq7FzzvuVk2EpbLaBK5RxvWtBt6vo3ME4/fC+TSj6+2UUyZ6P
	 Nb0e3mPZFmT8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE77C624D3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178854963369.8022.7983084911881417934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ae734fdb14467068a7a25a5b23639dd2524af63dec3a2d5a0fba1e23d856dcc
Date: Fri, 04 Sep 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788549633
