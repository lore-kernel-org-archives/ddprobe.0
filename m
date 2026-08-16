Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF4127AC45
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786873834; cv=none; b=sdC6L0But2vlYsXawVW40hVSckYDcDwxo7tHPifYxtaQQdY7DIh4Q4G9dozWq+Ru5Pn9PRuVssm/iYrqFuKZP5FSAc5Uecv8QUK0JQat80XJhq+xDtIOoiQtCHPUpcVoIH7JSWUaq3wxR9zZYjMRf025eFLc2oBX1nfhjv0PQj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786873834; c=relaxed/simple;
	bh=svH/IdFFOQWfaeKF9Eher2c606+spHj+9al0XradsVU=;
	h=To:Subject:From:Message-Id:Date; b=A42rqxpfP6Ez2nRyJVM6DO45jwVxX4vir39dL+BGuaiCjq77CA+eVY/5PKbd4ACfDjDT9py5G/MyVE8U2E0RbkEGPGGr2j99++aEL1hlPW2fO1O7ofV9zLpAQunEE8qEVdn2eh7iGrnKcG7GrYbaiPTaOXci8Ia6tXN+SCedvJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RJ0al+nc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RJ0al+nc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D34CAC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786873833;
	bh=svH/IdFFOQWfaeKF9Eher2c606+spHj+9al0XradsVU=;
	h=To:Subject:From:Date:From;
	b=RJ0al+nclRecBk2z0KSxxLXLNquw629gwzyFKyY6R+wjfzzwyjk2EiKBGioDAv763
	 WeOArKaIZGaesd04EVp8Nlzo21AN/zJ7LALAqizFXgNQ1+QuIZAP66JD+VzxIuOX/7
	 HZ8XXBt3Y0MDWuCy9kub7wSk2YJBBsBW6Ad5DOjBkXMLWiMpEuOda+rRBykFqXSJA2
	 92gQKWiZHLbCJTCISUUCpaolfKhPWt1GFxbrBWcpN8UPJesgVBWEk6WXHRRamh7ISn
	 MaPq6YZr4mAubXS0k0NseFmABl2fmsQFRnJJDbbWZHPvGJg/kiEOMU/nTZnDL0UFco
	 GGPhh0o2yEdNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAD3C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178687383368.14171.11521187274796109481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa0c8bed0c92cab3b4dfd0b5cea71c300ef4d45c408eb931f16c41bdfd0ae737
Date: Sun, 16 Aug 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786873833
