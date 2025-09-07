Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154EB1E520F
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757281794; cv=none; b=kLWE7zThI+nVpO174knfVPXIZBeDIg2W62Xgg1Yf6AqK00DT7eW4AdRnlvaS3Fgt5msc9NL0VAcXjjYVx1KZYz0RCwDD//AWAdZS1Y2N0Si4RsNBY7ulPGF0AMKsS4YVrrg5hO9DMglguM38Ux+0c4/Slx/DrRvwo5ttEPdU9xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757281794; c=relaxed/simple;
	bh=Dd38GTklw8I28p0MRQxTjlqIPkd3jFsOeYrJka6cwwI=;
	h=To:Subject:From:Message-Id:Date; b=ZcRHLIceElIRPwj0Hq0NStPKjikwnj6EAwaUj+d7ROwmZw3YPwD/BOaypLaE4toZTrjqKQH6uo4Zn/TjJprL5SicpeXNCfO9O0dVbdbdGVNDAoVUzfuYtWT8TAGPZODPL5REzE7sHMHeasoe+sLvkdsnzxYdapcePKE98Hvden8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dthpg0C5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dthpg0C5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1730C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757281793;
	bh=Dd38GTklw8I28p0MRQxTjlqIPkd3jFsOeYrJka6cwwI=;
	h=To:Subject:From:Date:From;
	b=dthpg0C5Ic+HRMrJ9dpV6hEPUliKoytusl9/nzbOf9o+gUCCUQTFTBDatQXyh+Lsr
	 IeW41mJ7ldYaX6FSraXEGCZRBIYFQrBvWti4RODCXtN1LudtZR5r3E+mIpjbYEYXfF
	 MFcvth9ZxYiZcAo07znyw2ZwTXcfJqPTVHbKzAqQdFx30VGqfFmbi+WDJxOP7t1U0w
	 XhURAoBAoeb0G9LNI5oNlhGJEXf5vZbC4sXBGLLRf/OI+Ro6Ml9iABLBG4hPd+oi/Q
	 +imQFbSMuXwWoTx+jEtrDEXJ7xRFDn0uzT+CDHRMNbaUG0I+2fqLRca91PQpiEr4Xn
	 EIratutfFZzLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F653CA101F
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175728179357.1338.11739201073731772472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4499e97af6038113f9579fa80fccd1f98f411722c3fd02cad237489d4c41e725
Date: Sun, 07 Sep 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757281793
