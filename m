Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2E5366DA5
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 09:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778751034; cv=none; b=tALktsWaw9O5FNIO8fDI8A+s2teDmlp/USz9jRbrd1IQUOFVsPLDrlWvRs3pGPQc5rv/EOmCOOXbwuUZ8E9uYIhsfuzZ3dsQsJT7sSSR9BY5iC0JzwgfwDv/DRbhZyolhyazHIiqd50sNgdCYFeQVJyzDQ1t+4Wg0d2bBprvY3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778751034; c=relaxed/simple;
	bh=EsUewti0k/2lIQVHrKQpUhZ7zA184X2svE+s7pxT8XI=;
	h=To:Subject:From:Message-Id:Date; b=Y97QpPlY6+IdH3vwADIh6v2mroiCLsjeZyE16VOH3I2qYJGXs4zfT6AiT8r2pDlyy7qnTN1zF3Jg7y/DqwWj5Z64zCSrLAfblWaUNdj5pq4zW8/TfG+yzLNRpt01BwDAA+/m98Aj0jP7RBadrVSkX5gx09uc+sLl8fSJd8w704k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rCGCxc4F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rCGCxc4F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B900AC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778751033;
	bh=EsUewti0k/2lIQVHrKQpUhZ7zA184X2svE+s7pxT8XI=;
	h=To:Subject:From:Date:From;
	b=rCGCxc4FouUHs40BmOhLzav2ONEgZj68j5jDYtUrXJ3J83BBwsf73KyuO8N+ptT31
	 ovIUkVqAn5L2JaFtRW6AX3ISWoSiwV8TSrnnlfBTB3iGbNs3XRCkaY4YP0lJt9fMv8
	 /cH8/l9DVLhkK2h10bG2IcIPlJxGW/pIqcPV2YMDvnmb/fTCFR1w8rFCymfBxKvTLG
	 6/H80iUA4CxvzzAuQZZRkp152pNPqxl7Dlit22Or1Sv1KyvE8h5OV1Fp/VZCVUeeHw
	 JuIBebMd4ktU2fS99BfH20K4PFSsd4cevxI3ifg00xVKpVbgBrCt/VVhkZ+fIUkLOS
	 ENo5TEPkv+F0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA91CD4F25
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177875103368.28689.5988819763355355021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9295edc266d8ce87b980547ad851941c7510bc0fe323de065fd71c735d290786
Date: Thu, 14 May 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778751033
