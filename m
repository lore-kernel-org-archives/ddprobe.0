Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50AD0149C7B
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727241354; cv=none; b=j0CMSq/u9vh1xCM0wEkXlWrffaHD4NRQgvt/NZ3hWSpNHcVgNK4ID6WyH6S/jCRxQ35ArStLeUKJxH7pRwZPoNVCuq4eRiua2XLst3Zu5ejC5rA+4L7g1pkAasD+9GmJj7RdkntzU9fq7jZpCWl4jWA4Yb7zxITBhREecA1rNNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727241354; c=relaxed/simple;
	bh=pYjJ0QUc9i4KISqRLkEn/As2TDBKJ2NEneZmT1IWuR8=;
	h=To:Subject:From:Message-Id:Date; b=q4ZBcxV75oAfGwWC+uYNmEwl4aja4jWus/P/V98/ymQSOwhtgoTFJ3jLQqd3hzWy1arj5poyHRShXlFkWKwyWHYGBa/9uysdRah2vXUGhm0wNlvo6rfo3UcTmwMMwLc2q9hM1i4aJHp0B9ejOBZNZsPHXPca46MK4kZqluG35NE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aJQq2BeT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aJQq2BeT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB381C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727241353;
	bh=pYjJ0QUc9i4KISqRLkEn/As2TDBKJ2NEneZmT1IWuR8=;
	h=To:Subject:From:Date:From;
	b=aJQq2BeTrnqq/9fejasEF5Ol6Z/LlH6Ik3o+9T+m4+GH9yGLGpJHn5nwzR1PmG5Pz
	 a0kHd1pSLRE6OqCVS8OCFtplGpNcLsbCqcegBNcZfIWj3imuEw52Mj2F+Assv1JLqR
	 YMz9rDkz+d0Myro8zRskTb6V/lNcqTuw0OzqMERfv9z1weHNfgfMbjnspezT7x5VE+
	 16YlbHdVPKUrJ+nBF/r/pjEyhFM5oA81V9RTAqyjk16BZ0c8mmsNBR1xSx83kDARhf
	 UC7MF5pkucPLEtn5vS3S+Gr5GI0P0m0ChTVaWUct8govUyuoXNy/cphD8ANjaaQ9MP
	 4IrVhLdyrON7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B50CF9C71
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172724135358.23643.1033981090917715249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80a2a1d5aec1069f79da8c996a776ee18b60d45b31810f272e86938f3b4269cb
Date: Wed, 25 Sep 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727241353
