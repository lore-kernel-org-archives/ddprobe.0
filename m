Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEBF531B10F
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 09:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760521194; cv=none; b=jNhZWWmdTDT1kwbHKUIIMBHhFgdpJ/8SDSYDUSYukZjXsVRlHDTtbj8fEangRPG8HDVRpgtcUWp7r7Dfzzgug7mFMOjDCWIFq1C4rajnlEiWMm4ikQHWcQ4XL3pnX07NMUCVv+Sm2O1JF5NpKW3M0MQsLeIxj+/juF7a5/CyJqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760521194; c=relaxed/simple;
	bh=37kDnnQFopRHS31WxmBW9qWvjJZucK6blYZZNwKLP88=;
	h=To:Subject:From:Message-Id:Date; b=dPShMf/RUBQDzKDMJqFzctIZ/W3H45XCikmid5Wy1wxstbPxJat4wSXVircLKpLjFkirm20eoEl+AEbjAVW+CtZIe4fWkU9+u+iguGz6rxtz8QaL5jz+N3a7VZqEcZaFx5fCHjEvCr8Mt86Y9m/RL/ZW+7rjW+/+KS8y/mQlNGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sqv/3PfB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sqv/3PfB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2753C4CEFE
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760521193;
	bh=37kDnnQFopRHS31WxmBW9qWvjJZucK6blYZZNwKLP88=;
	h=To:Subject:From:Date:From;
	b=sqv/3PfBZWPFPjESQhAT19SY/tTVaBTQiiJW8pL7a0F1kTdDfwnJkmymYplQ6ZPve
	 n413eG4/DE1cFz9qDG3LXclkCsTgKBow5ERpx06jIHoUzQtQO6ZoU8uFfKw5GuLKdd
	 wuUtYBWLMIRzm/EmGulvNwbsp1J4hxCC43B4cEnHKWuiE+XB5MPcf/2cJuNJ0RljHW
	 FEVYakjfkcLplYxB6H7+Z9zLE8jlzcPZIlkcUUaX3wZHXIAbjqDNa2O7eLbusVXyCn
	 JVbeP8PUx0kN+GlY+XzbTrfR72806eauZ6g1ZNwW/fICIeNgw8diDWOIII3GZZZuo8
	 9n1ahACD04ubw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A26BECCD18E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176052119365.7972.3914947388385219636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88d5f55b5b8dae2a835e25ecf0498aa228d4979acb09f1ffc75cbd1d0be96a75
Date: Wed, 15 Oct 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760521193
