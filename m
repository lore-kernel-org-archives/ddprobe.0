Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437DF283FDD
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 14:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783002514; cv=none; b=YihxE4j9uUBntZ5KkPZiLkfkkwxVLLltlbwUXWvoLeAe284V+f9ZHbp+JrUBNlbxrO/BtIZk9/wpsyCMwJWwMwrYouBQT3LdFxXInWk9zCO906nfUfaA4JaFFGh+aXEaN6XjlU3YsZqHQdDFUF1qQg1Y6MqEz9moBbAvwFyrsOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783002514; c=relaxed/simple;
	bh=cpAfPBCttTZEaUh00wuRZppUKAPnAmzSiT6jKZ5Rn6o=;
	h=To:Subject:From:Message-Id:Date; b=moAUGmLWmjapk90BCbzFx6R/xcaok4eehV1lkw52C7yRMsseytpepph2jb3FmKhz+5ssPGHk762fD567DSDD/mVm7JCdj7DFu9N0KBZAd7rS7swasAmtvqoNvzUIMHnx0Vx9/YAPgDa4zzGZpoYA3jd5vY1IYW5D1ysPOw4QEkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pTha+iHp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pTha+iHp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1CBC19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 14:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783002513;
	bh=cpAfPBCttTZEaUh00wuRZppUKAPnAmzSiT6jKZ5Rn6o=;
	h=To:Subject:From:Date:From;
	b=pTha+iHp36uM1+McxpdS3uELXwkvkEWPB68g82T+AekbKR6rh+YSisPqSUiGT1hcf
	 xy3jJABXLxQWTKmKDRgX0I9jye5VqnH8nTO+GpWZJ9hnmT46Jef3wSo0Btf9izGAHS
	 tmOFi2P6GVrlV24sfo2eEOEswuHP1kEwXWm8+eoIYVKaPLBm+apvOmu81xOMYhldwP
	 s/1HlwC7ciY4+FHXELWowvNaviBBC5AuzfXrd5zcqaMVvIVZjlNoU6G+pSxWoRDavU
	 h/PhAp8TzqUXoxXTDULUOAFvILjzgWU9JPgXk/PzEcA9ohIZzeXtvJCnHBgYfRb0UT
	 vDRr8g2Lnuf5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACE2C43602
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 14:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178300251368.22090.12366884863689752046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6482a0022085a5147210d5f5371bb256bbd2f2d7cfb7e0f1b6bafac65ea50e83
Date: Thu, 02 Jul 2026 14:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783002513
