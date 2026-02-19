Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9C154654
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771478694; cv=none; b=vA22bSHMQZkm0UXCiK1Em46KCIplfAIqxRVOy0H4ceUqZddpTlTXuIcvSxpJ0UH/Rn7LtudWt1CBKUW9kMBmciArdbKbCj/cVXAU1Ri1K2/iHVgxLfgtqQG+8dqtMA1jEtIWxuRBk1x5QKCJ71YJwSf8heslIxjjQkBSJHTMqa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771478694; c=relaxed/simple;
	bh=1/vG31FwSq802T+RE8QOgsGTC+C3sB42IojLOpyYYKU=;
	h=To:Subject:From:Message-Id:Date; b=InMkYHQKsivKm14h+wtPJK5Tkp0ETYZ9Bfbsy3JvL8QOmcz5whGfHSAhWDztVeImuu7/otklxyGVlgNFQbOoP/ckDkUVCcCSXwiP1yujo2nbI5hBEEp+IM6P7AHGyDjX0vAm/0PNjN5nmfIolbWDCyTWnknOTOUt87XNASOMV7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QuIQ3iZ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QuIQ3iZ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD4FC19423
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771478693;
	bh=1/vG31FwSq802T+RE8QOgsGTC+C3sB42IojLOpyYYKU=;
	h=To:Subject:From:Date:From;
	b=QuIQ3iZ5cDkFjGRYJDlJoxYbgQTQp0XOPLjE+kDfsJqUdtv6FCrhbTnNKBRVG3pQp
	 h2hNNnwv+04nGMjGG55MjFVNCwoezAG7DEwvzIRGxpiG3ZWVqwzGCsC9swF9wXVqMI
	 5bBI61Aty/Vp/3TTP/8ydr7sMV1LITI+o8tCvzqEVdwW2LAxtp2cGRYrAiMe1IqtHF
	 BoOuSn6sZTtHoz/W6UcOSQLygpP6ZsliwYASltP/W7zoX7yI3mw7BJD5WpRr5T3AFs
	 rDwPRwUVPPL5kzs1kUnzDlP/F9c4ingV2NNVbI2Efn7LbrMYxxiiQfAhRb7L8KwCLS
	 XbKsiCTMtC86g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9944BE9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177147869361.22302.2394399186320393162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cdc113b4290477eb6a1b5ef4a6da34900cd53c199d693c140321af4f3a7cbda
Date: Thu, 19 Feb 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771478693
