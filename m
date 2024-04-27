Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C853E462
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 10:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714212743; cv=none; b=Ri6uQdgCFVZQfUHunQ3+6pbaAg7PA07HH22G25xgUI/Ss3WRHRc2R/Ib8xrL58TwFKDUXK55bDliZhKA1FBhSWMH6Icz4jbMV7ubRD+EVgE1jm+yr5UM561nOu5Cc9GqsJTgjPd8sNjbNDmBce2pVPfZ5BWjFw2wpGXcAkVcsOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714212743; c=relaxed/simple;
	bh=O4Oxvrn06usrhWvPQ+7l3tVloHE1cp5K+3psiHM1mM0=;
	h=To:Subject:From:Message-Id:Date; b=KgAPy5L4YCuk2HByIQIl5RVZycCep/MwSEQ/fDDj+T/NLzQW7/etpL6QiZJzNfjq6hGm6/OGFhfzk0mm9RxasreynindSWlj6cvjBCQGrJWi2hWQh4i7YtCgSqax0bYur0SdLNu+fLx+UX1uToMdEcyOaiYPGy+gIrE4DfME6KI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EUsBcEpG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EUsBcEpG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE234C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 10:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714212742;
	bh=O4Oxvrn06usrhWvPQ+7l3tVloHE1cp5K+3psiHM1mM0=;
	h=To:Subject:From:Date:From;
	b=EUsBcEpG5dMP+wlwy6HVySU4mYMrjJI+Ml8mSBqnNCseKfKOmptbewkAqggDe8umw
	 vhwMHGDTvSP93cPETzSsJ7sXj4pIxcO0Iosj1QRb4w3I6dPOk08U3AcGNHODmL0TZX
	 VRacag4syQQQZaQCZdl4SHSONeLHsjytdshGhD8tw5G6CA9gaWsbqErMpMtnx6rZdJ
	 5W3fLSSzRq2OT97Tf/MjcvsT8ckS/Ezskl5TukKLkgPlXX+WOhyPPwiuoxdqfaVbHI
	 CL5784oCmR4rRqqIrKO29ur6/mexNczI63kSgYEGZCdTmA+SgLO0IKUy0kZ4Osdq0Q
	 ZNcp/KFOQxJ5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C54DFC4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 10:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171421274278.16860.4454578804389689988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ad6fc074c86b53884cf2a0d83ceb05f9f31b94edd697ef1841bf6ffababbbe3
Date: Sat, 27 Apr 2024 10:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714212742
