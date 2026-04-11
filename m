Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B30F839935E
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 15:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775922454; cv=none; b=OD0dpgFofljO5geBXf0CPum2Pc/0ARWP8WF5njPJZE0vDldrPCpVKK4HxvgxdUid59fGT7BX/nEgZZSgb5nyG7XkcKTVyl+U0CKZ//2ZGi8z2jt58sgwhcIsvEW6YPQysPPnNGaz733ALOXMpfmFl7IDXSsJXVx+6vNfebQc3LE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775922454; c=relaxed/simple;
	bh=CtxccbI+3EmIUqtJp+MCZ6ICJwrM6aOM4lt5EQGIuCE=;
	h=To:Subject:From:Message-Id:Date; b=MDCvamgeiWiwprwz0IynbXiqUcygh3c37NZVGJ+lT7ArJrDUhGHA3oBikCPYdNDAoq6BfJRoO2LtpisJGPhF91kF3GrBhftefnfnnB+DhVTUHVNleRRZ4qja+hZM3mu2zosVZ5zQobYTQ4VjITdE89Zh9dVTyGAHsd0QfktclMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mel/enIa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mel/enIa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B866CC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 15:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775922453;
	bh=CtxccbI+3EmIUqtJp+MCZ6ICJwrM6aOM4lt5EQGIuCE=;
	h=To:Subject:From:Date:From;
	b=mel/enIaSt5Lr/PCwcni6RAqBN1jiUsOmZ0toVYMdIeYOVwJ96cJ121dPOpLJEvkG
	 NJ3rRj3zeV7VjFA1NT9Ec+cwCT8/2gFQx5VWeEmhogrEMUA09dtBiqgibafq/eornZ
	 34mV0ZY2TV4Dg2lQr+pkxRaOcFEUjL9gbRCfy2BeO8uFGEz1tbnhyQpDkHmouri2uD
	 bv+X8w1ICxlmoZIePhAzchCBYpp0lEwzelVXuYaILWMR2oGo5LtFdn6cp5gV7OdM3v
	 CGeEuIzS0U//nvKQWLp2Cq14VpkFf89XfnBJrUvOcNkmGJVJAAdXYUs/qmYXCSceEB
	 AQ6QhUyc336dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A912DF3ED50
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 15:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177592245368.6811.9971192856576360525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11f88cb2def490b74fd353aea19785470b73b49bc91d0d6458a5445392974e78
Date: Sat, 11 Apr 2026 15:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775922453
