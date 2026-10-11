Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3712A28CF4A
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791681034; cv=none; b=PqOmJO9ndZIEvLH1xHoTWdFXVl6gAe7+Quf8Xr4RE33MgqR2FMShkhb0D2tGaV4o4Cy6U/jlhPQDxh+au2RDSEuYq1RgXGlGXIpZEHaP+1QHe6oUKaw2UG3a1AXClHfVJOkBM/t6bBgGc7ZIjjI4S2x8rno/zpmKrGnc2nuLYCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791681034; c=relaxed/simple;
	bh=UcYgXIIbFKJrgvljwxHJpBvNB3l9a9doPC+tVG7uA/c=;
	h=To:Subject:From:Message-Id:Date; b=D3ZfI91wb6EH1bGJrtCdQpXakkX1r2IUcEsnddSjDfy05ZicOshSvdiWo5pqxVTwRmRi9H05G9yRbFciTGLd5fqpOLt1HJA5YP7pUC6gJ+5HogNPKJn+spk6cVpiJ9pQhCrToptB5C4ZoNZx7Yze4TUqybL/0TIw13uWIgOJ9w0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YtsHfuiX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YtsHfuiX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB34BC2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791681033;
	bh=UcYgXIIbFKJrgvljwxHJpBvNB3l9a9doPC+tVG7uA/c=;
	h=To:Subject:From:Date:From;
	b=YtsHfuiXhk54iUNmd3neFLXNG2S+D1ulD/iDT1VariKCbEYvWOi8TIrGNx6o/bOll
	 Gg4IjqXXKshdKnV4QrRD4syBRL1qPl8/XFb5K66HrCtmDPtfmXF51g2LpMf6ZrMtZ7
	 BC8fOl2tCPu5IHNniZpZf1QZbLv0hrKJxl/garr908ersoyggwhj612cnm9GZrHiuK
	 INeEnS0FBLdGA6J5C0c0o7HXrwAawMrd1pIDB3pvdDyPsQEcHZh47Gyb66yhSiP4ms
	 KxsQvEWyucZnJ7BbJ1M9nQrRAugUbsGXtF2fOuHAmnHCk/hf63oQFuLNVniW4DoZQE
	 m8TpXdeRLwmGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A982BCA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179168103368.2446.892649453467624505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3df3fa0151396f282fd3a5d83a28e942955e748118c0fc5c5de848a9b97f53a
Date: Sun, 11 Oct 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791681033
