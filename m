Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B26CA35
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 00:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720570583; cv=none; b=hOyFeL6VeffiyhbMjkhs6lD3bZnGa+cd2w4dftewKzx7WzH3hsBKdDjAPh/uXzm6JcIf9gpF9D/v5HWQ5Bm7ureGrWnhIu1A/SujyfELiPJI8TiZWmAHkf7Mqa/GKnMcgZpyp9dQmXS6lC7cAewz08LnJ5glQVhpVBp0GRRmXbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720570583; c=relaxed/simple;
	bh=A7ScuYAtjVkrhr5p61KtlyIN/Z3yXoAvSYsI0HhpWJw=;
	h=To:Subject:From:Message-Id:Date; b=nwmU52jmu62sJ8J9VYd5BxCLo2jZM8goPusRP0gP6rW6cptukGK4tuGqLcLlY+M+HXRWEu+wiNtJTXLxtHgbwj2i6Ng3eTq2AKiATKmtXQoJjkp9p7mSJyRSoFNaCyo0+7jT4wZW2fJrFMLi+7z6BR1rCSOPdM2eIn+/ta95Cnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SLf4h/z5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SLf4h/z5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBAF6C3277B
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 00:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720570582;
	bh=A7ScuYAtjVkrhr5p61KtlyIN/Z3yXoAvSYsI0HhpWJw=;
	h=To:Subject:From:Date:From;
	b=SLf4h/z5J7dfjIgic/bzojoQMg5gERQFgpH3Yobv9RrFQafEoAPKXr1ZBmLTIQTmk
	 +7+X+yznTSzIO0TOD0kU9a1HVuc4AMGGFijtyj6pXg1aXxdT444ylcN1HPyQCUiLwf
	 F+jEeM+/4vaRwqRacndQZBOPUCEaZC3TKH3wew+vcErXfEOOGvR6yXQJ+AeaV5kFNX
	 CRUJOS1CamtJRsaS8e3mO3vMWyBVxk8CimNb2cMgqUO6EvkDZStN1WNJU17uWJ/VLw
	 1VZkG+96TtAbod9Xmj2A2gQl3Sca1EUMhjElFDyqyd1V0UV6B1h9YR694Jz4mTYppS
	 ZGJHD2ucmkR8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3C0BC2BD09
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 00:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172057058279.32144.1886684587562905434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82b8d5c1f7e2cbb9adbaf55b9ee96dcfd2851e278a98dfae825274751f11bcee
Date: Wed, 10 Jul 2024 00:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720570582
