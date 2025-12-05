Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E06B29BDBD
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 06:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764915774; cv=none; b=PyoNE1M13FaOT1oLZaYikHr9wcOwwxwBavbSne691W3tEDSsVJ5hWbMOCy8UsIYfYFWK+hXJ0MOWqvz2RbuInLyyfg2XSBbzQ5WYVkTD9mRipKAb2EuxSAsmmPakJKkaa/E50kWpfgv6qskk6VpkZom06dx+8sjXuSpLSKKI2ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764915774; c=relaxed/simple;
	bh=fCnxOs2XpuBou5j5NPP/ABbBJM6KAWayVZk3DjO49jw=;
	h=To:Subject:From:Message-Id:Date; b=kAoqg2UqDecNYQwNjgvx8darR7OY7PZbXHtLHbWqPdzKVC4nTg/XRaxBBvQgQztVY4PXTjUFRyv8o1ChBBNjz8seXuFMrQ4a4CKBC0+0eu+0ut/itHlFxkfrmKdmQcJaHQiYCOYpCJhVJkIn/xK9aeKf4zm/OIOYIwK/PPFgY34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vt0vR03i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vt0vR03i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A538AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 06:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764915773;
	bh=fCnxOs2XpuBou5j5NPP/ABbBJM6KAWayVZk3DjO49jw=;
	h=To:Subject:From:Date:From;
	b=Vt0vR03idp9Q5AhD09EJj5ykZPNFdcITdYsr9op84nRfuvRvnllhfDv6Xad8534rf
	 PocUmDo3eBCHaXUpppV1FbW/8o8Zp0psS+6cZm7OEE/9p+7iVTdfbsuVy/bYkemUge
	 ooVpu/d+XIp4FCi8cIN0G+HlW8671xnNnWHviud13Dex75Pzv7MWMzGIupa0WhJtEN
	 EhCwOS2qTycsM3TiyicguofmDFLScsp4jJI3/L9c3xpz08aPEHyChN/rGOsRMkshiT
	 cjXIn7aq/52EJ3F6g0w1KalDmM3whuOGobxkp8lAToDL78LW6i459+Fvvd0/uRUUjW
	 jyAi+qppTl7ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FEDD2E009
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 06:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176491577358.5109.3658360631349664583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0ef9f6c05f6163de901b6f6cd6bbb1f2ab3df1ddc5af093f55baf8b40d1fdf5
Date: Fri, 05 Dec 2025 06:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764915773
