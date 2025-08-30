Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D70944A01
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756513193; cv=none; b=HurZ0VK1xfaVnO7ujupjvduzmyat1hfmJO8VdmKzGmbH2Ro1LJsXu3jQCeIBz3W0pt571GeWxI9fyE8KI63IlRi0xVuZn0GBWkczA/4D/ra7g5Wq6J2DUg2Z7+Y2PzUZeDq8TpOm+xZHaVAfw7f8OU4jfS3bDcC3Cgzs3wg66gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756513193; c=relaxed/simple;
	bh=Y0J71hMeb7V0gpMOqXemZhw9VXP6/fzLNechn1RhFh4=;
	h=To:Subject:From:Message-Id:Date; b=PDKiq9oIOf+BnKvpfCOzMzdvSDT87E7kOW9F8U/VNpzJs0LW25NAiwV03krjZmf4rwEKURqv69gHy4LIPcZch+lQ2eTv7vxtvQpSG3eAp+jRtAKYtRXw40goz5HxhHzBYMdnCDofKM9BEUMg7mo++Ad/a035tGIobyJS47bTga4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VVVX5Xjf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VVVX5Xjf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E82C4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756513193;
	bh=Y0J71hMeb7V0gpMOqXemZhw9VXP6/fzLNechn1RhFh4=;
	h=To:Subject:From:Date:From;
	b=VVVX5XjfqdfrukHM1ikCkHtnZyb0RdZdwci+9d3Yu89yUu0KSfm51Dw9+Jwc0q3Cg
	 1GSnkB4sOkVNU6SipgZ5w0V69J2TobuQ/Hti20CdX1Z3v6gDv9kUa6cajXDJYTgph/
	 eRnHoq+/AHl3HpCcUQBlCOh35Gxt2PMdv+IlNgJRIw8xSLWBIBqgqsR41QLFizwz7Z
	 ZULnnATd5DWlJqcH4U8x1z65MuP+xsJoZGLix/3Z0ODmziKFqKgy1AtWwd/nWzv34p
	 r7yDLLLd3prIcsTLtkOazAFznDweCVJaf5HLGXTh5XqItv4aNNG0hebdiQsdd0fXPn
	 KpWKZKZ113wyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9171ACA0FF9
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175651319357.621.7362468667790834145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 023b836099c3e0e1116c7fa1f8437a91b5a0a79fe9f0b3872403df525e3189d7
Date: Sat, 30 Aug 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756513193
