Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1063329B8C7
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749749394; cv=none; b=Mz6vhEDJA1EVOQHsmG4RDMVzuEge3mjgFuJ1j6HQ9QMhNWgyGZ3gUMhzjyA3w4VYgbusRW+9lbP5hntMY44gi6fWZOwkWgXkDEth66ZbzYpjX9y1t/vH5c/MYgj8FPrVhjXTp7GT0jUmNLFuS6C9L9d8sHW+f0Rlht8l1wEO4VM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749749394; c=relaxed/simple;
	bh=ra3hny5gziSiTS4MfQkwmBf9i2qAEcmoRTWfP0r0MvU=;
	h=To:Subject:From:Message-Id:Date; b=E6uQVTkaQ9jYQW9edtVFNWTMPanrocglwbIdHovjy3pt5cYMG4YwqKdw9UEDnNsgMK0qWnW5LM10S5lb5iNHBj6wLoqGIoZQSrTLtBvP+SeNkmwoJpniW/O5OIssKRapnU/AzVUQJMFDoXDwCqZ001UG7+m9j0Ub46a+AiaPIjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a0CHqPrK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a0CHqPrK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39A6C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749749393;
	bh=ra3hny5gziSiTS4MfQkwmBf9i2qAEcmoRTWfP0r0MvU=;
	h=To:Subject:From:Date:From;
	b=a0CHqPrKneNeFW7RVfwqXPRY27OU/ZM+wYeRbf5YDcsE69zC8lIhIOchrnQln/qO5
	 vpT5GXpn6tQm/tapyAHYBTcg9GWiLfRs2NWxPrjOVBtl4UJ5tEDO9j0+oB9sBN/bZA
	 WsnTrQ/sFgXtsm/yuClJf2IbpcWacgXQ9lueF1fvcpJZSip3PdEvM9rlLJicJ2eN9E
	 6e04rsTGm40+lpxQMDCbx7Kl1Qo0YJdKPVTseDWE+OeH8tZd+F4Zq9jxRHs5Iq1wXv
	 cB5fBXR4m6kjhBQYeI2PrLHbRWrU6mY2I3FpAN0xfByxnXZRvGR4UeJJeWHh1moWI6
	 pY3lZoKTgaR9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1EEC61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174974939357.4999.1389065156913613690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56fe532d7e4ac9910c15b9d7a13396873a89405d711bc71d31ba62a78ae59817
Date: Thu, 12 Jun 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749749393
