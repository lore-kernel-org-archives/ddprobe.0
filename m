Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186CA29B78F
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 11:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765020174; cv=none; b=aDWzDoNwmrF5gsbr6qhrrpRu+QwcfYjY5DcdFsOIM7aXkwyu4ZGIYqr1FW7MKnK/thpl4TVOkqXVz3PG1gTT65NoW5G/qG71bU/gRSe88pbnZDt8/oVvblyaq0lgbeN0k/fGAY3HJNxzZiE379vhadzZcATUuhcbNV3s5s40lAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765020174; c=relaxed/simple;
	bh=ayoe+mRoFUDzKGK/SFF+eyGr9vSr7uAuJ67HEKKsG0Y=;
	h=To:Subject:From:Message-Id:Date; b=A/Wxp4VrxD/pav5F34WN8zelNoxmZav9q/TKqOozaR32pBEuAHhD23i38/aJfTmNi/2cGsYYrfN0ID2oaElpoCNV6iJhlPMmOxBks4qSNMZPciBzyHuqXfAc0b6ZVx7RvpDbd+PjbPq1eNqcDCQiXsPuYye4XmMP7KT1le39res=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GePX6k3l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GePX6k3l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD543C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 11:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765020173;
	bh=ayoe+mRoFUDzKGK/SFF+eyGr9vSr7uAuJ67HEKKsG0Y=;
	h=To:Subject:From:Date:From;
	b=GePX6k3l80sWpZnxAe7UcoXZH/4HIbbDPY25bMCM8/pr889talGryXD21deaRmGYy
	 +A6s8ukTV45fIXmRj0tnTc3M2J0U9yuIQZtXMA8pyDi/BKgGqLwk6x0ZvIa9f/q8g2
	 9P2CUE0WtjRAmcllsnVmOl1TbmeiWwHBGw/RRjDhtiPWpmHNjZN0PxttTNKKcNMjLg
	 3OiAOAv1TfoZVDstXwz4lMqHOg3eherKpfvi6Bcf1hp72yl9Z8Yd+HYy5szHYd5Hmb
	 Eerun/b101Lrbyh/r67lIJDhGYIOvl36/TRA3EnoT0bTH12YGzzsvJVKjCRhP700f1
	 gVF5889VskeXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF47D3B7D2
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 11:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176502017358.5617.13385658521206019412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 518da965310268ca93dd1f33ad8f052cf06e6f5e5a8da30a3247b79c3bfd6406
Date: Sat, 06 Dec 2025 11:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765020173
