Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16596437475
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787131235; cv=none; b=kAvofsGKv/RrDdjVZwt3hGpbbv/zpHVLnjltS5nYoaOd7Qs6SGJSfpJmSE9OQ8cJ7c5l7D8y2LzElYQo9cx/q2Iy7Yco0W2Wr1amwxUyxo449qbUGh37CyLi270Al7ZciPj9WkjTbWHXZ6sWuYiReKhUQVBnIkCpWf/1IqYrZBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787131235; c=relaxed/simple;
	bh=HDaYThMIWQw4/rro3gpqkP7pIpjqlpWDift/PeiFlhw=;
	h=To:Subject:From:Message-Id:Date; b=F6rIacJVyGZ67JnAYBpLAG1ONRFmzX8gBWVVV+F4FsFOwQ7WFOfTCLVSFt5eHJBhp2Kf9CTDj956vp+Js0NsFcE2+UjcCZMTxbYfOaI8FOp5T37/+evgAiqLtRHpY8FEVhwDerNooldI7D6YiN/KrkPXOuYVUDQemTg0dg5uoeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aaCf82uj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aaCf82uj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D47C2C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787131233;
	bh=HDaYThMIWQw4/rro3gpqkP7pIpjqlpWDift/PeiFlhw=;
	h=To:Subject:From:Date:From;
	b=aaCf82ujs7wrENk+yxNfL8Yl+0H+oV2LnIakV4ZMKq/ln47NRq27cv9Hpo7IDQz+o
	 wZsf9zCW5D/41lxIkLVvWBpYR5dmhu2Y4O50IWMdiJuCM4CGDCSwzTDRMjoxIOD2FF
	 FcDSfl+EpLKVc+Xnihuz3WONqHB7pxxd31lazmJ9z2ZQkVAD2VPcm9J60NaXAX5QGE
	 KpTWkvrlj4hC20qXpBgFLQp3gr8gw5iPN8eyhA8uNb9T7sHktZXYIMpV+IdYDScaXL
	 vWB6tekq0pSEFFFv+5J0IrFYDM62NQ4mmvH8nGS0AEvSI31fa25d25WYCiDrncp3Qu
	 1WEO6BZB+KcUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F5FC5DF85
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178713123368.29827.5237269724927251727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 146a0ab5d57390df4101a83c5cb758f33a4864d4e08ae2200ae239683bff5c42
Date: Wed, 19 Aug 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787131233
