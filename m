Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC0133F6
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744261194; cv=none; b=QJ+5RVhKPxZS5YoOkSf59kt+043zq6QFtUsboZE10x5D5XY5voyx0ZjhOplGN9LvbHdMpyZyQP6JKVuk7N4NiCTyyqWmI//ipgqvm/TjwbcRq9/NnuWChG0xd0QHC/8PjJwcwdOj7IwkI6OGzy3B26XvOIVFfnR3IsI6sbaDXfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744261194; c=relaxed/simple;
	bh=vokhjqhB1cnEIrylDnFLVK0Q2hhKhNzEVyGo8CwyWTY=;
	h=To:Subject:From:Message-Id:Date; b=B00cjGVSe5f1RLA/vcFydyQjb5zOm4xLGWliLo8xt70FGKODbQB9DEVKf8uyWBFl9a2zWufplXZnfXpDms28m8a10mG8L2w3L1b8crwawOs27+laWK/xfQiqJHWJavc/6th6uSqKHP7hY5lS6HOuFy85KYQRfuXn3lmbOwQqVeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xe+lGMjS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xe+lGMjS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE798C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744261193;
	bh=vokhjqhB1cnEIrylDnFLVK0Q2hhKhNzEVyGo8CwyWTY=;
	h=To:Subject:From:Date:From;
	b=Xe+lGMjSDamAxA81yldywirkVrZwizEL81Tv1vX6CFM3Atp7L9BHAD5kvT8BB6PEw
	 CpknSYIcDsbkmXr8QcyrEcgqzJeEO6cKibRm0o+Xv9IZ6fSzVTNusSJNs6rEBk44pC
	 7o2Hgf5THOWgGfQFEVXOvcgDem6Ljenjzkbr7xGdT8Dm+lIytbPRqqnNfqDoDUFYJu
	 ZU5gt4KuNppvL3ifN6bweahIB5sJgunhnfSmoIQjeGBv3uNOR7jYESPPreP1tdfyg7
	 R++uNZi2roLWU3nqF4PSE/Yc9cQgxuhRHLTmlM5FbZpv7IOmzpUodNUrD3d315j/L5
	 dohlr+FkL+58w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986D3C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174426119358.9945.14665372836573497049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9b5817a8741457b59356c8c95333a4a3da77afd4430a7a12af6da58725f092c
Date: Thu, 10 Apr 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744261193
