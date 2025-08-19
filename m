Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2087C32BF2D
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755607794; cv=none; b=psgmGDKv2DkYXWnm/nluTHPJ4iW9JwVNl8FT1mw2nVOiRDzuw2pYSTPbJU4uR9W6JUf00oTWKoaM2kTOKHhSDjZx2Tc/Rx/nlnDRXHSOT4XBz6hhvFakN0jWMRUyp4uvs2Dip0MNR+KzCf9GiD/HRS398tBd6sth3pYd+vKeQ/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755607794; c=relaxed/simple;
	bh=+SLvfXF+8LWazf/066Hd3yV3QXAhmAznPfNF1g0v0QM=;
	h=To:Subject:From:Message-Id:Date; b=g0Ip57sEVAlaR5RwTFyQi5YxCG9IdzuxXlfLhVyKjvWCrK0/cOeMQvkkbIN5UEdJ1Dt3ypD9Y0FigrMkwIyO1rUdc1M6lnN7G2q13tAnCHvOiR/kZOCoHUmjJpvXm7bEfalD7GEdNOYFXC0+gxHRF0y01nsejD7W2Z3mkEiZzCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jN2OYtLM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jN2OYtLM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB51C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755607793;
	bh=+SLvfXF+8LWazf/066Hd3yV3QXAhmAznPfNF1g0v0QM=;
	h=To:Subject:From:Date:From;
	b=jN2OYtLMUINidFk6wT7/e4MRpAd1hDUqysRxEMUyhypoCsS4E1wQyOaR6o68r+TWZ
	 GXexmZ3aT+Z8R3LjPvzTYMk/0KDRCyg01Gn4XxBfALLRsOSESx+oU+nRsOwk8OdhL7
	 nrxVt9f+Tgf9BK3fKPkRQWiVJ4unb5vaGNUkUemqisMoxnoHCbFelAjm/IEajFEtvK
	 eBdGAl5fH6jHN+Q2JiFgNZEjiUQz6zjFc/HQakPrHb2y2+tXlXCfNRdnnEYDG0mlnd
	 HHcmEPslFmZPkLcms4KGbcv5g8rCmtnLzIXiYUAicapHTNw6kLPyTMbzX0kDOtIeoK
	 mbU90HcLMrMFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E333CA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175560779357.2910.2938431115253036582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e49173f7878c6ecb51f48ea37acdbe1ea07466c0cbbd967c5fdbe6b21a08522
Date: Tue, 19 Aug 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755607793
