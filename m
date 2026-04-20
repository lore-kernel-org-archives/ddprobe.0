Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53CD239E19A
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 18:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776709654; cv=none; b=oL/is7qkYnijOV3NQR3g2Ft3yDTohnY4yUs8fIuJm95nqEwM0PVmeLmd6T1Vq9uRMcI1CKuxFV9oNwr8/WKtCddCuXx3NHsiQ2iMplXvFcPFrrUWPmz5fTtFy6RNOYCcOu+i17j2LWlXtb+RecOIoAKh26sdxf0s702f6JzU7J4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776709654; c=relaxed/simple;
	bh=SoGUEl3IqaAQJOjPpshbYRz0kUbD9BVu6Mo+a6PzRAE=;
	h=To:Subject:From:Message-Id:Date; b=mLtHdDbr+/XiWoBZBXiZYLSCWLJZ2H6WSnf+3cPLxdLRPZUZOxU77GMSR+Ysn+Z4U6fX4lyqpNyiSpNFseefX86HxLzDtv78spv0lDEgRUeSgK7XiFdW3Ql91NrHGJIv37ziylOA7YAKT60atgK59tZ6osAu0/j6OyiKzhxZKso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CQLCiZEN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CQLCiZEN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BABD0C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 18:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776709653;
	bh=SoGUEl3IqaAQJOjPpshbYRz0kUbD9BVu6Mo+a6PzRAE=;
	h=To:Subject:From:Date:From;
	b=CQLCiZENIApzegWoQqwCFMP9mJcZ/dvZOujKFj98VkqW5JKreuB/uN4xAZ5vkEQV+
	 JLAiwpYH418r3P/vqlbg9NBDMX4faq/3iaugDGeNzsmwn6BjR03o99f8+JMnZabTAa
	 11Cz5YY3Lxs4Y+YsqvE10cCuuZm2UeYjK6UxSV1KQ75I/VasQPr+k4dA5e7cRHQudw
	 KaWD53VmHMMcbCEEEvYzft7fqOzrGozGvRyBgux9PG3kAKtApZdjh0tvRRsU973+h5
	 kmDXiLiq6T5iy3cor/vQrUmSgdSZtnYOS0Me8Z6B4eHscgAtfZpBFDJExs8sqGkREZ
	 Fg8qvjBSjMN9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9CDF5A8A6
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 18:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177670965369.13826.4158856381954470243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fae531f7a01477bd163a5c0fa171505d62548bf05e397eb55ff2d428a9dac8b8
Date: Mon, 20 Apr 2026 18:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776709653
