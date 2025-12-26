Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37FE614A8B
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766718234; cv=none; b=qIcM+pn8q05+XdXsBZlp91I4ciQ8Cn9V4Lnhe1rhxEf6z0OJVb7P223rRdqyFrbmN6D/Qo+iP4To/IMBB8Zc92MHwN0BcOtBWvBUH0ft2TZFTCQ2p7vaw/FoG2JpbCsK2AoxqjIk1JLCUPgadCoeVbTGd7dOrznchs2TmQCbKtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766718234; c=relaxed/simple;
	bh=KOHLbx2D3jkbYh8ARLiK49ugM5d50VTlohbcn9jy+C0=;
	h=To:Subject:From:Message-Id:Date; b=hnIanshoAj5/kc2WIh+N2mAp6doPI0dLSV5Cip5/Ndn1ivAFUXZMZ8TI6Rf3fdYXXHtQo5V75F2/xiQfnf0ZFepskeKVOy4xzdLE4k+mAZu1QDyE2m+2fnx0Is2D+uPZIOIltbPha4jh8D4P20bFldvEcHtU0YdtQsjME6Y8+m4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVcUJFaH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVcUJFaH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86FFC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766718233;
	bh=KOHLbx2D3jkbYh8ARLiK49ugM5d50VTlohbcn9jy+C0=;
	h=To:Subject:From:Date:From;
	b=BVcUJFaH5r/3DheC9a05nT9ZDnfp1uNoL9yPzpjpTZ1IADF+ZeAswKdr54Tp7/LrH
	 mXRphYHvoEbhsUb4cEmsJYVCxNUx9GdAdLTxUTv7UQQPWa7tUV8jOylZnwUoKnBlb8
	 4ffWKDNWcXioCogwCKE5UXMEmjVPWFzMvibgkpz5GDd+pzVBGg0J4CBnEP2Buo9Cq2
	 uEiNq/gqC66NXpWxKJI2C+vYSrqe0DEgXGb/OKQd5iDejBmnhyuj/qmnfnWV4gq5Dk
	 upG+3adPIRlqzT1ZqInKuTpTXbbWZegjVx0NhVEIXbyIy7uknX6/Fds7oY5VOy8soi
	 JFotqgo6wqBjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940C6E7AD77
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176671823358.28309.13307792746280523460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba1bb116ae35484c57afc58055e51866a58d4ab704ce135bec4f30c1dc283f6e
Date: Fri, 26 Dec 2025 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766718233
