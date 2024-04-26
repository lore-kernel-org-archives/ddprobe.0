Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2700C156F45
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 15:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714144343; cv=none; b=OTY5p0+D4m1Dnnz3xKc4VYUqJDN2BPb0WRp8M1UOqtTkZq/j6yzggMyuDPdoBXxxhMOyIKTLllGKNTbLntOr5ZXK/dcLTUD42ZdegKYfoLkYFd/pybp7kp9sGNFFnmvbHkrMSuWMm3m93UJky1kmhI2JvA/Y6jA3V2t6WlXEY/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714144343; c=relaxed/simple;
	bh=HZLrRKDUQuGd3N0ATumIojupOYbOQNdVVqCySKqoc+8=;
	h=To:Subject:From:Message-Id:Date; b=NuHbds9nxnD0Czo4IkldL58WN90jfngn1G0obDEe911lzPTdBADLfA63Y2xzwJJz7ehjICkWf/8XyK1yp6+/q2GHc+Z6W+j82DWNv6M18pxGXF+HUuB2hszmbvH4Db7VHRQW6boQ3M7taJMOCpenUNnB9TMf4MHb7m3xc6zNoZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FyHljyq5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FyHljyq5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD6B3C113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 15:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714144342;
	bh=HZLrRKDUQuGd3N0ATumIojupOYbOQNdVVqCySKqoc+8=;
	h=To:Subject:From:Date:From;
	b=FyHljyq5Pn693BLLLp+sSqPAMl4fdazlXQRCnLS3jxXKTrtTGGixHuMy4Q7/ydXqe
	 c8mObJDSXdd0H2+TuNuJe2jLlECDJlWTAVvHpis2JFPpu1AkpAYoo9+CsXKgrerAVI
	 ignJG2J9gno2TC1vX0XVo9+jsF/557PXNCo5eYFkkwqTO+7JACcwEi/2hkQpjQcsy3
	 xajVOz5WHx/s9bzsK4J+jyeRQhA1977aR1rR7bCbUvjFmsUSA8VZS9GIRzXtQRpxwp
	 v9Wvdb1BtFQM9JYSDA4XqIfz6YAXE/Af5ymGtvqetQN2M0wcE/LW58fFeg4cqDjb9g
	 tLEizpp8pJDXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB5A7C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 15:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171414434282.16676.4840136312993710811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09f874cdee36145a07f6da6344d7c483ae33178677fb78c03cd1221a91b1b01d
Date: Fri, 26 Apr 2024 15:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714144342
