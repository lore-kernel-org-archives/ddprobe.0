Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 579AA1922FC
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 08:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717574783; cv=none; b=pJVmmP/rKNB0FW31CeIXQWzKWCQ5Q/8wsO7zpiLgVQaAX5ebJhr0aNnoruFXwxujC+t+slAKzgOCTXhmNpI2+kMlr0bjQUQmJyvJYPrBBzfwVHfDt66hznqV1bk6EQqqp+JAKTnbzExwYD9VpSxPJU5DhV5cuhoYfGZvKJQMi/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717574783; c=relaxed/simple;
	bh=MLV/rSkEMu+yIcdGlAap7JTQTlBdN977a+haO7balnc=;
	h=To:Subject:From:Message-Id:Date; b=SaxDqoiAamxVHnVI4++g5ej5Eek+hnQkIw3luh6ypfy5c2QRAoFI/iC3w524u2cBtL578J6RoHGBwJeEL+myS/F3MDLjIw01Xo6WsvpVUN5okHbWG6LXl3jtIAs7hIXMGFy7iA957fjWQP3CasIpcgBWcIBK9snlCcLuvrfswwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MikFDA1P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MikFDA1P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E400BC3277B
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 08:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717574782;
	bh=MLV/rSkEMu+yIcdGlAap7JTQTlBdN977a+haO7balnc=;
	h=To:Subject:From:Date:From;
	b=MikFDA1Ph7lK/R3IjpM+bU+sVKDBaBTUDEbVKdE3hSbpJQ+fX/KBz+L9l2MVShvgr
	 knQpvlgNpzRHsnM1zLasYapBGWu9b7NWWSkXeB1l44bgZl5s8w251v3cBO6Lit9fx8
	 v0GUO3wgtQAeqPiLEcy4Xu2hitLqwSKp2e7lPDzn8gZ723G6n6HnNQI4Lz6qMuR1FM
	 UMVyc0sLWn3kGCMUw7VD19X2lpEgjZuoBbAnRe8Ap3kc4VAhO+3H9nltQ/+wp/CCro
	 YXLMO0Leh1ajhIX5XkEKuiGhXTaVcT5Zvvl2NSB8yKimfZZObaR09wRKEO2k9jQ5Q2
	 5NWpqaV402D1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEB71C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 08:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171757478283.9544.13588073249419950401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48e29547770859472a3b3ba0fa228ce2c3a3786861b554457408b9dc8ce81aea
Date: Wed, 05 Jun 2024 08:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717574782
