Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 663C1D527
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 15:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713712223; cv=none; b=oZpijn92NJ4JW571McODmjeDwAtl03+1UAkchNRME7GKqe/f5JbsfBpczyq8gOOGavdrhsAJL3OQWvUCelOjYPnzBTOI5Ar4vHJDY65XVSIGgiwCXAqs+atvaLa+kwOkylfuFpe30kU7aiQzsNSppZU8ure1JPw/ucQ0dCtLrRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713712223; c=relaxed/simple;
	bh=66NDnTAp6OwsjzQ7jfCcbMkgzCkA1pv8kyjKCzQ/plM=;
	h=To:Subject:From:Message-Id:Date; b=n+kPJpAPcE8eD+n3TYE1ffOA2eF/62EFZJsOTpxa2VwOXev/M/rTjMDfzPKPG1uU55gK8Mj8jLDQ4OB+5wX3ULXn/PmcrA7b3qHjtCFRi96ZEXd3sUD2KcT7PtXcPlx+yJoD031A00DGrvuJXvVFC8pDqMyyog5duLShjpuxA7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eFeo3qVg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eFeo3qVg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA57BC113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 15:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713712222;
	bh=66NDnTAp6OwsjzQ7jfCcbMkgzCkA1pv8kyjKCzQ/plM=;
	h=To:Subject:From:Date:From;
	b=eFeo3qVgmyh+ihvfNE847FxQLyTxtgO6yTv0lgjW+QAGi3M6QZb/cdiIkqR9lpM/m
	 wwbWaY8BTzMtzaIJDCOIAl2Jtms4I4rLR56Su45U9s8HKuHP3DrQ/86dNY8UJlyCyi
	 /8CNgN9AFERfECbYWOcwNpsFM6eb1DYJrKQ44rpR0BoPeXKPjS9TrrckqxvhPQGSaP
	 pk1+T55Cik1MiVUUY2tq23Sih1Y8iKlGauPi2plYWm5iTkxx5X+AzhorM/EcArxOUT
	 u37oTdw1RntAgDnC4S9i6u3IdBnxAaWzAAyZIfdIRTUHL2UTGik9hLjp/SW5kQ48Zp
	 LldexT2C3fd5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C545FC4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 15:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171371222279.8744.13885320440684806816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 256a659c67c1d9d1a38a945059f6855d926866796b4a016b96e62795c1577482
Date: Sun, 21 Apr 2024 15:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713712222
