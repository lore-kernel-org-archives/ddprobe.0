Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC7E2F619D
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761735594; cv=none; b=sdgSNZMlnSFEiRCXYsnKJDrTJB7xeMW9AAZ0jZ5JKC/dSeUgrHInG+Xaf95JqOKP+wqRL0sH0D8L4XGXX5y7x0kJVy4PuCr8ApyprFi6H7ESS2Kos3qfDJs0khoMmDG0Y1SEhTSRkFWXRQBeffC6LPo8UN7XklYIY80/sdvIU0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761735594; c=relaxed/simple;
	bh=TklBkfUhwrm/tTIW70GdO0Y5UJKTBewZIMx0I2t598s=;
	h=To:Subject:From:Message-Id:Date; b=gjN+brNiIx5mWF2xGmDpfeY7j7Tvc7alZ+l8P98JnYFMQdWukHHB3Rkct6kei1Db6NnNdOD+uVyR5J64WKd1phRpyD6v+lllpdtXfpMdPJepfSdOokfII/bKJ9Y8hAG4gkecdL7DoYEkM4EXozWNNELP1GMhnnMT5PtFg2wQHho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DhoN+anI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DhoN+anI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B38B5C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761735593;
	bh=TklBkfUhwrm/tTIW70GdO0Y5UJKTBewZIMx0I2t598s=;
	h=To:Subject:From:Date:From;
	b=DhoN+anIKPmrBREhGJfei38Lxp5i9oxDmTeyKViO8sLozaUssmd4+YlYLKk7njwIx
	 PTMk6Qsm6kNaIGRJafYUvXfAbE3KGrawovfz9HQKGPuUp3VZbfLlSa+7fLhpeeRxGl
	 p6i0gmKZ/SjS22Bd8fwBjeDuGyVldhMe07/K1pVPKyNOs5VS3UOGywLojGAEYo5N+Q
	 7A13I/GUH7b4g2PeXMFzinjwQJ8KLbC1GGksSsQC7Hc1mndGWoINPaBj2/SxDeFkDt
	 7NiSN0sAGnyep3g+blS3CLCV9KcleEFhqQK2abr5+wJfAU8wibafBNuhDRZmJQpkEc
	 yEuXlZv9Z3QyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BAC1CCF9E9
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176173559362.313.15188634420462264601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0cca5e645e15d886a25c4829eafcaa677fd90d7325448e703c9cce098b90a1e
Date: Wed, 29 Oct 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761735593
