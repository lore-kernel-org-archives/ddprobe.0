Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D1F76C61
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754982594; cv=none; b=fvqZSLrHqKGG61lPESFjkbmM7MYPgMLFzoI/ba0gO7lARkLRyMLseRpof6YBWPXO19MYpyIAMbWbtz55yxIxoavnYZdDnLlnlasjOajk1L7l4f7fPO6tRSlUKoo/NzAguwwfCnsYLPhD56tzV4lC/cTxKPAOTO2I7e4HayFjvRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754982594; c=relaxed/simple;
	bh=BdYKM2/4KrpalPN3jH3JTGIsc7lI0RsyfDOM8evGn48=;
	h=To:Subject:From:Message-Id:Date; b=q2hG1YUBvzgeRsUod7YQ5vUd4nVjKVRWxD4qt+8pSF0iK7hVqzqP7HG9IqlJVGCvk+Anoou4UQRg23Q3JyYMpll8RSLOUDxN+dGHEZfbiWmAvz9ngy2bfa4DI5qXqKHpHZWcdzhXfRfTfToRcyQz3npKXQjVP3VqR17GE3s/1so=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LV9F8JyA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LV9F8JyA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F6DC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754982593;
	bh=BdYKM2/4KrpalPN3jH3JTGIsc7lI0RsyfDOM8evGn48=;
	h=To:Subject:From:Date:From;
	b=LV9F8JyAIlz0/555gNF4X+O9yA4ucguNcbQRUOhTtP8NC74kJH0dVJqXzN2Jm+9Rd
	 nTfvlKHwYEFRUvbvGyz2Tkf46niSUGBCVMkjTr3AkutjaVfzJHB1Ntuevu2376SF/h
	 1WM1Q7wv3MH9PyntBOXHBroxH/MywbdVbmDhOfRK3A07oEmivEmjazXzrL1jeXebXd
	 Ji9+0mK0iZU0ZuPhdNYAV+T/EsLR8+D+DM2z/meT5Lip2j/37YFTtxhUNBywVGRTA0
	 fjifM6b10hq8XoPLWHZNQoy+6+US+yKLtHe2+vT0cycTcQmemshWrNtZ1MWFeW5IOQ
	 8yTG/Q20Ckq7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954E6CA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175498259359.22248.3866564197298412213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ea968434d0a72f133a6aafac379498e41ebc6b2934088c647a7f0eedc9c1056
Date: Tue, 12 Aug 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754982593
