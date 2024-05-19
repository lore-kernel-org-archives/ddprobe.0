Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 639F78BE5
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 06:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716100343; cv=none; b=d9N9pqIyLB7kojqUd2vfLSJTD3cz1mHCt3vBKiUDaz+zQ6YSMBWV5Hez75/iVlicWVySP97aKPEC+HZVgUeF1gRPskCozriXZhblE5s5Kh7zZYLl8C8nsbBYw4B9karzae115XVNwtkHtBp2YNSMHvgNMztEPn8+3FBOGKfxX4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716100343; c=relaxed/simple;
	bh=I4AKxfaIqXeOKTwP/heQeiAADS27b4uUzW+2Hk6dUVw=;
	h=To:Subject:From:Message-Id:Date; b=epA0zgAIGdVbpJvVJ3VhjgdW6hQBfsq+LWiTxbuc66ySygRWt7rkJAdBTEgiCc4txXiNlvGJD5WhVrHVjX5y8TS2IXH24qL7/JiHvCCqsxlD/z7CnyGK+4c2b5ioMBLZhlAEmlPhBI9505AH9Z8tV4nUg7+muV9oXKOfaMheoYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HJ3x/k9+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HJ3x/k9+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEDBCC32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 06:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716100343;
	bh=I4AKxfaIqXeOKTwP/heQeiAADS27b4uUzW+2Hk6dUVw=;
	h=To:Subject:From:Date:From;
	b=HJ3x/k9+iPMwTqDmfvidqmqyc/FdDWtHTY/JF/5yOkGGZl6vgK2x7JwFtdxe4gpIJ
	 i/cRal53166R5j0XxdTJL2vozVtgjzfeSHuRBja7Grm4TRhu47wtZmXCNshkXKHhKA
	 sB2fQUNkHk1qmQIsi0YgIr0R/m/+rjsTFLUz7TZBwc2+4xKEkMbGoFQ10m3W/WnJKO
	 k2d7RvH3dra/zh3wLvqlCHMs0d/H7GK9VKtbUhh3IJ9vdZUM1AVFKEobuRfZLegCfP
	 LLgFcEfHrXgMVIJlw0LqFef1+rB4mxdJyW/F+My1ZJCk2/tv+YLVNgtN3pUuEiYofA
	 Z7fokbO5Gd4qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3F32C25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 06:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171610034283.15016.3926706321488896704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71f97cc3fb22315389645a1ca8429b0b42fe146e70501be4a9a7433d30e244cc
Date: Sun, 19 May 2024 06:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716100342
