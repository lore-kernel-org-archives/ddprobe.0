Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 511A3259C92
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 16:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764519774; cv=none; b=ZNvuvbC7BnsejMGTBvpVuDrUT3BPCX88OaT3P9T6Yc70uiLxGXIFrw2SuIUd1ACuovs4evIZxtYDRosxjMEe/P3Y2CzTCpzgE+sn4/000S4gb0YGJD7J7ycUjUJDPFGoc3zOMLWnMGvui9/kuGDiU2K51mYsT0BGUVYmUPnSjDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764519774; c=relaxed/simple;
	bh=HYjIzGVmbvTxC+rnWqCbXhZBq6OOq4bomQL6j1gogbQ=;
	h=To:Subject:From:Message-Id:Date; b=dflyNFoMmZhimTomcAFF8LMLTQSxGwSnwW3QVXrAeNwYqpK2GPR5pTLRM6WNO9U7Z+8QnTonqZKbs5LZBrKb8i8Au4GUZa8CFyh0oQd9UsFh0gyZlyecdJDjOTi4GVWrfcO+gSWyZxcZ5sHbygwrW9D+rjltAbHGn+IxA6d/GzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oMbU6h19; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oMbU6h19"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A742EC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 16:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764519773;
	bh=HYjIzGVmbvTxC+rnWqCbXhZBq6OOq4bomQL6j1gogbQ=;
	h=To:Subject:From:Date:From;
	b=oMbU6h19OBnppmJwXzPO/0fujJt/bpTGpV2YZSNC9r3kDn5Vjyiv+UvE1BCUQ5bY2
	 +kp+FYYgbJBEyq4wVM2KeusYFOld1GjT0TYF8labpoq8jrtVs0fG3zubNncQ2jDbv7
	 nh5D8I3K6DtMaIPyM4M45GaaaoWUfmU1J6qvo8KR7X9ROoI7khD4RPyV64pKfsKcqP
	 TDr7nh8uVbKnIAjIW1uq+hPCK3xoFXyHlJXlfrcVcaZvNRN4h71Sf9GD8Fb2bktSk6
	 Q6ttYXT8ntMF3q8CDUZGlXewPRKpAgbCqu7t1AaA6ack7/UL/sHBIUgJHdWpBwXbuO
	 Fsku15QbBNSRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FC8CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 16:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176451977358.30962.14407512535316748875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 390b3c0b2cd306b9ccf1af5c67a3e2831ac6aa2faac5735759288a0e5e164164
Date: Sun, 30 Nov 2025 16:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764519773
