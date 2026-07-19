Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55FE320C029
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 11:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784460514; cv=none; b=GfHIcfPP8bnEXSXT2ms89Ni+MAQDoztKvMG5PcXDq2R6wHFKS4QFpNyfhSCZ9hSheZO9Yp0wBXdHHISGpt1sfFQm8tzgd9pyDfE8ersUI6qBg2J4FChycRFTcDIvPphRAycPN7N8rnSzkUDts8LtdFWfrZxK3sSXyP95ZXGHvQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784460514; c=relaxed/simple;
	bh=fTZoH1ki3DxbK3u0PGIjzKD12YpKVb6T5VkGFB7tO4s=;
	h=To:Subject:From:Message-Id:Date; b=BNIq1pZi1PHHkAcNgbfwb0dDiCM0m4ArbhYlTeUq+/p3lJle3ve2LOU+FlR6+uFbcpAn1Au/0Z/79AdvJ/8t1OTpj5ZYWYma/D7ChvdjIcvIadmZZOuLZJAmUVDa0cUoQLw6bcJ4/EJ15tQhu4ROzsHTMrTBcarOdC6sQ5NjygQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qRn7jzX/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qRn7jzX/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE5AC19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 11:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784460513;
	bh=fTZoH1ki3DxbK3u0PGIjzKD12YpKVb6T5VkGFB7tO4s=;
	h=To:Subject:From:Date:From;
	b=qRn7jzX/ecTq2WpBnRg/NSXr6cwvcx707pePUnXmY+2vqgB+X80f0skqO3eoS7+2Y
	 TJw/GdT68C6Skt/NwSVNoP4VMQJOWnLRmzD0rwUd79535wYMR649mGAn+yYs7lfKcU
	 /u/zkHKO+pAPEZQGx2BTK4p3faIrfhCQ5lSFQJ0rsoQ6vJ+XH/B8W+Pmxc21vykiua
	 ONBvgFNB47UIe7lLpUluBlCeauGBw0U3pYwTAZ1159v3HhaEKOrOuoXwrE9x7IomvR
	 KMYKjHk3jvkTX3ARamkJlSxFsB7/PTigpnvxhHWLNzWSs0Ib5tZb5MpkKaTD8jt2W5
	 VyEH/IcolT5Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFFEC4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 11:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178446051368.27511.5869105023672711948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c49eab5cee67f4dcb72e249caebe3b8836fae474e54517c6a04522cf21872613
Date: Sun, 19 Jul 2026 11:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784460513
