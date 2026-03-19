Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D26B2E1722
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773947094; cv=none; b=dwOUUqSEmHoyxdJdkmDbivHCkxrx5bWn9pWqTiC82dcwnCcPpPtpqP+dRylfjpePHrp9x2iSUkgZ0xJd9Qwk72zIDOm5UnAbRgsRP4lBjPyYyxWRifYHEm/uKGjzSirmDw3gpZmsPb+r3rl0KdGl5u1syDw71xMlBo2TxWBH51k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773947094; c=relaxed/simple;
	bh=E6O9j9lvdFNEy0RTCYK27qcFxuuPNTThBeCh7JqVXj8=;
	h=To:Subject:From:Message-Id:Date; b=a0TxI1UuNPExPYUrkNWiZwjsWSq+61/YIayncqkX2KixzEQa5ScfI3cJeGrpYpTxXB7Wn/T9VaiFf4QycRiCEpjJH2sRLnVr3KVs/kVEQaz9yrLc9r1NWyUvCvDB26clw3N67GfEKIyjzZu/rXuIypIJWa9jdq7nJSDyMGGIXNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U6hC4nKg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U6hC4nKg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34AFC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773947093;
	bh=E6O9j9lvdFNEy0RTCYK27qcFxuuPNTThBeCh7JqVXj8=;
	h=To:Subject:From:Date:From;
	b=U6hC4nKgokGtfrg/rJ7AiHZEQ5LoiijWtRzyZc6uA89WtVrSNL2uwNLcdJfIaHMM+
	 4qpN+KjgRZL/tPZQMAd2Jn44KSZFeEA9jvbjU0YywCDirUkHnWDmd5pnP80Vc54GOE
	 oiwRy3upTMImTRCIEBWzAGctR2sesZcowa/2yq7+FtLlOAoXZZrmbtVPaTREjJOFSG
	 QTRdCk9iFTObxANzDDTYRkrrSUBgKrd0xgJi2UJiJ+Y9DodpndImKy5VF1C2OBH4Vw
	 HT5LhR2WPrDjWWNL5ZmDcYo80GTvCKGViVE2Aa906voNXPWyoEuARtVGCSugVtLe28
	 7+3HR25YoBCdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910091091911
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177394709358.7689.4226836006486176657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b3247df11c54297da605f94b1ea69a6b8c1e01065c47ce9cab74b6e74da8b79
Date: Thu, 19 Mar 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773947093
