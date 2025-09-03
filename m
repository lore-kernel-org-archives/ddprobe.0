Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A7B30EF7A
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756907994; cv=none; b=P/KA0JDmLEmR9OtG7y63QNn5hsshbmpxjFaLkfRebYualYUrOVEZ6N2WwA9HpddH5RDBavYTNbiY1VGjMJ6ua/Rc0XZk9FdSx4v5ShjcvNIw24ktf5mVROrRQt/1NL9fD55Gh8RURrOFmbnar8/sTxTyrJCSzmzKMNOwt2V/Xkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756907994; c=relaxed/simple;
	bh=zjlbdkf3M8Ejl4TkivESUqLrLx0BNG1yhy92FkPuCpM=;
	h=To:Subject:From:Message-Id:Date; b=X0gfSSGua/1wTl2XHn+vY3u+Gv4rTwn0VUYDZUecHzkleCptrqi941p94sUy2HjJfJwUvUkvJdCYb5cuTBivZ8JSqndYvaZq6UIWfvEG90/xky/D21JDq2UY7tvm+FMGikWts1oDOGFOrWr8qnnG4FMFouubpDSL7G5GMXcxr4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m3UjfZx4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m3UjfZx4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A611BC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756907993;
	bh=zjlbdkf3M8Ejl4TkivESUqLrLx0BNG1yhy92FkPuCpM=;
	h=To:Subject:From:Date:From;
	b=m3UjfZx4OkCcxv+GKdQw/MMViR0niEW9yMDWiho9rHvWs39W4nmyI0NUmQKXB/k3r
	 b9L2qtilnv5nDWvw92gIIinOTNSoEf2Fvj1J6MIZSRa8kBqsUiLzMz4OJFovuEscBb
	 GG3IZI9Ve/vIdEWZMoolbvPxw6FUA8USTZhzEnKo7bdAR1JT8eF6V9Je3hbXlYLY/2
	 SZcfdWXipc8Ft+E8PplbymLPlO9CU96hOtsPlWHTNTrL+A+e6gjphgsihpAI33ZIHi
	 ORBjb+/BjRGzmU8DOyDBIxkaENwVTZ1m8U1n8iIibOJVN9IPwvCwY1kblmGq8NC4Ua
	 uFXHATcgYm7WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AC5CA1009
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175690799358.7947.589019284570216882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bb5f124e323ac23c3171fb7adf50e320aab4f50ae8c66f3dca265dc24ba9e7d
Date: Wed, 03 Sep 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756907993
