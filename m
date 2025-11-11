Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22063299928
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762888194; cv=none; b=uC5c0yTk8ZUElUFYb/JhvopC3OU9YavTJZLxeppidUYDZVxUw0vepsAEDpn6Ma+WZY5lITal1dcqPgsJ4y0w2jgocPtQBfQsyL5GT95fy/YpM9QT9QUcnHSWOm+p+qCUElb9A0Vv32OqlOeCzW7mMavTO71FpSXOeLw/oyGJ0/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762888194; c=relaxed/simple;
	bh=OIux73UGltiFfbwxwLtQLY63Fbtjl5vUTk5J8uHTI2k=;
	h=To:Subject:From:Message-Id:Date; b=HJGonLLIAOtSJaIawVGaCgM8HF/AnVqV7qWUGZMQDf2cdSfRfCcarTDEB2jtdr19YmT03DpKxKePZ9sV890GCsdxXrgyL1YZzAW1QK9lvtP2Uh1GAKxBakRZUIjv7Xo+sjd6xuqRR6IqUn2/EVPEW91AA2yG07HUbFMY1tPLr0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aELSPPX+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aELSPPX+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E208C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762888193;
	bh=OIux73UGltiFfbwxwLtQLY63Fbtjl5vUTk5J8uHTI2k=;
	h=To:Subject:From:Date:From;
	b=aELSPPX+2weMbUP8vgYkw1npjbwmsvidNu2hIIhHioaFOAOOEW93GDEJAbfkEUlji
	 vcfWBAGNLhmjzoueywDMQ1ASwx4ob0QotAwf87syQjNDE9CcylEqk/0D6Ioke2G14V
	 6H+qiPUgokryZDeMEdSDqJPtTw0gNubxjUiShFABRmWFGT9nGNadQ3VlP87Mozyi7h
	 X9bAGfK8CHBYm0XxJQTPAQ4AQPohW8Kok4Ggsc3l0mRLKHaZLH7dPSw0GhYtWDufT8
	 Lv805ydTOXTXixOY5CYfrjwc1+iROOl3cx1Q3rN20LPHjXUob8lXmKuIEX7K2l8+Ln
	 co5z+MYn3wAtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9018DCCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176288819358.13698.8681310870311020539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dc7c766ec5e43654670ce52d348fb373bf3c5dd127b7529b92413c66a785faf
Date: Tue, 11 Nov 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762888193
