Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 569EB1643B
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 02:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778035654; cv=none; b=rkt4dHSVKKlL7m3xu9Dcs1M6Xd2z0IdudXsH+XXxFDMeUnvFvXYwNisWG5b6qmfTGCMG5+aS9swOIlk2Rm0aSNjsdNFJodcK1UKGzfL9mqS4qSL2q8zbM2EkSpKVue1vmCoqoY9u2orsbYwbR1/VPwkRd9Whf9soee4+llK/iU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778035654; c=relaxed/simple;
	bh=xBrTWatF6wgvZBv9jDcOwg2CFiJYQBhtOrDxpQ9ktz0=;
	h=To:Subject:From:Message-Id:Date; b=Sqfx9b8Wa3LrVNcwNqNATN0v2xdRdKl4puETxhsjBXl+qK4fGHEJ4r2Is9LJBIsSMEuaQMKShw/QppbD2CIkQV0Zf9E+bFbY+G0UbG/8gMrsY2Hb9TAuZrmbbGtOAS2WLjK+zyqX5553Po0SCWwvd4nqN9f+rr9mW3gtE+WbDNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VtGm8AhJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VtGm8AhJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE12BC2BCB4
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 02:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778035653;
	bh=xBrTWatF6wgvZBv9jDcOwg2CFiJYQBhtOrDxpQ9ktz0=;
	h=To:Subject:From:Date:From;
	b=VtGm8AhJsvgEFZ4UnDUYLXRqR3LwqY7GMRMBbNHn1DQ9qZs6lD3Cx3mpoF0RJ2lUb
	 FdwcyiZQErmwtPZr+uHvHp9JlEr0DBWBMweP5vRU4DvZsgteIlNAlcUObmVxfT4vFv
	 BL7hYS3Fw/lRmNXt97NRgJ8PcLiRdhsZo5nLFTw7Bx5+Cep3yz1LxG578pSjSBVaUE
	 aH10jY/C2xz5L+gfnlzKJx/yJ70oH6c1w/Ge0dDMA3YtK6FWCSDBSxeVseEC6aA87i
	 hMDyth2iK6POYB/hAM5uGZWyLU7VYD46LsJ+G5SBa7ZQEg6Q+LfNcs3quqMTgCGu76
	 NISDRWLTeAKlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0C6CD342F
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 02:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177803565369.32239.14578847987657142918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd02a7996fba0e360e5d62131526091378a6702518b0c9552a7ca2c517cebb80
Date: Wed, 06 May 2026 02:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778035653
