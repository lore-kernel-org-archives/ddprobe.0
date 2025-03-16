Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55C99174EF0
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742162394; cv=none; b=L9ErAjp90DqyEICbqXJlgKjk4pMlHytlShPXt1QBVKay0eED0c9sRFf+PSC2rnDStwtxxEuWRuyUo/4ausF8XAQGOm6EKzeD+YuLLIPPPzmpqRz6Gz2qzSxCpnMknd2ePm+eYGIucBYSpxoIGIJqwgGHpFrbXSBySlmeI9B//A8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742162394; c=relaxed/simple;
	bh=ArkjQy52FRBz1AUxVxIYEJIn0oHyswZuKlT6Q+Uw0oc=;
	h=To:Subject:From:Message-Id:Date; b=LB6lshdUVWq1R3GPCkKir9jNbY7T4RnM1tfN0TSB3TvTvqF1yohsevF8HHaOonpnTDDxhwZ9COh0aqqDQKgA1pVjuTnXmumBjmeEOIR84Bk9fPv6ArWe1M609ktoolQ0XklpWnDWlXBmoPPsrv9GF0XaZaOJF0LKBs2tDychSSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kn7IHBbu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kn7IHBbu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB69CC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742162393;
	bh=ArkjQy52FRBz1AUxVxIYEJIn0oHyswZuKlT6Q+Uw0oc=;
	h=To:Subject:From:Date:From;
	b=kn7IHBbuJVtosFx1wN3lqNCHMgmKajIxtwJ83vyxN8A0IVgt48wOTUjktmYCFcQYT
	 zvcFXtXwcg7jNqkd2i50riPMKTet4s955ekXnlquOKOBCafAJ8/LJhYGQupPRoI6ue
	 qTvxOYrDCcgKojCOPz+/dh4F+Hqj4GXLzAU+8hY41YJW6ptXt9CPIopwa4l+sb+LW/
	 LiVlR4g5KVNm2ok2pKBfOzeA2I8Uu+2fS+aVAhHVc9voC0QhfzjFnGwuJtywSalIMs
	 z7/Qp49Z9EJi7nItlbj4g/7eHUCcWQME2zIYbpwlXQn/cfmbCvlUhqyd8WJTxMR0CN
	 wQpjpK01wKH8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97594C282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174216239361.31689.12228765481493372011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47cf2cba510b80e4ecc8d6dc49ae22091ee8b534b7e275d9b92771c94a91175d
Date: Sun, 16 Mar 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742162393
