Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D4E1A4F0C
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734732954; cv=none; b=nH8SqiNJ85czGPUK8HX+Dx+9abXV/8b9IRy1S451eAkrgXxdrwl+LbfNidja0S6EWq2445fblja+eupiXspc+Is5qdXGipGAH9TH2yJ4KgZEfOGAoxvu6H3ngf2wBDj04qhuDdLRG8iOqf6BT/+rQp1A0ZlJaKbMJ4EOR+c3PXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734732954; c=relaxed/simple;
	bh=jSgsh2ZsgWmHLIVBJIkKoXr6O429RuqwoYo1URghYgw=;
	h=To:Subject:From:Message-Id:Date; b=LY+7JAeS4eR3Vou5qMvFSZvhx5plwlQ2rlknMqTlc0bmztrs7OpwIzfj9UzBmDzC3yCY8167WIoM3crilYZLUckObVmHOGsk3xaeY4MXHaPbsCCmvuLbyKs4ylnU90LocQAnGGXXG35gcNyHAZRIOqWhuGIWFb+CI2WIxi8AHzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ad9LXcI+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ad9LXcI+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B491EC4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734732953;
	bh=jSgsh2ZsgWmHLIVBJIkKoXr6O429RuqwoYo1URghYgw=;
	h=To:Subject:From:Date:From;
	b=ad9LXcI+UYbnRkJqL5ymvcBtRIN6+B8G5yYLN8+sSRRi6jyArezyv23G0w8tOFW5j
	 p5AYNvRHX0aiU9VA54A38SgjrrXYkxOfsofNWekZLrViRKnjgyOAyvWUkK9qii9VAK
	 UDdc/3pyKjXSDTZh1nc5gSnXl5hHWCKJm6J5bCnG0Hw5slrvQly1yd0MJwzx76VEk2
	 I6WQ3XCffLMJISBlrKtm3dtXr4mrChioMMUjWQWh3OOly4Asw2Q+OCTMRhuVht+Wme
	 Z/zs1ndrgC0sam2JEnkcmEK2XCiZYG14niRNFEg2edw3UN1z9BYIQQ9l2wOD8WyG71
	 ColllAiZcLzaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B818E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173473295361.23787.10787793362133797819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65791d0df59413d992100a378e00d39a9b57a66746c0e0cdf7ada5651efce7a2
Date: Fri, 20 Dec 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734732953
