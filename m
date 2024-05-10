Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F3C53308A
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 05:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715319743; cv=none; b=KW8HB2kjYwIwIOVzm2DojPYDRCtkQOjMPV4+w2RvMT6BrNXW8/QlRRLYaFVbReFu4TVxxGA8JSFKNOk3wAXhttd01WfxyP4vLq53afSwDhHIN9XR4xf9VnOzfmZrKrDKRunijoKMw9p4/5f6+hPa8OyFlekuGJCSkIvNJayvFQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715319743; c=relaxed/simple;
	bh=HiWpYa/N0rWbnX2e8BjLFpH3RQx6QBLO9CpFsPrplyY=;
	h=To:Subject:From:Message-Id:Date; b=g1pZZ5AnW5feg3MOJOL7f3KFpAKsO5yYv4Lxq4ivovixIDcRnkKuZ0A5De2kSr9SpSezZ5nYc9tvvJOVJwomTiNARayic702VV1enm7J6s5NC9wm6GrRYpaDNTJzydx0qjT+ruuCUU8DWcEXoPCMCXS032gUgZmJYjlUX38ZEyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=beBcHupz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="beBcHupz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF2E5C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 05:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715319742;
	bh=HiWpYa/N0rWbnX2e8BjLFpH3RQx6QBLO9CpFsPrplyY=;
	h=To:Subject:From:Date:From;
	b=beBcHupzP6j1/fYRaf5FB4GPtCMhPOJmCo7sX3XTUYOr3IYnwR5udxo0a42Vqyez4
	 5OPBhW/J+c8bjLFDmmyZmCn9KOPMM097MYafmhnzt2PQlfY+iM09mFMWkaTcGsDORb
	 ZjvNpd7n1H+yw1K2a10voMTwVtPL0X6PL3kUkYsWgIVCr5NZoGiowycVfoQQx++3KW
	 Xk57zgvPVcDCLePbBoGTf788SW64Bst69YZW1cn7MHXzo/PkSfTfuKpAAwQ6B1uwhC
	 BbMaGPsGUTnBiaSpcbzr3Q6YpOLgiPG0aCpl5PNxfUsUQt/XHNZrRWmabXlasV0VX9
	 lFuaGW9BvADng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C18DCC25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 05:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171531974277.24952.8392623269034620274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf2c4788f3ccfb7a83b3ddaa57d1a8df419d16a2b5a454868df26d65c1ea39ae
Date: Fri, 10 May 2024 05:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715319742
