Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1ADD42AA6
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773366294; cv=none; b=oW9+6gETjgDSe+OcukDbheIUQX0tcDRUrwlJINCPv/WZ94ZgofFv2XPzfbcfDQrCkdukfiMY084MZKZpDBUFjJ5k9ysrFzu3q9ftD3OZVXqnXpyDw/zWRX0dHEbiziTNrEilHXwqc4va2EXf3H3GLNWkzy4ocWorzn759y4YREs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773366294; c=relaxed/simple;
	bh=BfDOXxNGt5cXHWwdNcXHgv0aqXBykJWRPDpAjbBPa68=;
	h=To:Subject:From:Message-Id:Date; b=TzOb7SqB+L74KSP95kDR+0QzIkzUiRCGTcFOP0TJkvfLwaR3Yq0eEUL25jT96TQfeZRrPWNh39agb26W5O2jIZNxfuZ4K6aaEDoLcFkI1HTltx2/fPoIDLOuRWdt3W2Mf250Bea6lTDC/4GgB8RVQy9UMmG8mCRKSadXJ4y5ug0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pXM6g9wr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXM6g9wr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F90C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773366293;
	bh=BfDOXxNGt5cXHWwdNcXHgv0aqXBykJWRPDpAjbBPa68=;
	h=To:Subject:From:Date:From;
	b=pXM6g9wrW2DXgVyxh/RUumcqlYjmK2+1AeN9ZmPcRHPnZshaP0LzNOxUBoC44AOTy
	 dwIrM+aBo1LQloAUBhB3P+yQ9HtKK8W1Ou+vrKzfGW1LpymhBT1Q/FFTS8h5aaeZbB
	 9sDQjdHWGU+vu9Mih1tM5Or9RDqMdtXudfwzZ46aMe02YT8s6Ou/f3T0rxiCE9B7Qo
	 C60TkhbfwfHXYtvAOg7bRsj4nTbatZNq8Qa31CvIwsAFqviL4A0v/Ovmh0y5DrmuzO
	 tAoP4pJDoTX1q7E7J+Dh8T6jRnhs7RhX/PlCs5D+c7sdi3s37kLuw4wTz4gVjQODLx
	 uMhVW20wGV8cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FB2106FD60
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177336629357.27851.5533201780682655436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a214181541ecc0379b715882c5ae3e685c4cbdcc183c3944a51bf483733e8de4
Date: Fri, 13 Mar 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773366293
