Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16CB22E3B15
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 01:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765243974; cv=none; b=F2/87ZoqmpTM2W+JoKozXqTav9dR+IZxGn3Ob1OJFDw6Zb72cpktqVpsXLgjkKNOda/ou0DOZtuy+UZUrL1d2+PAP0wYNrQ0ic9XMbwOiufeS0keKMt7V/atWosnXCGSAWifBZQgMX2rEYINVmtv8TXCTgE9e1+alwxE1RBYiq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765243974; c=relaxed/simple;
	bh=6Ghvw556tqWhmJmHGRIXxXMfTfGYrlt/iy06H4r+7kc=;
	h=To:Subject:From:Message-Id:Date; b=sQz1qWkwtxbFe6VqE2OaT5FhF0SS1ZuS7HOYgIVxYr1J2djexfdzxvhMJBCPuOMeFZKntLHvoEHKMCj2XEM7fg4BE9ss5OTmDVMhZ0Q+yx6EaFd1bM39f4u6TG+yVoZa59QOoFpGzGNeOloraYLNpHng5lNRNcC739xy2Yk2Z3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GUg9iioT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GUg9iioT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5399C113D0
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 01:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765243973;
	bh=6Ghvw556tqWhmJmHGRIXxXMfTfGYrlt/iy06H4r+7kc=;
	h=To:Subject:From:Date:From;
	b=GUg9iioTLKEg8hl0rqoNrOWXqwrAHMHOB1MTnzYdSAzM2vYhY+k9lbLZr7cf21yTJ
	 UCHDPQ3rhliQCA1gkaWMCj2PD5C+mFeCpTE+grQB4mIzRnrrhgULe+mqRTb2/uRH0Z
	 lliOlJzkGh4ema9o6TSpSRGe3cwBf7ggLAGvKVl0VpMOUtmBRuzS+y30Gzwt1tK9/M
	 lsFBu6SU54pvupgfXZH9bHFmzOqUItGmiOI/ZwJB2fE35rDzPipDA6dCI9DYHblzrn
	 m832ImriAWHtsgz5L4HFwAVS43mE9+WvrdT0YvCFOPgqteZWC9ppP9ME8uukGDhM76
	 fxjuoyT6fX96A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9348BD3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 01:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176524397358.6409.7430465622991512524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 276b40146922d05460cd999fd3d2324a47dcc2bd79c0bff68190d9b2f2421de4
Date: Tue, 09 Dec 2025 01:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765243973
