Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C746B242909
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746815993; cv=none; b=TK0u0V3XK/u4iY50Gtv4Rn2bfB5E+yD8B9n3htHKKevKJyk0jt39trTCIaFztTGPc0Tsn62kwZOR2aSMPVFYNRuVpIRwyJC14rGMrBcX3+toSdfh+Nt5TMdj7H/F7QvGj7TaFnC1Roh8R7OkRdgsM1V+Vp2DZgej/jnnPJROcbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746815993; c=relaxed/simple;
	bh=ko0PeebCdUjtWkL54TXD+z6QeJCz//uiDcJUOYJsTUo=;
	h=To:Subject:From:Message-Id:Date; b=SXmGLwqg4z1xvqRJZvbDyDkbz62DjGYDMXfOYO883Gy42xaFOXXu2LO58LHndxDvTfmQNTS16r8SdsBSwX0140icY9lEFwZ69RixOCwsDqv2QxvbUntVj5VgYNEds4ILA4DcTI/ArxpXgyZ1PboX0e7GobEB0cG7Yb9XwMWwO9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sxpm3Kk/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sxpm3Kk/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7273C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746815993;
	bh=ko0PeebCdUjtWkL54TXD+z6QeJCz//uiDcJUOYJsTUo=;
	h=To:Subject:From:Date:From;
	b=sxpm3Kk/3BF/c5I74loA/yvdOPzQ0Sb5f4IgPblmrCMjmVy12nuyhfkH3gaP2XXMK
	 +2Uk3n4h1PogSE6RRwYVW1GjtTQo9pHGi85UqEK+Twu6Uf96T8xJGWcr66YFcQ5N5G
	 EzV0xFZjwDEP6nD1TpDPEgFPCEBxDMID0aVDP/MR+efQA3zdHZR7oMs6PU3kImZmQj
	 cfIinl5ShRvMxRYn61vQfjcKfPmjqJu8iyaNfuQhFgkfQoxMndVNBScPjM6Vru2VRY
	 FAg31mbd03b3gJCq2qn0ciMdXSN13SiYG0LDIP2oIg9h3ovzDPnJI3of5aSggYeZ8g
	 QCqAwZ9A44UqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B87C3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174681599358.15932.13418636996899878224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4545f76460217be12bbd1b34ddaf9b1f4d74b6e14be7e02cfabf236ed7b26b8
Date: Fri, 09 May 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746815993
