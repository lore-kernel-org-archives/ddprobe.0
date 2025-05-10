Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E82014642D
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746841194; cv=none; b=V63AL+TihOkidtN3zEbCm1S8dpaJZBK+RB6rnfEfQmKbI655BurjzJApynW8Ik3aL6PhKZTAt+r51IQ+w29d4xNv2mk2evYQvq56SHdvZ+lGeVCVPcwlf0ykG21MVoFNvnFLq9KSK/GsCJMdJPGgEuc2Rm8GY2xaxeFZPpt0kcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746841194; c=relaxed/simple;
	bh=A1jx4qrnWSGpcoE8lXopPIhNZ8crKiKUYoOus70WTr8=;
	h=To:Subject:From:Message-Id:Date; b=Qp4T82d8hZKRYUZ66yPgXU9/BPxJ7mMVcGfouZ3lMJboKA7oo+HaxAVBMaSbZqQgxGRIFCLg/NfWHDD08jmQCS/OhHyYi+sof17RtTdjb1GBPowXq51w0uefES3QaQpwyKtEuhb0TuffZkM6nnzMMFn70ZzbCCiPB5A+zZ9OyFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jOsrd5+x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jOsrd5+x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CFBC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746841193;
	bh=A1jx4qrnWSGpcoE8lXopPIhNZ8crKiKUYoOus70WTr8=;
	h=To:Subject:From:Date:From;
	b=jOsrd5+xwFVjW8+ISK2/w6o7rOBnpyhfdeALSrQx7wX4aUgZRddQf+esehw2sxnSy
	 MjAg+Dv+ZdrwXPt2rncJgLBTcBPvN7NWe4U77VqqWVUhyPO7tmKOep5aYq3ms+89FE
	 TZ6Pryr4rDMB9gke3BkK8vVfFk0audHv0nFW1wMQiy51e7dOXexwMUdBKdWumQwuVf
	 WCaQhI4CUu6WRxXEkrumx3pRWBC21+RK22g6QnzVXDNmfJSBbmv/Zqnm8l1Zdo0bTB
	 n1pjBnWmuNOxjIRwd9KrzcZt9Zg2xH8WbK+WXXTzxdtATIdP2sDskgrCMrZRp/ddAH
	 qBb2cs5IYdbQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94512C3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174684119357.19728.6921876959780936451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ed58fc5226b1c474fdf988c54acb1fd0d046fc6e5ead153ea19548da9fd63db
Date: Sat, 10 May 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746841193
