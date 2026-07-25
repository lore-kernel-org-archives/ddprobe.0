Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F4628D8D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785006634; cv=none; b=hdjQr0a7+uvha3IBSSOCvnRf+VkLFF8OwrEX5zSTUR1tOaGk2tqAhYtJF5y3xUuHO9LgB9k5vr51gdMjE47/kgFpQl34oETzGLme+ylvCQumNfsrRh/5TkwDIiiszdxIvCkYcfr3aOiWYRKQxfP9yRbBTDPW1f000G00uTwc34M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785006634; c=relaxed/simple;
	bh=+ld3Yk7dkAmVb32eUkZf86qq88U1jxVEC6J1qSzHqlE=;
	h=To:Subject:From:Message-Id:Date; b=PVdmB+9Gtdh5j/EA8vCkNOSdWfLc68T+SnHxn/Xp2ty1WEwCoq2vuB24Yz1yeuYPVSQCBeSalr55emmMVElOrORqUH/f8QL8fCzBAMjfl0S8ORWXrspGuA3YftrF3hYIaoy6whumOlkF3r9mFRdoLfzhYJKde6aA0RpeRYNlrCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ume2N1Pa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ume2N1Pa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D62B3C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785006633;
	bh=+ld3Yk7dkAmVb32eUkZf86qq88U1jxVEC6J1qSzHqlE=;
	h=To:Subject:From:Date:From;
	b=Ume2N1PawD/bnlycJDBkZLazw3PYH5h4CuQG7nXOb2lo48IsIACAJXYDXogd1D/B4
	 uPewotXLDU+WpXY0tfLMTO/NPjxPq0riR/o1hF2Zo226WLEjmeoONaUl0gsL2N2OPJ
	 pU+kwEu+0gPsyqdL5mZziBSh6mWDpNdNSJdwLDKxol1k0PJopqF2VF/kKmleYl4yBH
	 M5douVu/SdVX01BhI3sW24i6BhkqkPN7S1iRTO1ObXhGTexAjfM0UOd5Jb7ipAaKc5
	 LGO7VvHkTw9Z725rt4g4UEQvekDEa1WbOQUjSMbCvPd55pNgattyMqbCrX+jz/6L6R
	 ctvVXZYUJzi0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE765C531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178500663368.25378.11557017046489411970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89b61a93c40ff8eff747c33c61310fc8ce7aa7e95eb559c5cfdb711f0d2f3f3e
Date: Sat, 25 Jul 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785006633
