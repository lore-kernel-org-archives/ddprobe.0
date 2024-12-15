Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C0C881E
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734246354; cv=none; b=dEyt7NW4HsUgoavpsOzp0r/XOa5Xght9SxpO+QGLUmr0ESy3ztxRzKPDNJq0hUwgKaJuS/Ff5tOfrOFXcBvAUG0WCx1tzZjoJi/nxxPvyZAkbamiE+RMl58ECGufvp9yR0SDOuNTRR6QxHQRf2jDkV61xXeFV1Qgy8/2zLc5CJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734246354; c=relaxed/simple;
	bh=uUVVeQy16XfAtcv4Ial/X0gB4wWTUf5kmnCEwMzSBnU=;
	h=To:Subject:From:Message-Id:Date; b=RxUzETxPk5glPVR+BTm7diubqueF0WeOlbK07jA3Zvfa7uN1577wHtwkyCRhE5N7nE1siJfWHH9w/vvSHmgbTvtShPc9/jjqsuWlR0jABzGUb2XqsfA2rteTrnwT3Ib7uzq652MwfwYdk9l7ANkctdVNcZ3EW6pCQglDS6jxEiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bvzxa4bu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bvzxa4bu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE40EC4CECE
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734246353;
	bh=uUVVeQy16XfAtcv4Ial/X0gB4wWTUf5kmnCEwMzSBnU=;
	h=To:Subject:From:Date:From;
	b=bvzxa4bu8VMVvxH2dVL96GP43S065O+7fieeIVie5vHfEqaUZE4IktDGDvyuxNVe/
	 55J9ThKMVE9dNAXx1UIhsLxO3E1gLxEeyWnCZBnoEtZL8H4nqyyRg+kvxXdP3hF3pf
	 0QNlL1ow+lJF1ub50/y2r2Fz0Kp+PBiIO8pZuOoioUEJPNfvaIeg35Iyu/bnbuzHv+
	 6s6le62JKCiYvSjwmFsM6c6PCX5LSYK6642FkoaOTqzN+viXe7XNgj8GmegPRHu3vI
	 GTD5W/05uqvwkxBizmR7e59ogMDTAuMQMPo1MFaTya4J37Iy9BMZHQtZTZ+mF0dkv6
	 DcNzUDH7YqYeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9616CE7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173424635359.11731.5079080213184189550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ad464e07cca6034371c13c1f9a4e564ccd729e544d7ae33b22c2f7aa9ba7fa1
Date: Sun, 15 Dec 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734246353
