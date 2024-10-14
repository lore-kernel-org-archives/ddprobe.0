Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4DE4A32
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728872154; cv=none; b=ln3FIKY1urAYnf3kgRRk3hh8F8cRLvX+37JTzui3cX9ajKA5+V+Ri2nAwtzTMnNK5iljed+/kBW0muq/JIYnRshjVa9XkYT8jhxvg1wkgb+tdjUz3dR3vBzi7v/9xyNQ7fpW1LMFW2iOZujIvHrWjX9nctHjHi7mbIp0j8yhflg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728872154; c=relaxed/simple;
	bh=lO4kNw50ysPwttq4DV70Dwvuq4p2OPSdV+QDPrShulU=;
	h=To:Subject:From:Message-Id:Date; b=Aybuu7SmF9dUtLBYcIzuYYaDtfwtJTdIBKGVGCFKb6r71K6siTvYF5Knz0plbRikursUmvIM6PDpJECBUO3/9G1Q4cdQxS6Axqfy/+WM5ZXUR0inPPfQf69pMlzW/rrebOwZojoNbV+L5sK+XAnb3mSzMZbgTgdK93SgZEtRC2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nydSKRgl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nydSKRgl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC71AC4CEC5
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728872153;
	bh=lO4kNw50ysPwttq4DV70Dwvuq4p2OPSdV+QDPrShulU=;
	h=To:Subject:From:Date:From;
	b=nydSKRgliKyKZ0ZEzmn4nWDmg1TSs454TCLve2Rb+Q9hkLY23Q5Aa9LBqLiU5413y
	 S0j1e+Jom7Gc8XiPFdDIrtKjIyqiE5FmoSmu5cyhzsTB6FgsTE4JQBL0wlo+/r0Mx1
	 WCytye8Tt2wOLrn4bMTW6Sa0Iw6EFDEL0dQG6hALZIwcNDd2GNOyW0BlnT3NMeDPML
	 2gQlB9hBp2Yca7Q5uHUj3aCyEmjcaF95AFL3x1Odl8VKPAhFnZI3NGL1VREUVG8SqP
	 bb0pL90xHuyhzkFlNR0A3mS9ev+ybP8fNEqcC8JzCWpP5ZeafWuhKfyFInMy0dQG7P
	 8AiczEZTjWLHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963B7CF259B
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172887215357.24492.5146526568801284955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a08c80cbff54984e8c1ae83781e78d7d9963968888b870c951dd969a3acb909e
Date: Mon, 14 Oct 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728872153
