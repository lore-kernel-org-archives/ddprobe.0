Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FAB5268C42
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758367194; cv=none; b=CcLYNcEvOBYIVaFEQxfrzNIigNKQ9mwt0hZ1M+/mjCV72m2pIoyJ0BzACUb17huRmG7rubxglkFe31+fFzTojlHpmeUXKWLapApC21GQ5wrYE5P9PIAord2jTAuexOMMIwKVmsScivL+jv2o3hq2XF+Rjeh9iXQPpnLoCOsreL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758367194; c=relaxed/simple;
	bh=8JWHg09UehjVEazzoj48MNl9tOc9rvEWp+ZwtX2Xlr8=;
	h=To:Subject:From:Message-Id:Date; b=Jq2frxOGY/LMa+7in3p2BqH6CpddGuLPs1Fk6YsL2UCSG11S/NT1ChgGS3d2tCS8usQ+pjYoNulrITFTD20Fb48jESfd4PviIjLD2MB8go8QKqjSeykL9YpKkVKg0IjvOITrvtWbcgmFc6Ogks0JvVvpS0SrU5NW4Gcz1GxXZfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PkaRkUNW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PkaRkUNW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2B3C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758367193;
	bh=8JWHg09UehjVEazzoj48MNl9tOc9rvEWp+ZwtX2Xlr8=;
	h=To:Subject:From:Date:From;
	b=PkaRkUNWy602/SSlWXD0gX37xQoZEzfQ+eU1ENba/ArLitdUYzuQIcQTgB24KMrpP
	 hOiTumi/rMnmoyONBbiqx2G/a0rBbPnKhBJplaqmtpdrJDgCQGM5NoFcUoPIBa8BxX
	 AbqRM4mGK974XhSxZ2urCWqBH+kDDMa7cKgIurujYhNZF5Xh8pGdgl3RP4vQyXAE0+
	 jilpx1XdG3lJ/8rfx6WEP3OS4MIA4gVQTsyO82rLkbbbSDNZ3SMXQq6dnvDB1IBKak
	 JmBQO04FjOeD7pkmjCh1XFFS+8c5cFUGmjaW5hN4MLsYDX+zYn44pTy4td7xXGz5Ke
	 Iy2WNgaXLKhrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99947CAC5A0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175836719359.23342.11270875314108951070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 313892b3f2cdb5b571a83e2f9415fd1ab9288fb289a751ea4406a249a13c072a
Date: Sat, 20 Sep 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758367193
