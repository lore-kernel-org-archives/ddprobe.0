Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332AD78F4E
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737728754; cv=none; b=FdyKUXI0WYOL2s+GGFjBRJ6ITVK+rbzmd6Z3WqorK+e0chK/rqALY+EGyplDhSqps7Zr+OpWMYWk4hMl+VpIvko4LUoLTeDjP6iHcK7SAucBu8xgDRO9wvjD2BdnNyD4fS/F6GR/cllWyiftayqibKOyZzHTogepmDMIlHD9iyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737728754; c=relaxed/simple;
	bh=56eaJxb/DHb3Gb+JBFlBfNmJCxfO7bLbeeZAaphalrU=;
	h=To:Subject:From:Message-Id:Date; b=e3/1sJKi1ebTKUKB92PURvHq22safwazwrMnhZx3dKXmLOJA/Afb3mYNg4t+oCq/QZ9hjDdnxT4bHYU2nRTmpM+7XWVhzQ5aI5P7pyEA3uD4SrlfNImyDgpr4zmIeMCeAEoRHr20mkofV4shojzarJt+nF2xYvH0RsY+A0CZ2Uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mfdLbdIo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mfdLbdIo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CCFC4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737728753;
	bh=56eaJxb/DHb3Gb+JBFlBfNmJCxfO7bLbeeZAaphalrU=;
	h=To:Subject:From:Date:From;
	b=mfdLbdIoEXXIIGhOnuIOQR49R7U7SySe1l1x03rI7FDpYdsfE3qa4wFtbnanZ2QEk
	 Gl45QKEvL1vHktUfrkYsyACZgp6oJm1ZPooKMEHeMBphZtqqOuG1u4F+UOeCSjkQJm
	 AfT9VvE62XGUp2WtuAp/pC4VLO5sD5WemDeHhrEb+8NDMKN0uH08gv6IbiWNhtTfz0
	 GfoGEn2Br2plVVjJ5YwD1uixczho8KETAQ5ywKQ6cETk2NQCIgjsyf+ak2OFEqdcrV
	 OuR4X4EZ90lTZpI0Qp+xkR701CTfyAOlTeLhsfsd/HlIPRIDOvaNKji1F33hSaX0x6
	 veslTJ0e2FcVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923BBC02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173772875359.13646.17201853765992445673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc536ce548529434eaca8e351effc3678f321c9896f49cf7dce07c8c78cbe7ef
Date: Fri, 24 Jan 2025 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737728753
