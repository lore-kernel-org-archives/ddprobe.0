Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F458547056
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791766234; cv=none; b=b9skvW3Lz8YOlEaqqDNOUCIhkZbdfAHhoMlRNeUwrRhZlCvrS7DRxrBTmKX3MOduM1jBsrFbOHBhkO+grmtbUOicGwpsTNp4y2zQazvW3ZzrMVqOXccIUEHmcFwxI5qp4wCEetwRU8888f7Ckp/UM1YLNYIGS7JZLrwFWXnQbD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791766234; c=relaxed/simple;
	bh=91NKOtvdLTCUUF33Kqv+h+od8wbVPAXuX3/9Gq72q20=;
	h=To:Subject:From:Message-Id:Date; b=SuZFZOkAVSn67VNAtip03VVq/FJziKi+DaM4LZMTWBltUWzg/xeWl/aL96r/mhf0mDPfXohHyefh29JGRXwmByL+KDnx7mKId6NpHrxM4nr42HfYipPRPlA4223Qx0/i3fxVP3fZlNKQ5eV+ZrgkSVHiYGiZL893ppWiqEG0RZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tDTiq43d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tDTiq43d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D379BC2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791766233;
	bh=91NKOtvdLTCUUF33Kqv+h+od8wbVPAXuX3/9Gq72q20=;
	h=To:Subject:From:Date:From;
	b=tDTiq43dnGwnrJUvkCzb9Npt6Xrxs94KjBinqgyjIGOEmaWuTQlOsf5aRCoNffcB2
	 dp27W2OsBNN7S46bgJmhxH1dhcuLRbYNFB7hNWizRnemGkGcRuE8Rb7S3HbNAxck50
	 hHqFG/CE+8nBtN1NiVUx7XMYFXIsllCtAmL1IrEe9gjjzxHJlYIa5bRaaDc7nT+jfJ
	 u+ZnCc6q4WIldj5Ruw3Rkqn/w2n0wgI7t+UxuL8un8naAdKJ2fWoDP6cFYtO59jl43
	 oCQgVZvKQNrkSdOrn8nssVf49rafDMRmO4C/P7kHYrH7bl3JQCmqiIkvc1dIxXVP9/
	 zZegtwBtHW2uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0903CA9ECF
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179176623368.28361.10393047649641594828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4de081ccc4447c6566ca1cfdd6c5309b5f9f3d2d520c5bd48dded361513b8214
Date: Mon, 12 Oct 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791766233
