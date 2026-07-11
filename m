Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB02306776
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 18:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783795114; cv=none; b=dHOwtle+RobGwye8jR2HX+Lag7at5znaHHN9gypcidz0s3ExN0PuEdXPFq+YmIvcQnwcLN91Tt0fl+jJCf0sRkQ4FGrSsy+/GKQ1xA6ERRwrjUOyWFeSexFnFyvPm59BzU8tDzq8oqE8ivzd4U6jZlPTj4n0QiLs4i92+W8vtcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783795114; c=relaxed/simple;
	bh=ZYJjVl/4oNi0fkfkymA6FBZEqvcidJFyYDyCdFVutSA=;
	h=To:Subject:From:Message-Id:Date; b=WPwyz3sGF4YdcWjTjwHYKxrG50WaEyKA7sE3LA4GE4469jAwT5K0S9Vwevf76f/9kpcQEDwGPTOn0oALuqkRDHjfSRxu7i8xBqZxF708LLQrFKoEFlTxRJKUNitguK1ny8vKWhxBmiqhjN2sy3OIECyJ7sAZyEppMqwJiE9+uso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DqHO7r72; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DqHO7r72"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A5CC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 18:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783795113;
	bh=ZYJjVl/4oNi0fkfkymA6FBZEqvcidJFyYDyCdFVutSA=;
	h=To:Subject:From:Date:From;
	b=DqHO7r72llJz9e+U/0GzhepUcGme9JnByO785BjsccaKAXsOiSAH0PrnG/o8aKThn
	 01pDZsxSAqmohe56V1VGW1poAvZBFCvdWUAVSr2QTxhRCAYD8PWLgMFPf7osF7RC18
	 l39FinVs4u8Y39U+9KHZyBUkaC7z8WZQcMtfXfKpVMr3x6p0UHsflZTWYu1GnZunmH
	 ayyt+Sat+/ThfkzQRBtm0wTmnLj06mbjlGf+pI309NFo2X4fxchzmHbY6IfyoiAzuD
	 80K6OrdWxY19ipCCuzejgaTQ7cuCUsdTovx3SHsPzxr1yuXbOFIgjTrZdIHccDS+Zp
	 cS0z3YS2aK5lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A82CDC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 18:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178379511368.25860.5803577690569574189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 405cd4888539b5db879e5101d9d0bb7ec5aaff039097bce1b55f7bf2744e6e5f
Date: Sat, 11 Jul 2026 18:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783795113
