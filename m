Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2612F1B3F30
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728504354; cv=none; b=julnlBYCcAujDy4XLtV9DDzOj84eXAnRZCQofYnQyXBGvMiiiyQmciZCrgScGgYeAEZEHFTtZYM8dfSSCIEERi8ssdHxWxp1sNTaDLRmc+q98bWwgDW9J/VhaGh0xkJp/qWA6YuiQIkAH9WYvaNpzqAEXKga0noA6LzG6oGGLSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728504354; c=relaxed/simple;
	bh=nKxzJkJeLfxMSn4WPYIp698G9VAZLDNr4XJTik8fp+A=;
	h=To:Subject:From:Message-Id:Date; b=JVUcLcbRZ8yBmuiLURiu3/1HWCIZM8lCZaEDEDLnqmSW4tKFaRZ9DyKi+wqNtvyfn8Xx763gJINzaHMxm7rg3ydsbgDvKHVCYxtPqdh0TX4GdKahOmyymgmtIlJ3fS7q/8QpwH/+X0b2z6qvGJvGo0AhE5DrQ3rfJDbSC0CZgPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qiz2o5J5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qiz2o5J5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1A7AC4CEC3
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728504353;
	bh=nKxzJkJeLfxMSn4WPYIp698G9VAZLDNr4XJTik8fp+A=;
	h=To:Subject:From:Date:From;
	b=Qiz2o5J5p5bbgS/rZaefXbPflX/2c9jMR5tm315OCOWMNfq5B/goCSX5J1SfL80tJ
	 yE9zVOsLOzNFVKuF1TluY4TwxCr0YPB9/tdLBVwuz7rUB5OzCi2ghnFjHjm9M0EpjE
	 1WPu5WTdlgO3OXkqmoGLODFMfGW8Fx51LhBgHuC+ACzz6MIbUlckbVl1BxACuSLQj2
	 5dKUxc7UQ2kUTD9NSpnqViZFR7mp/8dmLvi4InoY0WElXCSYc6w5LkUjFo3pQ8IL1V
	 D/djPrvwB81xaHy9rokAhLUeFXnyFC9VgnWKIWm08zHpac+6RCF52eB6YesaW6P9P/
	 NvBR7PYDdaiKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A856CEE343
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172850435360.31087.10656677615176465293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20f163d7634fd5fd733c24470d08f93291cfa7b39779b438b23e2627436e148f
Date: Wed, 09 Oct 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728504353
