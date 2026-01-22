Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DEC346E58
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769093634; cv=none; b=srBfS2omalf3wqJsOeBLIE7MCDbUoaGAxKLw4yJQt24IVuh/Ynl4Jk3YIXbmLtgFSVPC2jjE1iev4y6PEwAVptrsgCEQWKhQQZ/RaJVbX/Pxa7TYjEizpxV3i255nxRCXccHU/PyGj1X104yub9zv+zSOcRjhgjzG7lPr/K1M7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769093634; c=relaxed/simple;
	bh=W9q/bg/Rhz7bA/Doo+dmHXJwgHEx32CJNyETsxuwo/M=;
	h=To:Subject:From:Message-Id:Date; b=Un7WOBWZ1KuFCzMrpzQ4iVvq+ELS8hJwCPidnjI7Ro/TpioC0QlaJR2NPgMo79GHK9P4a0eVKyR5BIMk3hC71JZ0nRCE22ba11KQtL1k0FuOAiQ/XAQwIK/Lz0712VOhXrsMKoSnomcne3khpS9a3tPG8dejqKYmbenBf3mK+Xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DgVcYyPg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DgVcYyPg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEFA1C116D0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769093633;
	bh=W9q/bg/Rhz7bA/Doo+dmHXJwgHEx32CJNyETsxuwo/M=;
	h=To:Subject:From:Date:From;
	b=DgVcYyPgAlOScavmiXKIGqAE5yAuPJ2/zpzB7g6+dxLMa35H2FEfDaiYbbZzhQ/ux
	 UdojAo2IjdWOV8b31ImXZrGMxGD3nSFq2D5U/1TRCH/PgbI+l/0+mgLHC5BObqfIKM
	 76n/ETltcwtQbzlN1zVXEstCP36GmEdakhxAPhIImpAmlODiwjOYO6ZTvqqwQcqHqo
	 IRC0YfCso5G1gFAp7aV8ZD76M/tCZMEw7g1aAfiCQJnZobunXgNC7OxANfMS+p8/OU
	 Q8YJOW0Vn5xrt8fnsAB9zZxJPTPE0WjloFrN8Wsdca9G2HZGVF+AX9wcrObtO685WI
	 oCVxsqSCggoaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE54D3EE6F
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176909363369.16946.18225243535830556885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e25a6e0a33af3d83f594b3dd95dacc5014db94013b493531e9c7314f07114932
Date: Thu, 22 Jan 2026 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769093633
