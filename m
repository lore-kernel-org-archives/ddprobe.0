Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A319303A12
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771320294; cv=none; b=e0sOyzq0U8JZpgYPaF38cTqOVq5s2/SuOS0fLtgTqtSW7oAkTPNjibVos5y4WqYWLW5EMt3LlLyzP+IT1rkJJiH0t3fJY7G3Twnbke46zmFj9E5MSX3FZ5pQvw2Z8YNt9vsa8GJW4lMoEiIhoEr+MSNodhlB+T+zUkgJL+9cCBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771320294; c=relaxed/simple;
	bh=uWp2VCg2bv+i9TlSbQ4vH7BdNJkla3CaJTSY98AVeMs=;
	h=To:Subject:From:Message-Id:Date; b=PlAb2oBAGqlyz14RyAeT5nyIULag4GphgP2oBu9mc/MfWfvS+S7l+UqX+etMatUoXECsQQN8NuAni5STw0nM34674bhIVpZeveGBJ6bzeV42oUSHD0oud99gNDLjLNRsRhJ+L4VuoStB2XAxzQSvnWIBSUqt85WVG4qCb9cy5+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f2GlmXO1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f2GlmXO1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE726C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771320293;
	bh=uWp2VCg2bv+i9TlSbQ4vH7BdNJkla3CaJTSY98AVeMs=;
	h=To:Subject:From:Date:From;
	b=f2GlmXO1BrP3oOuam0xp6RbtpTlOQjC0Gxh/Jxj0cgSE4Qqd3gMHPYqBcMS0eL1KC
	 BMnS8qzOtitHWPpKic/0eUYnUjw9+0a5S/JKTGV8xEXNjE3NbpbXCmgov8d7fxCKrz
	 S7BzrcOBCWRqAH/372USSUAy2DWeA5FpvQP+KAOwcySmVQQ/uQoZ8jE7woROwTpQV0
	 Hetfo5Dxs1Am5zHWARoNxYS3m+P8uL808ZUuBfa11Y5v3mlVzIjAYua1PhFFtGolpW
	 Axbaa3eSkTlMFJMkHt5ht8/b8UQJ7iTBHn1a2I+qA3pS4IhDpHsMZWd+ixxug577pq
	 2sozNt2v1inXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9875FE68152
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177132029361.18512.10977590658529196094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ad382bf7a97382bec225e2ac270d3e5255b5fda08bec995d4f3a85d65b3cb93
Date: Tue, 17 Feb 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771320293
