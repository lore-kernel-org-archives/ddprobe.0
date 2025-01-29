Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0F6215666D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738173353; cv=none; b=AvLVJQF8OXZrigEVR2lpnQ3ogFVxqONE3rNY37Xf0BGM+SGUZ0Pk8++Yl0+P77gwpLbSzV75zpCy5zPuf/OSkv3lOp5NFfnQ/17LSHxcNEwsKCWWkISvhjrrQMDcueywgDtaR8mNerD9mVhUYpQvoHHRTZLXGVVzGLjbdoZ5T2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738173353; c=relaxed/simple;
	bh=SlbdQRkWeA5F+Ly2bNuRjhBfN6Q8AWzC0uQKnreOBx4=;
	h=To:Subject:From:Message-Id:Date; b=LhZmqXv2prcxSIZaKlRlZR5cx0d2gots3CMZyun2VXvYstka44vmv+9unekBMs/x6eXrbw3bL5d0lFOzEKF8vRRzTJtJ4tp4ETOB+pnl9+yVBrOZI6qHWBWKjTK6uj3u+LMktiXieBDVExaL2wVr0GO/AgbhWB7kHiJB2tVRLVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EDalWYks; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EDalWYks"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B376FC4CED1
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738173353;
	bh=SlbdQRkWeA5F+Ly2bNuRjhBfN6Q8AWzC0uQKnreOBx4=;
	h=To:Subject:From:Date:From;
	b=EDalWYks4Bf5neNTxlTJ+bHWF2PWROqw4ScWVzS1pY5Lo0qCAlX6X/RIEmH4650pS
	 SyXJQp1ArKADyQ7ZJtvCNTPdphCbxALssB/7hFPOKrq/tVcCLTpRb4fAYCUPqpxOPl
	 FEqYLKrCf4ouYsMFJJr1UK/op5hprIL0qIdIaQbmEoT0sF+jpkkOHGKo382yqqvl9w
	 Y1lDZpnmC7ysY0yK58YzBEOlNNMMVk+F7NjpjxtOa5M2BKpMrz/n4gD4TAoMZID3mK
	 7TpMmbENPVMcKaDKD8tWfRw5bW3IRTvn32SUaWAmjnXG/17JdrtdRpAelASwesdpew
	 RyP1A025fxGAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0919C0218D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173817335364.21523.12319972307896197480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9d2b8447d65b3d007cfbec8f76a7e6fba63b4374ef3d01cf831123110d5890b
Date: Wed, 29 Jan 2025 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738173353
