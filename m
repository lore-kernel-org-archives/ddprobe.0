Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8B61E7C01
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731968754; cv=none; b=fvpW7cbuOpJsKkSpFKJcDPkl14jKSW6L/PlnOIZ3R0ZN7VJPJWr/NGbJUnFtQD+Y0R1QErqWHz6j6GGbnmNlaU/7x8PqmfJM2SVg+z6lgbyebuAvYFdBKS14wmIeeeN5WqpTXpwzDjlprO6cbrCsc90KFDaKK+PsN+Rxm4W/n6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731968754; c=relaxed/simple;
	bh=11WPIgsPp2BQcJWhI0gXiC07cGwPxkAe2Eiq+sgq7a4=;
	h=To:Subject:From:Message-Id:Date; b=o+sTE7Xf0Nt1KYENRDhDGnt5uBLn8OE+t1hnQn3GKdDCbNnms17t1vAqXxc7XYmsSyeu+xtyoqvPJiRTsDSWb+nj4Ac6M1jpomSrzV1Kctw2wqZ9RP+k2hGeHGG0TmaxUjgj7Lc4FGIeLoxXaZdR7SlpnbCtpSWDNzSG6/ATvNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OnicQCsR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OnicQCsR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE42BC4CECC
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731968753;
	bh=11WPIgsPp2BQcJWhI0gXiC07cGwPxkAe2Eiq+sgq7a4=;
	h=To:Subject:From:Date:From;
	b=OnicQCsRekWe3VI6tIU+nOwl146iDwdrPSc+3/ifsMSg2Q2u96VQ2qBgY/hN9oumb
	 M1SHLmqimEhDggCNYuZD/80RC03sl4sdVuyeXXU2cU3I91oK1VCTjYHvh6h5gzU1w0
	 bUs8B5UMutQaQd66tiCXiSI4GRU8u9SL71dksHqXwaeiE+7wkYoPE+nDs+WCXCdG7f
	 l3nRLD5E8NOFeXlAfdez9a9wt1vl5qkXuuu0bsyH9msJWM84JcGcUgOVQ6q7vwplKU
	 1lHwiF+zUHjVsNgzAJS+oKxArU4dTmOFtZO3TeK4YZehTLZC2oRkZp9TfA750wEfk1
	 P/Qb29ZUqIoQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CD37D60CEC
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173196875363.32335.6516754071345420913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae56aa283c873602d73f2c689ba58b3047505558d5238f1cd192af48027dc9ee
Date: Mon, 18 Nov 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731968753
