Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4598117548
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 02:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741920534; cv=none; b=imoNOkOWIe8LCqF2UXEjr008AK60PzWmVoEavPEmmVTQlcNTvge2oA4mG7nj9DHJJcCWa0kFkyaZC4NWKq08fmpYxNqTgpmDF0LQKNGYqdJqn/4HxXdLibHalB5RQri6JV/MqAa1TUV4B92PwslkCVyxE46S+j8D2hEnEENSDtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741920534; c=relaxed/simple;
	bh=k9zQicd3go7Zg+1jZjINFgVZTMOHZxC1DO0KfFxlxMI=;
	h=To:Subject:From:Message-Id:Date; b=bmAETHs8coikgQ4+etwpC3JoTL+vUY9AyhQmEAmwFVGUo7uj5d5SN+9f1vh0gNYDXDxE/hXMN9ozhWfeWNwSc3QcDjtQHGP6gGRODiHgQpidzAkELH5Q7Y2OHBc5F8alhzteJu4RMzfW7Dw/sMaj3pm7PZqcTM/9U1wSW6Uytog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DoTPzxqZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DoTPzxqZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1271C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 02:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741920533;
	bh=k9zQicd3go7Zg+1jZjINFgVZTMOHZxC1DO0KfFxlxMI=;
	h=To:Subject:From:Date:From;
	b=DoTPzxqZ3L9nnU8M/kN+FoAU0wRmxC0ZVpfpKRwmF4NNjwXlZH5Nr18lxe2ookfQe
	 +TU1c713KcIk+XZFEfAM92wqRssnZsPZmU+exg381S6L12ZXAqfNuZsWZXQ9m4/B4X
	 99FcsFebzl3ZFQ/KVr1Yz+5d9rCUJ6lUcrOq6RDxb4dKr88bCJ5NJmx8+odTOnvNGP
	 Gx0Bd8SzehghMLlFh+JdMzp0axCFYtb+cWJCxJsAwIIWAsBk2tewIJTspYq1QbbOS7
	 bwWWy617lVGDO6tSFKH/zTeuHxQOVGuRR8PgS82rEMJz9JE+4/yAKShxBINOxGBmj/
	 lN4LBTW+/HIaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7A44C282DE
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 02:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174192053364.13068.2948129646672469489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72b1bf4d60cf87f5df3db7a415b1c75d422c88f0400da8334109254652d3a1ef
Date: Fri, 14 Mar 2025 02:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741920533
