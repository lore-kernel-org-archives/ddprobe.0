Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02572277C9E
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762931394; cv=none; b=KxaEdfTVGC6NgHKje3e7TM98HobL3MtQ3QgMwAqbzmw2oJYyZDYrhXJeGM+AVq0GnQ5zCplQt/dCRgpLjyxejEmX4HYwTmEVf1raE+YiHxohqx1Flnih0vpa+KMrHeV32Z1NzVnyqfoGsPIkEt2wSbKlrQCQc66NnliGbffdsfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762931394; c=relaxed/simple;
	bh=OS0GBCjj8sSENWy75PvXDpcSWGOQWb3qPX1s0XMD1Ts=;
	h=To:Subject:From:Message-Id:Date; b=iJa/PanVyVoTaxFUDgLcoJ1+YyT6ftUA6fldbev3IOBrAXm4TvyRF9M4xR0Kc0SkySZ0/HvC76VBjJe6cOxLuxXFp6fGFEgaur/6fUbf+a+iWv4JUbPizaIkxtL+lQX4h4lx+AsNDa0ku6IrL1IR9pVuCxZIlZjlbFTQDg2fvhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JS9OrGlU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JS9OrGlU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A7E9C4AF09
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762931393;
	bh=OS0GBCjj8sSENWy75PvXDpcSWGOQWb3qPX1s0XMD1Ts=;
	h=To:Subject:From:Date:From;
	b=JS9OrGlUiOszYpj1sFvY4nVhlpZxGPB50CQNT/w3ktBkKe+awdL1e/1yTHyoxsIyU
	 ZtohkaKG6Jv5EfWkjsLwfKEJG97yym0IoZ8ZzXS6pTYk7sf9Nz8U7Dbcx5f12SoPz0
	 +OOE7ccBuMSAjV5ghohzXJ6YaPxKWGgnHXNv5Ns6gYTu4Gvfl8dPjmhPCN+4Api0uj
	 UbZ9L0kGsbG0wQunvhuBcTca5/E2YE+gVPkEYgVXWz0FNsRvG/VZbDeH8t/cpYFncX
	 XenFcUjKvtLh26tjPpWVxPUpslPMg7HLvTP1KjmjT3RjTVSL9RdN2fJnJH0VBkhxIo
	 wRxiggQHOlr7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBE4CCFA1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176293139357.32233.6761980353115655870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c042a98a7628b5311724bee70cfd8f13066a3b4a1afe26faa4cef169723f122
Date: Wed, 12 Nov 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762931393
