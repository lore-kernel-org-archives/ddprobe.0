Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6542B7DA79
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726113954; cv=none; b=JlLicEEuJ8sr+WN8qXuZnMo2d6DQ/qQLiNNO2GkNp2wjAe8Ab6AOtNT6NDoPCuloqSQ5JViIe6Wjh5VaxEjFjyigg8QfteyHAt1ICMFdMzZJwmte8+nCNHlsi3fnzWRP9ie+Myz5GPB52KAcToo5br0AKv38tjdITWpR0/3+al4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726113954; c=relaxed/simple;
	bh=JfGcI0FHzcsOm2etNIx5NRXZNatia4+aEkP1IWq5blw=;
	h=To:Subject:From:Message-Id:Date; b=VAvM6G7Mi3bo9Zs5/FfiNaAfJCE1GHCSlcKIEGInhchiB9GuneyXvJVI04FfAhZQIuzgzir3ygNwDdfuMoLqlljoOPplWQOGeH0LpSGuRbi+91Uu9LmQ4wngKFpiLY0JouKUUSvpLyneDSxksPiJFrYZBiIAp2V853F/ogJx8eQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G6tmzkb8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G6tmzkb8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDD43C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726113953;
	bh=JfGcI0FHzcsOm2etNIx5NRXZNatia4+aEkP1IWq5blw=;
	h=To:Subject:From:Date:From;
	b=G6tmzkb8JR34fQHzw0LXTtO+7qTcLKQAhNjAo8KxhGr4NW3nulhE44X+nyPpOTbTf
	 AbgFLr9ypzjF8JnLejjeA4xhRwHzZhaRatmR0GFNnIQCyHr0V2JjcddOR/jKTnwCTf
	 xSBc+a3dkNtQPEBuTSQ8BlTTU8/x2MO6swWuhizDev1dkIUwAfM3EQ0WDZ1wjJemTk
	 MioxAtScxtC4dFok3bfwgKTMb8N39aRXIzJGUa9J8BkCUpALFzoF/dUA9hu1FHJJ90
	 yDNoKGuuZpo/cpEud5PttiS/L8QU3BYDO8m40MbXDFZmiSPnUrlJzhUS2DNteIWZVM
	 u5/bqtUYmDRFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7C78EE6427
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172611395361.19773.17087974981868575540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e84d91079e3f190470f641271dea30f535e9ab0480838a603524feca60ee492d
Date: Thu, 12 Sep 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726113953
