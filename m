Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC294A32
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760224194; cv=none; b=q8jWK5p1NRVunfco8B3ium7EnUiH+bJck/TFJ1EilwPIpcueb9FSMieYXIF6uJmQXiHiJ9dHZCg6Ts4ujI7De0wtRBHlWVYxLI9kmH4imGMp71AMP5cqhw269Y3gi2aoOIUvk7zvx3Js5J6Rt9/zWdPcdz9VbQYoBqWXPJ0xBsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760224194; c=relaxed/simple;
	bh=CYQEn+eEHSE9c42qYHqspQzNBdLyYBOR+uF/VvI6z4o=;
	h=To:Subject:From:Message-Id:Date; b=uYRphMTUXYQjbR9/qpA73TEp46FiIOQSagcP2odLeRQvWM6EGmcQMDn3g660uJ/Qg+m3eSVjVJj/SpdBlNkrH3lXHBfXk2DPAMIn1ny89LE1Bn/V+fGHc+h++g0B/ArDvdXRT57BXu5JSam5HyPNRScNZ6dfgvanl+/0MGp5KBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pZxe80wM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZxe80wM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6959C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760224193;
	bh=CYQEn+eEHSE9c42qYHqspQzNBdLyYBOR+uF/VvI6z4o=;
	h=To:Subject:From:Date:From;
	b=pZxe80wMo7FzIX22xZA452+ExOjYYiZ13+Cdpo7WeZSyGXvq9Q9qoyAZykzJyKTUu
	 HwqGXWhelu5ZhABbh1wwWQRJ0Xr2VOKZ+ivcEChtMaU5Nrmr79e+qpvFtY9aEQXBxN
	 6AKLAzwsxfNtEoq+wd+O3hJVbxxwCZ8qBX113TCtEXGmWTJdIsSuIVxerGu2qvfw8m
	 IY/kJgYRwaWhvUSN0bAj/GVqFb9GHo8sTgtsUTgEi/sideLjBbgwevXWBTC4bQ2xtr
	 SVHvtin/+CDJbsgJmLfMroFKhyES5QeJdxJ4Aj39w4aGXPj7Qnjmme77rgGWLHWTk/
	 qgEAgoWDn/evw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958D1CCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176022419358.15934.5311803775452763030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6467de45d713b7e6002c2a1980164db51cd7152618b2ecff2d884cfa900b643
Date: Sat, 11 Oct 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760224193
