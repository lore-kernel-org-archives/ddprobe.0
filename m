Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D221F36E48A
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768478033; cv=none; b=Bfj5ua8U/kSnnSgxLJm0qHYYGvL81Voo0DTDlHAPO5wej44rvu6bNhOpugHg9rscCTdgiHAXpHoPoh2+sgHpfv1uA2khsSLrg5p+g6x1JyliQ9MaUhC2POkKRz7s8G9m6KASsm6pAiaK+Cisi4VMGGr0dQ9tb2DTgrPDFPbadM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768478033; c=relaxed/simple;
	bh=akRlVL9Ip7ONZfNj1W8F+7nYDiy1p967npz30///6lI=;
	h=To:Subject:From:Message-Id:Date; b=CnnDRlmL6wrlKFI7J3w+ofnneFHEe4Z6/6d3Rr1gnLuUbEFg/Y3QjCfyW01mYdZlijyBekHqlXuFCiJBVYbeQZOpeDlH0WdLrfanSkU59xwwA9wuJILos89KH3Kysl2JYOwmHOytvTNDWhGgez3ZFMXaIn3TDRaWQReMImVFmAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pkLld4+s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pkLld4+s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBA2C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768478033;
	bh=akRlVL9Ip7ONZfNj1W8F+7nYDiy1p967npz30///6lI=;
	h=To:Subject:From:Date:From;
	b=pkLld4+stjt7NBEbD1K5omP5RHjE7CRSZPnvrClPdNjlzDLSpeVnzEAz2zcokWiwH
	 5Vc0/n/IztzUbvnjyUXMY3uRPOp71Ll1rpzQwhGveaHt0gGaNZa49vAQlOIkw0Ksrw
	 xotO1uUoX9wwds9dSB+0Pn7ziv5F+/COf5FcG3l27D8mDgigC9UPHYc85pNKV4XeNI
	 3s0ugrpubeGa4MVwhfqZpV+bhRIpqgh5VGNLqMl5OzFTr7vLTU3wV93lLPWJMPXZMX
	 S2yfYOQYkw4zGygIXy9nmiIm5TNW7PHdZoN//KKrgIuvRP8M1ejJWdFVCNldtDP+xs
	 Tn+xv3Frsa5DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF29D41173
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176847803357.3448.17137107487384591446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04e4170fb1701093e27a37dc4297d783f0a4597e01de2c919f16755715b82d01
Date: Thu, 15 Jan 2026 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768478033
