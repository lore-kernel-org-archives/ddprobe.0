Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B27F1A9F9F
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765903434; cv=none; b=QePOwfJoL5A8zeSQoO765WUKxO2JtB3q4Jzr95WVtUcIqLHvJ9s3lw70zu5kWCgUPWEj/1HtPJyAYv3nUExJSmqIxnkBoqIC8mpi1+WUyNoOfkYYh8rDI9w5WZWxATGk73AjPXXO6JV3eoqNZcWj7MJoCfe5/IM82cx+s7H+Q/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765903434; c=relaxed/simple;
	bh=tXR39knNO6mfKoXL4hy2q/L/culizF2cDV9Vh9RWv88=;
	h=To:Subject:From:Message-Id:Date; b=FpankwPDkvbbrS2rEjL30ZUM6Tn0Jkr3iHVNKdLFS7oCF+R6qkN95X+7dRayO92ngfLAqo/DsUh9uIzRr1ZZPDeuN9Mkg/v8mAR/7krngLJXGdX5Gq4Lxb2yfiqFuLIewxdeox53SkA9+ndwREehjB66+okz8DQZQbpkqvj8D2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GxhwMfIy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GxhwMfIy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7618C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765903433;
	bh=tXR39knNO6mfKoXL4hy2q/L/culizF2cDV9Vh9RWv88=;
	h=To:Subject:From:Date:From;
	b=GxhwMfIy9L04SEnUXw9QTshCkIhD1Jd2/nbM75T0CKNN9rXeJVXPPmvvY4KkqxOOd
	 2aKF4/T+dVfty4W8bV+oHRuLJTZxFfNJQRM6np+NySplRQwMs+DlF4IfTq3r8Kbs1O
	 +EDvwpoW+IYhNJ+IbJQPSnnn6fWqN6WBpQUCwZXS6sRImzNiN//V1cVGMoEYuks+Lm
	 05iaurTuyWYM6ORARvsY1aHTIXaK5LZa/2Gs7I0mrBtp5vM/7VGhKN5oOaydxrx1Gw
	 3OdTI0e97blEu2QjBbSa/dpBTsUE6iPs36/H/M8eJ/iV2RALt3iGCU1dsDX4aJLEfC
	 Stq+q7mt4AvzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92255D609C2
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176590343358.29725.10017408030223559171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c4c692d1c129a7a6f650fc87327e6534c40e70f682570ec35fcb600a81c23ff
Date: Tue, 16 Dec 2025 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765903433
