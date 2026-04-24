Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2376A1DED5B
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 15:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777046254; cv=none; b=N6gC+pQhjjFsdVr/ErsPysMlY5InykVwdul6O19nXSN/wrBPl+HdjSSE2bP4oh78cbGqJRrNRAn8/ShRNH9eiQ3eb4RocGm5zqIOSuvn+Y9XqqdKzsCM4/g7YHzOqz07Jrvg/XateIDiAE09WZZP2Ndf7mcuVairrIyx1ZmGxws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777046254; c=relaxed/simple;
	bh=9figeC1nghO7mPeFF+8hX6rgfOeAlQSsENhyBWfkv6I=;
	h=To:Subject:From:Message-Id:Date; b=R3p23Un6uJ+NPzzuQX3okQzUGm9kikAns2QW3yjltkKo3FArl4+uE41vomv41hSvIbpegWUjgvmnCNMXCaFE/LqiDWEwDRdg0Y7IflUU9d8TxVVcRHpp0M2F97PNFc6CBusTh3g6XpT4hNVMiHLEf15zg5abU0uyK2jpw1FLknY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SR/TCZx6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SR/TCZx6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9146C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 15:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777046253;
	bh=9figeC1nghO7mPeFF+8hX6rgfOeAlQSsENhyBWfkv6I=;
	h=To:Subject:From:Date:From;
	b=SR/TCZx6GWFbiptXqlluGtklaNSA4J8ppS2/Tp1Uf475Kfq5OR1js6RMpbOTCuCdH
	 Q/TvO33T9NUu/4q/i8J5LGL+zbt7bOobEYK/RTuUNCjlY7MIktNk7fWsIyEnmlNfHU
	 rsxLgPxATOnP9pFKcbTYL0qFraO+/RhLOrLZ/G1FzPbIQ1bZFkIlDzNuI1813KhKTN
	 hOhlpXVjiDue1O9ozTdbd2JeHAY2UymdmpCokflZpELl3nx6bC+PkcCExOdMPrYRfo
	 pdGdF64ET9bj+pk2yRhhZ6Xvt35pSLlZ0jXUFpEyEr6NQxqkcVNkZPaY5Ts7dOKqOb
	 qM58tOMBFRqWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA455FED3D7
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 15:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177704625368.4083.2538130944719242569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 830b164684aed852ac600d9912dc373b57aa5af9fb9559a930c348156cc520bb
Date: Fri, 24 Apr 2026 15:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777046253
