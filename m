Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C2470823
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749221994; cv=none; b=JX/Mh8mPtTkXF6DIxKAZKPTZOouEzn9CLzlYpNGAV/qqkSHYo7F2SF0dy1D6QlVGLD61SUTNXGaCTaSqKwU9dkGnSXgZ7mcre21lM9EcSwfDz7bsVgsAC1Gf4TVwdJtjdDCl8eHemg0xRFom+TRbOndRWW8ThbUA0phiVbcHYr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749221994; c=relaxed/simple;
	bh=IxzL0ucV5lLtwyhMdOHykTvNcAsEkdCC/H7Y+TV7B1c=;
	h=To:Subject:From:Message-Id:Date; b=UzkPiYGuY/Flf/9OWMnBB+4A9x7jPdDLS5TIZLPB+/qiVTtr1+8zdo/ZJyyGYH63SwQaRmsivvXdxSI57AlVMtnIM3R7fubaAv4M+JC6Hui4LiYlLKVMNeSuaumA+kQ8fIj2gf5TtCUw9fynrQqRF+DkT/nlPHj1QX8QkEgSnY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYzw9RdZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYzw9RdZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A03C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749221993;
	bh=IxzL0ucV5lLtwyhMdOHykTvNcAsEkdCC/H7Y+TV7B1c=;
	h=To:Subject:From:Date:From;
	b=aYzw9RdZP30tOKQHd5m5OPC2FuCMqm3/oytp6nqC6C3zoo6qmtnd9VEp6YdTkASdR
	 shEdRHNfptH8Cp4mOOQIN+kCy7MSNr8XfC+7PaBo/0Aq1sFFFLOpBtYPlhZJO09zNs
	 O2/Z/IRkDVae7tHR8azjG3ucV8MxvAV1AjPb/Bo8hKumoOFaWeUQZSx2oDq0GGjDC8
	 Pt2jbZokISUH/5u0cIMHqdyqtOrSpqi1lqkCnoKiFF8vFu/t6nwCQT5zdi1v5bZLfd
	 6EtMiWGeqOhwuQ2sqQz9ROTNj0JzrM529DsmPQCubsnlcbTVYQ9IRiJGH9Fd8j41Vk
	 LZ2gAAzpmQAzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E626C5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174922199357.26780.12799363622865288120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72d9ffdcf4c72e9dbdc03c686eeadaaab00ad12bccb18081fa3c53264f3c108a
Date: Fri, 06 Jun 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749221993
