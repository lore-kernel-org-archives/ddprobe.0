Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 031B92D0600
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769723634; cv=none; b=LIXPt6dWqM7PJQCyCdg2N+vXt4LLxSvugEcE7WPcl0nvqTLRWBzhVkvuF1bEEwPWic5YIh+LEnlxk+HFLl7us7Wu/ar+8Ez+Gu0c/1q7ta3mwWejzfBmgMBeX2P09ZDqdS97Shj86C7o1p2S0Fvq6N5TjVsQMCRVEe8VVjTnuMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769723634; c=relaxed/simple;
	bh=XDHvVuoSDDyroG/PRHrXtIgqwRIstGm3oSr2xD1UkP4=;
	h=To:Subject:From:Message-Id:Date; b=HLVUHyNqTgWLaWecscyZBBs0w2nO0Yg2L4Uh+DTOt7R1DdnEbaCQcqDQXphge4sY8xkKZNxUDcAsHN0mkyyvpqcNlbaSRAkqEgV1HOnZ5p2snCMcbrPkIdkT5Dc1DFCgCUdvuTYk2LojNchIv5NZawTijOmyHT+QHmiqeMqsVPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hzMItSvY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hzMItSvY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F16C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769723633;
	bh=XDHvVuoSDDyroG/PRHrXtIgqwRIstGm3oSr2xD1UkP4=;
	h=To:Subject:From:Date:From;
	b=hzMItSvYId9xMvt57HEz7eaOSQjx5hNflhkEYov03cjx27+0jS7fyiGYgJ7S3eKCi
	 wR9JwdP/bve1fFk23YN/7D1+Lz3kHEVfO6B8Rz4CInr55aEtanvt5vypNOAcssABEG
	 9OsD9VeCujAf1pNNgWD1loh+9XYiBdf938sPdGpy9W4ZND/PY4XYshhlEuq5ZYwTKb
	 H0z035r8LvYs4T/wWSlKUVYE9ft8Y6ruk/qIzGpXVk1oSf7GfU3XOP/53qbYmd1UFT
	 vQXWxzrs43VFrstkRPzx0ob7T90wRC8rmqjoOFiHRZGA/Rv0pYy8QkHLqvmTumXpyt
	 OWMZjSk1pJPvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9586BD73E87
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176972363360.3032.5989577760761144011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50d40ad8a36c5df62006da457fcc9994ed845cab86ad954acab7ab1439597569
Date: Thu, 29 Jan 2026 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769723633
