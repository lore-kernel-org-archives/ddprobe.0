Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43EA48F40
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 02:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720751243; cv=none; b=EfEqxZO5c7OYMao4bsfpl35oZOFa9Yjn99MjajK3XH4h+k/bJlOpv3gyX3ialACP+p2pl+m2nX2bRDHifSdywH0q997NY/dCuyElE5gN4/sGxq53xS96ooFcAz+wPERFO2wdd9h4r+ESXsCo8x9CReh+ZjY1LyKJI86YjTLL6Iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720751243; c=relaxed/simple;
	bh=VAATfp2zH5TpUnTMa4s63HbOSv9PYU65p9Dd2iKL1io=;
	h=To:Subject:From:Message-Id:Date; b=LXKONsldFWclAoJ13th25zksSculxB9aFWRM80a1J82cYJvKoZ0JsXPoPXNu+BgnSx1F4gv2oQiu1cqa3vzFlwQR5Uw7oNLRsEyU7yfVaAeuA0nRelAxjOAHn5tWzj663+RbvLiLzRo4Ok8dXdNrXfHEaA6C1n2dIbHkkyvKsYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pXfmV4g6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXfmV4g6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBAB6C116B1
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 02:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720751242;
	bh=VAATfp2zH5TpUnTMa4s63HbOSv9PYU65p9Dd2iKL1io=;
	h=To:Subject:From:Date:From;
	b=pXfmV4g6J2ZE18dxHi1FRvfDZFOB7NJA8mH8LJ2K76ad06bqL98OQ3N/JbhqzOliv
	 HX5EZRYxdRBhHUZNtTVQW59jOAlPWsOk1A55mlQ7i3tEL3pYuR4IBVxrP665XBh7T9
	 lXKTpsK6T5baq/aani9fsCceCJA+/cP1O2r1XmrTX1Xzp94MtZ1cSnn/gXA2SCy9Lq
	 GPcJ5bCM5aYAG0y8TR5kqR5ZJEurRbib3YYn8K9H/BCnDkUdXxs8tMLzIfdJYFceay
	 ZFtNQpvAhMturbGsgl7RKP8Ywcs6j8FqMpBDn5EDOQsPgnBj+ENLIqpb0As4vYDoj0
	 ncbDXyA3l9bkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4C8FC3DA45
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 02:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172075124279.10265.14460791364745730215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fb89e198059e3225ab5ca535ab2820c811b19404133ac8949ca569551bff9cc
Date: Fri, 12 Jul 2024 02:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720751242
