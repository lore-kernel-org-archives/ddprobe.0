Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E122EF67D
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755374394; cv=none; b=D6DYti+F2TKpTLsO6M/niGnenk3jks+chkV7RLRtM+iDA3LhjozzCBK5WwH6JUutnogzvrJbhFi9bk+mMeDv4/gdH3ZLpr6Sv9SLuQi7v7MCwo3zX+YXUrfiRXUuPYJHQyZbJMTnYN2/ndBStjt7YVoUpLsIrs5ytflKgAttWUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755374394; c=relaxed/simple;
	bh=XwQr49lnQIGV33gLLJLt5bloCsPIEX6VAornN2oFrTw=;
	h=To:Subject:From:Message-Id:Date; b=g8CmurtcrKWS55KADp5ZeZftYCwpGeiFv/EwVtw8HP6aVzCTouJM9pwt9mLuIwuATLxvUAAdBqtFKoOFlEQTDn0LsjDpTWDkrlkZe35ql/g554OZNjgcsjDHHdYpjLj4KUKvJOxGhcUEgYirA8XMttXafmI7kPIj1cyNXnp3CzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qiiarwQI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qiiarwQI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39DCC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755374393;
	bh=XwQr49lnQIGV33gLLJLt5bloCsPIEX6VAornN2oFrTw=;
	h=To:Subject:From:Date:From;
	b=qiiarwQInDmucUwJaBfpR/0qRpMYsfIVY3wBYtxQYG5LKWz4kiXABwl9Ber0gD8CA
	 Q4xJSfWSwjv+Egij4PGda1Pow6NPc/T2v346W9lkEWKo/Zv59UX0Z3AnSsTSIk417R
	 vBZur0Z7vUo5lM91G8zAwunFfAb85O/S/dYxsMB1baJ/VNVnEa9dIbPswocN9uKReU
	 E8PSWQ38wuurk6C/K+7W3ctPkjkxxo6mHCINcl6fYUWdoidu2fGo3xxdWJzmZlje4l
	 fj8wOU/RQBKH5jRKkND2oNl31W1o2NmO1xfaj0MDBv7HX77tHZ290caYI1WfM0NVHY
	 x/X/KNX1OSq3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917CCCA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175537439357.28739.12459557373016012710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e30facb480299b9480e32f73ef421b9e977bb8f789b430307a4f3dfc2b7ca2d
Date: Sat, 16 Aug 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755374393
