Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0794F18F2C1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724927154; cv=none; b=Z+BBm6/QJ9aDcLEcS+8hieLNCNFoq5wBE2tOu5GvxQmc4FlkbQzGGFRzRZFca49jC4i9G/KHKhEXbBCkfTQGrsGzLTJ5fRfdOq9a9nMUBkox5sABy8RB3FcrvQ7/MXeEOcBTq3eu32te/zss+Cdp0xrPkWZIHx0B+Fb6nXdCLNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724927154; c=relaxed/simple;
	bh=KAFFfukbEoDGcawbBobER1icJ+arOUpuBCl3fAZPUg0=;
	h=To:Subject:From:Message-Id:Date; b=Vo4TnUF8wJDZli5zWhkUoTr7r+2uwYgnyjvx/Og2h8EOiGI318JElF1LJDw2zm9zb7W4P4jN+kcvcs+D40hTqI2modhvFQoii9RMQJ8rDdhFihSNW8Z/vkGwM8OEYE2KkPte7NjL9ItzWdeRusIjaW+75WEUvhhnF4VUZPslJ08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GlYwSJPd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GlYwSJPd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33C0C4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724927153;
	bh=KAFFfukbEoDGcawbBobER1icJ+arOUpuBCl3fAZPUg0=;
	h=To:Subject:From:Date:From;
	b=GlYwSJPdKQV6HsbgCQ6ZMFE6tEngIyoTKgiVUwzJDaMzqTH+HzpsJJrvzO9j0RuiZ
	 lhZm9fRQqXWMuJLnOtA19aUCOex2EVZ23rCwBQdtynmtnK640sojGnT19AXS3y4dZc
	 qyA1YYXWcoMwYAHNk/HcjKENFJ78WQWw3lxStG1lBezQI+sBgtlssk3iejZ0WD6JYo
	 UhBT5xSwypLz70ToQnFGZ4ggUEq6P55QvDnjBHHHE8E4TtQ0Bqdp1k/WHnqxm/bucg
	 QACePuVrrfDz/ilPoTT7e8H7kMnmo+jFZglliWimIS1tLeftU6vBCs/mY+5AwYCelQ
	 KKc4VZZKg2E0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FFFC83030
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172492715360.28967.12285315628640613155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3fd73b2aa4d14ce55aed57f517fc34a0da6d5562f80e3cd50a117a1afc520e5
Date: Thu, 29 Aug 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724927153
