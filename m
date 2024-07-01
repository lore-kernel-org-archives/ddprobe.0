Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60BC617164D
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 20:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719864923; cv=none; b=lRSGp001dS7hKfZ8gxWPlNTNLbkzncX+mZFrzgrHHX8VhFEYAgbfvSbG4pLh21HPhOHECl1XKWSA/I3TenjBdxHIz+nIKmxAE7qcRu42fDrOU+pSv7rZ/51IZ4xosMLINztdA7GbH0dpE3MA9LzuWXpyEnGuzYTw2UokSslH9IA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719864923; c=relaxed/simple;
	bh=qigXmqA0AjT/HrdFpEOeM4T0x/pq8LczJqKKLOyB9t8=;
	h=To:Subject:From:Message-Id:Date; b=MB7adl8OEJC9hprms0V4Y4K3b67i6zKPlpWmqOpgl3KRWHHS5HabQkGerJHD+o6R694Qw87fwU68wB5SW76XYweaHqdKXAGeECaNLTFbajaqQCTqhh24KHYWw+Ri7RnNUFMXhBvzZ3UK0+yGoG849w7BN+R25pQHkr2QY35NoCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L0utj64w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L0utj64w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9819C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 20:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719864922;
	bh=qigXmqA0AjT/HrdFpEOeM4T0x/pq8LczJqKKLOyB9t8=;
	h=To:Subject:From:Date:From;
	b=L0utj64wjrDwcgWMV1p319tQEvefNu/gux5gVUp2vGJBtCgTSKGLAjpYRS0OlGkQ7
	 JPwh8YwjsIhmIHVajEeGlN0weU+uhJQe0Vj2yJcUx0/hnLsRvp7q0s2Amji+ZbrwGZ
	 6O4m9He78eoAln87VDOq7LfMaVZvEVCQHyeLuXmgUVFGikNb7lmRmBst0ey686nzvg
	 0u9eXM/JT+wrfVg6CeNR9nQltj5bwmpRB44SiverG906CyN8zL2qSpBZgp/+4CdFd3
	 xTVi1JDxjQf4aoVGaG72IPtz1YT5hmO8eZ/GYz5IjWheqQCaEcT7nR+nVSIJVwH/0f
	 yc7rXZKnOSQSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D04C5C3065A
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 20:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171986492283.9859.5938643643122273717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5777328c0ac91667efa9476dcc84f2445a865d70d74e60f600beed7232b2c941
Date: Mon, 01 Jul 2024 20:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719864922
