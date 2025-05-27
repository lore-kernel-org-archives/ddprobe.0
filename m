Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A230280A29
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748372994; cv=none; b=HW7PbpxMRq1+P0ZZ38ITMxPu3pcBeswy+8t+jJC6C0cdsZ3XUIMw+nZjOVRdG6gfBjqVx7TWjZNOi9OqZgmKAvPv1RiXPfHlSqaYCbzSdsc5LPav87ya2GAeJMhWsUG0kgY344S48NldiOUF5VfMG+teiBDoV+b2otK1MxyNHxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748372994; c=relaxed/simple;
	bh=/jzkwsI28m1Go0qcfc3q7I52XGSXs1VbIR3pNFK4Z4k=;
	h=To:Subject:From:Message-Id:Date; b=skAcDksPS29feDDjMd0bKQVC/vHKFcORS51lw54MnlEA4KOn252G3MncNG1JE4KH54fbyXj0EY5yNvn7mu2DHma0IhL4OL2CFe/SfaPUeHL9lIrazFtDcc08LIHdp5sRtH7/8twGPZ3W/szqyOdqqSfZbFVm07X9rWzXBuExBC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iTAji5vR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iTAji5vR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9AEC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748372993;
	bh=/jzkwsI28m1Go0qcfc3q7I52XGSXs1VbIR3pNFK4Z4k=;
	h=To:Subject:From:Date:From;
	b=iTAji5vR0OgSVPUxONy4eLQYs6qg9nJaPqoS8VbJuXs+o3IYCdSHyeHdWZnd2QpnP
	 4ohTuIIJhXvqmEObsK1xt8C3ykDllbuutA5vyLSfNFcQd4aM04h7hzqDszaoaPGSuQ
	 Ezvbl8St3Ef5h2pYJjcypxTjdg7zKLKmQwRbmQTiA0YikbjGWg2GgLjOOVdeDUB7i6
	 dGO/p0qZcCsJ/kF4Nxf2FoqnaIHNE2N0hqd7NMPfx0Q1+a0FLcelAZ9NfeNZSvhwrl
	 2Z/16xWcEWj3w1MehZQPmPy9t1a328vA0q4z6suv8CLOJE9leaKDUkA47zIBzJX4D6
	 HZLUhvIlY+BEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903DDC54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174837299358.28570.14380057552731478946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fe75fee102e5f884256f472915a1ade819ba6e4d3c38951550058ffbf5be6b4
Date: Tue, 27 May 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748372993
