Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3B617D8BB
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722362754; cv=none; b=MSpPQOuoCGSZJWGCzRn9yFMyuiXKL3G0OwkwRSZ8zvmiSpwl7tUcse+WZ8weIM4JM+XRtvjzjt1THjLYBKH1ex8Ro6TJop+v8LReVgth1KJwK/Y5tkYMefkEohl4lbAU9ATQR7nOkPfnacQJ+VhKmdrALSvjictyoHOQsT1CxAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722362754; c=relaxed/simple;
	bh=7VH2ykhQkmsLdpaO9V24rotkDpwH4qB843O+uTXKpHo=;
	h=To:Subject:From:Message-Id:Date; b=B4NOYk/hFOkLjEntt1FHQxpl5hCrfF2QKkTpIs058Y4oHiCdjm2CWHl1ZbK88vfNvv5tvOS0tUCmNqUoe2LhqAriVeVg3kePc2/gXxAiiQPO8/E9y9j3+zhdTHbHjLSzPhMfe8PwK1eZ6qFwXpyeZIR/SCbi90TpmNkxCd7egBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vLX0AfY+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vLX0AfY+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFDE4C4AF0A
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722362753;
	bh=7VH2ykhQkmsLdpaO9V24rotkDpwH4qB843O+uTXKpHo=;
	h=To:Subject:From:Date:From;
	b=vLX0AfY+tD0U7GvXRNe17qyuN3cQEqQDI3+BxienLH+rpIPOJpiJRbVpocvsPxmrq
	 qVsjURL9/cMwNsdYsw0LIvhwtGL/bzH6OdQrs5DS/sFuyCVnAyY1JaFiX40uDnMsYN
	 cC/tYy/bmIALs7AXoQCdWr8f+FYVW2djieF52G2HACDdc0eTCee6J45mX4uyRUmaO9
	 xRchA06RBW0pjr6RTV5qxT7cw1gW17VgPP7Ou01YrIsWQ7/8FavDsRz4cEp6CFyewu
	 QtmJuP1mlAg7A/7hSPwQSqf6nxZ5a6KyuW8rlzkQxHa3nQ/PQV7VVlfWtEyw1Kj6I4
	 8eDmY5KI7mrFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3E9FC3DA70
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172236275370.29477.11656412027417226954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6873b8a948d5c9f75f2dc7673fdd3810040145baff54518a6f6eb06ba4f122d
Date: Tue, 30 Jul 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722362753
