Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2581227713
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751839194; cv=none; b=oHHpFspfKB5V+BEM+KzPzxXB1eNraf78mOPiw+HBw3rIV0hGyxKyEzRXs5mRWladHq2qw13s0IrmiAGWGApLIohYSgsG9A63xwxm/HiyOI1TGm/qaumlfv72SmVs8+SPJH2lREDunQIXX/ZGTDbedsCE9tQrC6/+i9Eq1LAw8YE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751839194; c=relaxed/simple;
	bh=zoeK+OF/osk8tsF21RIkZNVakil49moKq2IXNlRz3Js=;
	h=To:Subject:From:Message-Id:Date; b=ftBjwuATr7jf22AR5tYXBazWgQ6XIH2LbJGvBN+85pUPXqi9Srwh3/1jJCg5iqN6CXr3Fu/ekoqXvaaa+4M6SPldW98nP3QJgOFLI1dFl0YgtPO6s0f8syQ6dgtqQAsgu57AwV7osrVhB1CHqzcyi75Eywdnivo7JkEyOEXgzno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fr7uFtKR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fr7uFtKR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2BEC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751839193;
	bh=zoeK+OF/osk8tsF21RIkZNVakil49moKq2IXNlRz3Js=;
	h=To:Subject:From:Date:From;
	b=fr7uFtKR1WoZIemqfK/nwZYCPZ7rSKgbhpHxd6Rh/i/WVAJeXSX12hRDiKI8ByxLr
	 En2hhslN8ZSfvshLpI8z7j39KCRQOxsbXCpPTzps7khopnRN7EcPSx2vd68cSYzVwu
	 GXQ9Uj43Z02Dr77I3CMGx+rEorY1VjWE0nU3aVJOqGC/+FHEY17WFvmyua5S3EFOuk
	 vjF/sfjOOTDmPq/4RngB2Rftk73gF9sdB/H+uAjTBkuWwlhNPxPPTQluP7ntxE96As
	 4itz3bgpuc3yoCkKVGsi0igWD8n66clWCcT4jmncwQdGXA0x0gKj6Qi0iB9g2UYaSB
	 lEzVhLDLlJU2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E23CC83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175183919357.4198.6050055823371176977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1261422d9dac8fa922c5f976562dc80e8af3c0206fab320d6e991014012c2c8
Date: Sun, 06 Jul 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751839193
