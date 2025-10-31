Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1773435958
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761886794; cv=none; b=QS13HV+CuOupFQum0mEhg4//wQwZYtbvtbzwrFrIbPkgMAAujHk2Eemz3Wz6Eqnq4ZSL0wc60AmADAuNH967EJ/EMSp3McsvsPuy1jtH7dsvbC022PZb9vT+WirWFagE+jzV1hIKWWmYAdzbLwKFZrmIkEhgsB6mpuSUjUD2MGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761886794; c=relaxed/simple;
	bh=2LkBMD92cVsbTHb1vnvNh6ep+6r2pbn3l+iPGOkL568=;
	h=To:Subject:From:Message-Id:Date; b=OMpewbq0U6grLRHMt75pUNgCe0NnOKtrRVi0mJVeWysD5udOKAXOJYiolQaqgiW7QGKSbvw2jAO7H2MmoGkJ0I3MVffF2rpk1re12dEOpkuh+oBU7CveK2SG2g30iorN2xZl2d395NkXTsxSi61CJ7bO5mJjY+a9i412AhcUHJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MzAmcbfE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MzAmcbfE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63A5C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761886793;
	bh=2LkBMD92cVsbTHb1vnvNh6ep+6r2pbn3l+iPGOkL568=;
	h=To:Subject:From:Date:From;
	b=MzAmcbfE8UhpfOo2utEMzkdgiY29cYzt0oDx6bLaCd4g2Ygt9pJY5SvDSUmgzhhtN
	 D7bEjOAAPk04GlEvSV/Thx2yXDsTdu+XAgccC+c2p4tqL+t4zp8Y1s5CInDsKZbYcJ
	 psS1IZdIPY65/khQXq9eBiSNugA0Xafmv6pjAO+iwLicPaMxiRxvuOu7wycRWjHoYZ
	 aaEZz0yzkk0DqBalAdm7s5XoGdgN+kNO2AafxBoBoL8XGPWAT7lQxyyUW1XQ/r+dO6
	 +rNeZNUoZMglDh31S1AbfflcogdIyLJf7p8il65E1pXAF8u7uaQ33FFTrjIfRpOUvA
	 NIoD3ks2AU7Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9765CCCF9EB
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176188679359.23542.7199844240150257995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2df7883ab7e209d6dd63bde8b76cd3d59fee28307ba89adab61320c272b6e498
Date: Fri, 31 Oct 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761886793
