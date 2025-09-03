Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B072E0929
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756884594; cv=none; b=ASkhNuJaURekDGe3DZCHRcTzb/Q2MrDT7y3td6O4Jt+NCJEPR8Xge0tEmqoXz9BAgICvZuJP0QjMYed0Jyue6GfuTQ3xMqBHn+qx72AxbIzyrhBIbSxODmPxdsT5pYerXtfkrMLRxE223rHGan+rxy9cvSM3R5ndG7oYZCpQ4Uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756884594; c=relaxed/simple;
	bh=ID9LtBNC37q/NJz7fw4r2ZpmyzSxGMc1DrGOGak8Z3Q=;
	h=To:Subject:From:Message-Id:Date; b=fSFePqPaTGJqHDLXEq+AGcvsK0Qb6rXYcS346A6cnQVx0TH+XfoXv/dqPrnhHRpaJg9d6Is0kbS5xdBNDSdVAzEgXiUfm1A9J+K2sGnl6WhWvSusJ+UTD+VBrdkhXQPf6c2nPDkxDLxM5PlO18VI9zFh/3PeiizpveZIwlKjG0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DYHJ0lcR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DYHJ0lcR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60E4C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756884593;
	bh=ID9LtBNC37q/NJz7fw4r2ZpmyzSxGMc1DrGOGak8Z3Q=;
	h=To:Subject:From:Date:From;
	b=DYHJ0lcRpvpvmwMhbnIL+G+IdFtMD188sZMz1LtZC2NJbxaDgK9sqRUdSDEDMpoC6
	 1euCaATb0EDFF93JLvNMwvncNO33Z40MT0R8GAwEHaxwZYC+SjuRtvu17VFEI355SY
	 VFhkuoRV56pWoxl9uHGPd/2EPGCqAaZVi16gPbdcqlT7tYQ1SLHeYWwozFVSvQI3y0
	 uHPucXoIV9NVd+zFSDTZxYdEj3JqZd3n/W21Xvr0/u9P1d+XmBKXk4c4WsNxwFP6eU
	 DerFf9RYDw3amOdmiys5fQj2/I5/RcNXG4wK/fVBCgXEy0BwhjFCD9E+PovrA+OTC/
	 deoXT4Xo3IoTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908CACA0FF2
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175688459358.4413.10625234270781612497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae97f35a9c07e921e0010191cba6df7338d964ffadad07b47aa48916b907b20e
Date: Wed, 03 Sep 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756884593
