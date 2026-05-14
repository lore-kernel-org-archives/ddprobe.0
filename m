Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBE503B28D
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 00:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778719233; cv=none; b=VzrcT3lIuFenLbj6T57hHx82kOejfXv/NE21xL0OdE1d8z2nHm2ZQ8rJRkntBxNWuPEyH7Abvi40e7eRapl9+dbY0YxTX9tlDu0z1p7BdIpa32uYQOTMqrlqPTaSP7MZiQ9mBtp43XYgjtpIkDTrzQuWVIUdOIHHPS4xVozRMyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778719233; c=relaxed/simple;
	bh=UVGltrPaI/HPA51rKVMwTU2ZxoX4wt84GGEIS7uWwWg=;
	h=To:Subject:From:Message-Id:Date; b=Lke4dCONsc+kcrhDvU1ScGuPIONkrU/54IaMa1TZUfRtGEKhqsbayNHqWVtrlS14+Wqka7axqqKkiuQxrQYDa1alQ0O7ivySnNv+lbGdEUN4ycl79RjyypIlgFJgpSwnIsqIkR/yVU/y7sXa8/OypInYx58duRHnOv1/LmiJsiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n2Z6NuC4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n2Z6NuC4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFC71C19425
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778719233;
	bh=UVGltrPaI/HPA51rKVMwTU2ZxoX4wt84GGEIS7uWwWg=;
	h=To:Subject:From:Date:From;
	b=n2Z6NuC4eImjUpM0OTUs8ST6+cGCfvmc8+XBZkRID7rF3yfPbQDhvqs2B+zeuVxmm
	 a6h9IoAHiwyPZAsbpOohsiC8CfH9jRdViF+Fj2xHCPtPKnLS+bXubVTXG9jZ5PYIrM
	 rIq84bmcforXMJLbfr1agylNNR54u0uRV5doB86Xa0uSqBaYy2EvPGLVbb7W43snwz
	 iSE6eklq1KGnXLRVgjZNJ3njF9UftR7fO5s2FaeiajQ8vbUwRwxRbIzCSVLU+ZME5K
	 Q5+LNbiKBOFN00c2HX7GAY4qMiklsmKMhqNDV4Pe7CHZKTGGizX4hZa2j0K6eTOAna
	 Q3n+IsFKQNpNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE33ECD4F21
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177871923369.12586.13324628216734930746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8456a25a4056e5abf8607b6c1004b89017e95171edbb7303d399f9c2af2abc5
Date: Thu, 14 May 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778719233
