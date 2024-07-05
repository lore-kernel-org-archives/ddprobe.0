Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 523FFA955
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 22:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720218923; cv=none; b=fX6fHIF88vEPuP3unURvtpVC/LUEGueg0ZxlvoDOCvN5Z160Q2HlTJHrI20Xn/3YlVjhKD2pFQS4QPw3FPrlyyCDGOrWApE1MOcQFvlOczs4jko9XVA/pPdY2EDPKml96PyKOwzyGy8GKHPLb7gLXR6FrvGccFKjitI5n9g5HSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720218923; c=relaxed/simple;
	bh=UIC05J4ATjG5Lr9fDQB4aNS9jwi9c8kYkRTLEE9HKb0=;
	h=To:Subject:From:Message-Id:Date; b=scTp32ofxwihapJJVHXGeVQBIs5HPLxdfB/sLGMQQgqqHEV+FE44xk4elXfNbuObkmWxkG1JIMCnDdu6Eovdv1Lp+FFNJHMbf42HElEVoyFwx5MHraOAoE9RGeSNAP610GFyAG6EhFVU+sfyWOLRDnO2dECBRawd91UeOYtE3qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OMBJs1BK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OMBJs1BK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6FF2C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 22:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720218922;
	bh=UIC05J4ATjG5Lr9fDQB4aNS9jwi9c8kYkRTLEE9HKb0=;
	h=To:Subject:From:Date:From;
	b=OMBJs1BKUUaCOvTy/85T5m+7gMRv6IybmGYSq4jU4Fq7YxKmgrPpu1SznzAAPo2vn
	 TnNbp8k24/VFxcWEcBdYk4NmwNAt02s/5iEEokOqGALYNl7lBV6wwnePJtAWU0bTNS
	 9v/jiuyCQpfOj09yWvzUIrH+qhB7mDstnO2UQcHfeWRRkwPtu4VVYrcO7RlWRZrUgi
	 ZfopxH0WpfnRknOO+aO++CENofmTwjw1aP3U39GQbJTnbzqVW7mwufiwkeggeGJX/m
	 4Ch/x39+iALNcGphPlHWpIdz9fiHmqtZj8PDr1rHGnAiH7PwgQtoLTUSFmO86xCTB7
	 U9Wf5wrSGYu8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2C2CC3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 22:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172021892276.25443.16394390180692894258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e98631e16208e4b0620e4f052146929e6cc7129680fdf682672319ee8266ab21
Date: Fri, 05 Jul 2024 22:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720218922
