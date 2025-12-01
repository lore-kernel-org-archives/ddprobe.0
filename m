Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1A023EAB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 20:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764621774; cv=none; b=JMwXid2/PDK/XSXMxlTrEMjjxC7cv00Rd5OqWl5xbHZbXU9bScr/+0rTV/LWK3aoBR1xql0V/BmWdEawCIFBc4IgHCE5sZBhQzodD9J5uKoC0pk/U0DvuADduTkzqB0bhcpsdeCxrCUIyG0x9PlcFCv1y8zUGWrTE+o3KxP0xKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764621774; c=relaxed/simple;
	bh=0nK/Cr/WFcixs0BNNU9Oc5xEf3Zqjc68N+lAqkfqusE=;
	h=To:Subject:From:Message-Id:Date; b=XpHweTjZcEO3K+QhujRn7HR4TBoRKDig1sgUbPMH6lBxTMpdg6oc9oZSyNASGlzvV3wdNNtgyG23pmlCwabgzgDE3mnRG+6SmnQ2nv5+m6PVbIu+Tibdw3FlMs5uy95zu/5DF00m1bfcvFVTYhfnIVh37KAwaECTAiSs027ymqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F0F47HOj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F0F47HOj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C541BC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 20:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764621773;
	bh=0nK/Cr/WFcixs0BNNU9Oc5xEf3Zqjc68N+lAqkfqusE=;
	h=To:Subject:From:Date:From;
	b=F0F47HOja9I/JQTp2ALfdChYHSN+Z6uNWs2PGZnQ9LaZ4JSULSfeGo9f5UdSJUvBq
	 K3e7sUuB1l/i9MqGNjYyAiF4mpuJAnXgDjmMRqZQE8RD90/smuHYovVsT4GimAgiMD
	 FGXt8KPsJbqkLa9WBOoZTKpulz1XB4soocsvbflcBcRTvngpp2oZ+lveSs2uQWUNdf
	 BxYRrCN65Lx2Oz2XXU+1hgnUoLq4+nWDXX4CP12f2luBP95MnMxoYsX6qVgvLzmBaf
	 CU98QdFdP/3v0uI8kSfRkpYAkw9r1u0GabesGSZyMlWKpeIxQIYMPPL1wq3ICdNi6U
	 CT9jniO/9Bf2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6B9D116F3
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 20:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176462177360.31588.16890626184642492465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d984eba9d58e182b7e153133dad36b5e7aff63f8a87445054149a0b938d9212
Date: Mon, 01 Dec 2025 20:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764621773
