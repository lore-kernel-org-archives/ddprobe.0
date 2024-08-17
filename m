Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4215F9473
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723930554; cv=none; b=g6UU0nLSDq2oDFfaU8t1XSyn3OezYlUpvNEzu+PwiEPJHhRkJxOE+CtVDn/kuVj4Qnu7weHEvdIZY2YX6/Q+5xI05mw6GzE/YP3QY/TkO9NOY39Qkzixwt2fFCqZIpOsJAFKWp93zkHPOo+hzg9/ee7D+LIxVlX+ySJVkvxMTdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723930554; c=relaxed/simple;
	bh=z7DoAi3vkHHo8RubPEjg2w8iPfrP0MTzlsvsor9JCXI=;
	h=To:Subject:From:Message-Id:Date; b=ovIspfgf7Eau2N4mBqOb4JPzKaCbtYu3po4IQWnP98Y7PdjNthX1C9GNrZqHlNlp5Zqit1ioi/fbCDhOGO7MjeImKkO7+r9ttOQBRdCUogvcPpRkYaZiGqpnNg4hI5Toitr7sZEhEFATYKSQ77wo+wHb1RvaoXH6xzT6FhX7Q3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DfVYa18I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DfVYa18I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2541C116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723930553;
	bh=z7DoAi3vkHHo8RubPEjg2w8iPfrP0MTzlsvsor9JCXI=;
	h=To:Subject:From:Date:From;
	b=DfVYa18IlSuG1QlMsF5Gd1VopAFmxNJL0xB7Hh+9crfRNjiYngj905EfhQVFMS18i
	 qESbPbHNO4nAhG62b35eTtxSbM8lOpIwSk36nVBlg4U1Jwjakd1q5fCkCEFs4hTeU6
	 POKc5wEM7ofowWohISoVTZk2VxCMojPi6liWn1JI62A5qFZs/fNyFkxh5giWdYP6tA
	 R4dH4Ro49PPEt1slh7nCS71wPq6eNc+/gv6XWPTp835rGiYnALidoz/lcT7h8cPfxg
	 J8HgbQtzsxmfwvYaJgsvkYUi7qeiJZ/KDpefD/BKIYQ1ZmALn/A4UaP7XT7kZjHR3B
	 ygWfqoiT61lWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0A9AC531DF
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172393055361.27828.5647109574558070272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96db45df4f9b42b038411df059f833022b94b306f92dfc2f4235eac6844c3de0
Date: Sat, 17 Aug 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723930553
