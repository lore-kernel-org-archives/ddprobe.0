Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194EE23373D
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759275594; cv=none; b=WNjK/IJuHsP61SpSjIPpmTNdhJ7Tie7a1SLCTLiltQscHdSMkiyYALOMs965DAjbq8q4w7bOmM1wOpVxgxO1fMs47zaqmxH36BJnmOQzAhm30lmLK4DsV5Xmb3FKOObX2AuZBMxka0L+ByfFadV8H3o8okY3bRUdAoW5Ul9fNjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759275594; c=relaxed/simple;
	bh=W9pg/CAgA22S5ITzQAOmQ0c3Gy6HlydYTHuuGIwAlL8=;
	h=To:Subject:From:Message-Id:Date; b=g5t5ItXzCBwBLLB2+mp4XGMdimgfMnrLyjRK2NgCBZHPd8eFa/cyvM6wpW54Hy23sZ6HXxb1i+E86jwNzAlAr4ntJt1muH9N9kt7cFi+e7KKvgUnhKvXb/rk8+wCcyAA85BlYmb9/CnigikcNcHuWe04vuKYfXSYyqVpjYyA80I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kvUKca+w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kvUKca+w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4860C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759275593;
	bh=W9pg/CAgA22S5ITzQAOmQ0c3Gy6HlydYTHuuGIwAlL8=;
	h=To:Subject:From:Date:From;
	b=kvUKca+wa+7PmPKWcxSDopzM9w1QckbGGfHhN0A6YSz+aAFiUxhgekjU1CIk49373
	 SGA88zpyzgYNn8QOGIqm8wHz0q7DWwRt4fAqaMuw3QMg0m0GLjMydo6LwOOkD+JUEP
	 FUc97MOEzqVAZpKoyVTC5ZkbGSd43EredMbPr+H6RE5Io9QE1fA6LMO0AHSdfDSVAP
	 yHtduGj/ys6IXnMWszk/xu3bB67JDqi42CzUtn8/XTSLhY/6JfkWULNbbBGP4Y2D4f
	 2g8uovd6zP1mrpmHAqoWPuTs2TgD+M1Zm7dXXYBN/S/QVpbR6dbxPGJZrJ6nGm/Jyd
	 KBnJWnpp16DSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92413CAC5B8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175927559359.27765.13735078037458935157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc9562082e4e46cec2010510376e3703c0c84df153503888e3edcde5d22a8b60
Date: Tue, 30 Sep 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759275593
