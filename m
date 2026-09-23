Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392193B8BC4
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790200234; cv=none; b=j7LPCWMv5fWhTxa3EnBcS2vkAO175FrMmp+FxQryXvC7Q2ES0I6UWqa1Zbpqjow3TVqK2an9+yr5UsVYN/TX2Eb4EmnmI9I7m9I2WORUM+2xf6GulufY4vHNM6WDk839MXQHRFYbBgGf9AHrZ1KdN+ndV77Des6KCjpBSN6uNRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790200234; c=relaxed/simple;
	bh=5/DRouLHRtS3KK+Pj9UbJgYabBQq6tpj5OZgYCi1M/A=;
	h=To:Subject:From:Message-Id:Date; b=lFczGOCoL/B9p1de1nhpOdXoEfoSdZQr/bKI2mKCakx6Zr/52T+PCQu8i1x7u58xO5HYUfkNSuJ4Gvy7S+Vtx1t5lU5VK0au9aeoiPRO0p3TqnGRsbZQaQzMDBBj7IsDvnSE7RU0iJ3smvQhAlTegsjRDbpOC4WPaMk5pCpcyUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nazx15UZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nazx15UZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA569C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790200233;
	bh=5/DRouLHRtS3KK+Pj9UbJgYabBQq6tpj5OZgYCi1M/A=;
	h=To:Subject:From:Date:From;
	b=Nazx15UZGHWf3HdX+dVLSkY3FW9h2BjmFja9TKkLaVRHjbdEohskR0LTgPKp3WbyD
	 flV5iZDD9w3+lZEnnRcacAI5iE3IZRJe16JvE/B6rwXHhEg+j8ixKh9M+m9YXXKOy3
	 FofWxNWpOngSX1UvsJ2Y3iH7ACf8soB63K6aiDxE9nQMCUurQW1rfmMa11+2AlCZy8
	 Q1FUhx2pWpNa3+XF/IT9yVddt2wGSdKO8PXDuN60/RZQlbIg3jx+kOfNW3NZH+CSd1
	 Vgw6JtYeBOzsn8Sdb9SxA8jgyiWi3SNvL8XNoTXDaef3hy8gQ90RLcuFS/VmTP1fOT
	 Z8hYyj6Sj1wBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B58C0C98304
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179020023373.28099.1032818154531197039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73c1ada508a08f2c2245cf7514ed4d8571e01233921070ae1257117e64f38f71
Date: Wed, 23 Sep 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790200233
