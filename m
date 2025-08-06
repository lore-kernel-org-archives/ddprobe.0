Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1324F171C9
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754464194; cv=none; b=WoA1CGI+Z6d7AxQJAxsE6mysrSsfhnluDOha2WK3rhnzUPoTfUVWtKkQlm3DNA8BOluB9CWLoLHwdHb7kNKJpHTL7SGGVAnswlW7mH/ZnfJpFTWzzqtd/b7Ok+CQFx9wkP10gZsLpCbSjDQCiX37yIs6uu/lkNLAV0t8bldBmNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754464194; c=relaxed/simple;
	bh=K0aPn2aXqESNeppLUPa1i1Le8XqILT7M33/i4jPk0HI=;
	h=To:Subject:From:Message-Id:Date; b=uI+ZlFiHAiy93Plv+TwL0u58kP0mP/mNh3OxfmGQrHrP/9fpDG1sKsgyR26QHGHCPz9GF+PceYarvCt6RGgB+En2HXGB7T4970SEEYz5sgVI0Phts28+Y8finioTA/vWr+Jl1qZdc4XZQU/JQ73UBy21T6K5C0h9F6ti9CjoWy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jDJwfKM6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jDJwfKM6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0A8C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754464193;
	bh=K0aPn2aXqESNeppLUPa1i1Le8XqILT7M33/i4jPk0HI=;
	h=To:Subject:From:Date:From;
	b=jDJwfKM67iZT5C5jizfSEUyMyBpkyO5gP3lEOJ3F2TcfWHDdwmrumZT20hyng4QSa
	 IU5GkgeQhI32M8Vq+XPVvwWQmPgK1ufhVc/sSBtNviSlm6ne8fVqpH2fHuZJOm6r20
	 MNgzI/CFUGesnCFfVmoDC2ObJfo0lr/KV7eMEiZVvxNZCRjPRY/cc7H6ADP9IBjH+u
	 2w4/+dArqirkT8NkiEzHzs5damT9dOHODwMOxGJH1nkt0SvTWE4bVyQ1b6KebHFmsn
	 Fb/68+97jH/wcjuz8lhqqPCeuPLWNlf7ukBVoaEaTl2TGGop6Tj+jZPrV1m0zowHTi
	 eOvziJLWrGX3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED71C87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175446419357.4638.13497506892006678599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f55d03ec57eab281f1ad65ed3691638107aba324f81e9c4d068cbb4bdc44ccd
Date: Wed, 06 Aug 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754464193
