Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEE771A070E
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728685554; cv=none; b=GhIsL8NAyzEVh99SWr9VCzmatTn9xRv7uiExFxqmGN6jqHx6c8r3yrXapEVEB952/k664Z9FbPtcQBPtV2xZHGYSKKFqH5RXfiqbBR8OJWkAy4WVL7JUyc5hq0MxHkaixHnyi6hAu34IDhyD/PL1EvD+f6w9V4dEp1FL7ox3FBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728685554; c=relaxed/simple;
	bh=RHfubDoGmdFubLhn5Ef0YtxjixF0KoII8DGz3+AAAPs=;
	h=To:Subject:From:Message-Id:Date; b=VO8zltPNbWtJ9nnLx1Gcd7yJGRSmkBhYDOZWmjZzyvWIHeIEJA28uUFKBGWUbPLMS3AcZPP+pxPnr8c1PMD1KnWA+e/jdYJZlVyhTr+P/C30DxWDYwNhQQi+iaOrV6wMwIJ0xISeNwtLBlHD5fZ8xcFBY+eDmSGtVFX07fJYB2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MyNpkdjl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MyNpkdjl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45E6C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728685553;
	bh=RHfubDoGmdFubLhn5Ef0YtxjixF0KoII8DGz3+AAAPs=;
	h=To:Subject:From:Date:From;
	b=MyNpkdjlg/mvcW3YkYTB6urNCu2fI9dbK82mGazbLwgSwzS73GQ4ZXw8dJ6tQjbP9
	 E6BW5iQVe/2BybWoTf7PePcqnjhWR/Px22/N4iNGnkM/MLMmR9aeqChzho7Ls6w3Jf
	 X07LoKBGYv2nqcxFCpMmM+fiv//JU0f4LJR99LNEGlpN78kSfuVbbfCjfqiW7LInvE
	 /hJQZ7wvKWjBAt5fNKCtp/A28j28L+1NckSTpYon3TLTnsUy6akYYrEMIyTdS10Fkc
	 DmkA5J6eU/I9aHxo/G+hA4CuzHAe7cM9pNkpE/9Her0Y84OcdTBZzF3pKaGSkamKfl
	 fHrUd/uRuDRGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF2DD1A426
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172868555358.14929.17745449209264067400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6c8b14cb3cbc5da545e84b31fa35a828238c65b32431b4a0ba2e9267a81db90
Date: Fri, 11 Oct 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728685553
