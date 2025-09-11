Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D52F329F26
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757566794; cv=none; b=lP9rrxPJNUyE2sAckGmJt1AeSGmqkgSC2inTfBK30Gyq59EvuFto797vawuYVZv5SrWuNqAmiilk4+OSk4e3JrSj7AUUQAv/jpNEmvPf7B9FRV24yHI01/phRsM1+QcPN5g+9qrXyncbZ82FiuZ+uknNPq13eo2Eyhwgv8r6DRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757566794; c=relaxed/simple;
	bh=NQoVPSn9Fd4XX5mkkHmBqLGbj0jMNnRgxTI1CAxsLR0=;
	h=To:Subject:From:Message-Id:Date; b=HbababbVg90gIpG/e40JMnZB9lN9jN+2iWq5u9Ymo0CzyG0gFZpaGwob1QqJGvT8wtRDK9sNOOXWvAZ1lIxYkS4eDZWkanumffmnlDGp2DQNUTRqR7Vo5eIbxY9rrlvTlSbefslgfQprvSTFxwLPpyrpmGRm2MtPXWjNrq/3udc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QtK2FHGA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QtK2FHGA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AF3C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757566793;
	bh=NQoVPSn9Fd4XX5mkkHmBqLGbj0jMNnRgxTI1CAxsLR0=;
	h=To:Subject:From:Date:From;
	b=QtK2FHGA+agVi/E0cnklmNnm6mE2D/HUWRsGkvlB1rjvTM6dqhqhZi68PJemAs9CE
	 Gqee35YvwVq4FRWqsAtD+2l8ckfeEfJaILB2BQC8PvsBv99jWFPaRqEsG/N5bPka+u
	 JbWfxjJ7exw7TkrR7ci64+/3x3juL0XpxKKT8Z6logbha/jYH3FFxKMnGumSrY3LLk
	 s5/h5GQ858l2CWA92y8UTsDjNbnFYCo5v8Hwmi0eLnaxuWlylNgg5a9yncx0y6c3hs
	 4y1vTyWBv49Bkznsvct5gRuvreQ8AYuxe8l8LqGYasfIyIT2GypZkDihIpFpK8SPOj
	 Q032y8jBgOtGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB7ECAC583
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175756679358.29031.17511488110950613110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42ddf301e597f2ea50d3d0e7a5cb5b5cb7d5b0bd3d1c0039c1440ad26a0c7b14
Date: Thu, 11 Sep 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757566793
