Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15DD836CA6F
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761847194; cv=none; b=YY1B68BcegaNOGL5tx73/nM4nKN9PADT2OuaVKIw7oamABrqPRyXuCLYXb1wlJdaIMkwR9ZZHPIxNui+dvUZ9G1lVd7l1UNLXYKQ07+Ll46SiYnK/MzhZB2d4P/0kH7Oq3MOr8XWXXorZUP1KyihNP8sn8q+3GGDCDSKk6XCll0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761847194; c=relaxed/simple;
	bh=E2aKIprkLvjjl6o35qX60yDFa/tIOXPNC0WHyFZH21g=;
	h=To:Subject:From:Message-Id:Date; b=f1KIQopbWG+f6jo2sDn9TkXGyTc3ZRZIC3JNbWy48eEOhcfTPZkXQzIcmE1kZsYjkAaID4zSrtOJd0le9LZRhXtfiqLSTw2PWYHZ5M4l0M71QiFJRiHghSX18UiE4Iei7077t0exbEXgE2m7EjqqXCnATfw87qs1QhM53cEKWNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AnN2fL0K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AnN2fL0K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E022C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761847193;
	bh=E2aKIprkLvjjl6o35qX60yDFa/tIOXPNC0WHyFZH21g=;
	h=To:Subject:From:Date:From;
	b=AnN2fL0Ku1Ea8ySzMfVThchPGYkeF9PDauNWm+8Vciq89qF5XYItGztG8auxblLOc
	 jGlo1hmNvkYQeC+LgIM3ozMu7wZWx8fcjuY+96+8/k+ZrX/FYx1piPAYj8iaay3E5a
	 wnEkaJ6Nb92xOQ8KGk16lVyqtkNNFoNnM01GJM+/EOdKq66J0womXICJUvOBqhnm+R
	 NYxf8r4GE5xhMKXBG3vgK7CrrwFTzr+3VZ7P3m0m8TlnHzWGTc4vMDKEnbBX9Gx1pY
	 FY2srgRHsZXUI1dQaoRLhi/NQxcffwk/YjhR2l4gS9wHjn/DuLxssn4kLygP/c468V
	 W7pZ3MWhG0K+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907D4CCF9F8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176184719358.11589.12597487759629349226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 725860848e635fcf928bcc0c78033291b9d8c440ba8777335bb448914bdd8a20
Date: Thu, 30 Oct 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761847193
