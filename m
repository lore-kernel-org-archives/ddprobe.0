Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 557EA1170F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 04:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713328763; cv=none; b=YtWJLFE/WxxOQOzE2U96GefzlTWKAVyuuylgSM2r+X0R9HU/R4mIhCULlq1XNZs/4/eOVUQIt6uKVqSwHSZkXp1kisImvW9bAqcyab0tjoJScFxjxPu27yf5iSZrp5ChpPAacI5/RUEz79AG2whdlt4luuS6ynCqOP2D/SdCPhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713328763; c=relaxed/simple;
	bh=cF/BPfQD7mXtvT1053sMDF+ldWSEvuysSD6MjX5Dqpg=;
	h=To:Subject:From:Message-Id:Date; b=cRHAkFkdg8nPfiD/cUzx8vGwvwmMYIscEc6OsS3WJiK68s03UCfiNfTehHjePcceOVutC0x/FSxuCJMYm/hGgXn/pcjLJf0x8NY5aYkA5fbKAi9+NUFuV6V+jzsjrOAdSM4KvaSHI00LxWkuxylbvg9riXQ24DSzMYKOfcACqng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VfJkkjUe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VfJkkjUe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA7D3C072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 04:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713328762;
	bh=cF/BPfQD7mXtvT1053sMDF+ldWSEvuysSD6MjX5Dqpg=;
	h=To:Subject:From:Date:From;
	b=VfJkkjUeMvQDb93/xipdoVX8gm3Dq4Srh3iSJAaW59Q2eYJN/SXwlolW0V/xgDpvs
	 8UTOHiwjGgOsknT1e482jM8sgE5QwhtL9XWdkVJN31NiBtCF83liS/w9sDJbT0wHU9
	 Du2GD04x9IMfFh9PkqjKdvtL8F8Tyocs95U5cVNFk/99bAhYR89qhz3DnXQ72mtCgr
	 D1NEdUSzsBsxGRmlH8Favmnp+/ixPyNw/WLer9HK9G/AfWBjnpqS1vJmrCwLrHe7Jn
	 Ketqf+3JBiELvEtqLebVZC7q+/WigC5NEXkqjBe0vSnWGT3Qlv4WgTx2e00ou+d/0N
	 ZO7fmda3yxCKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8882C4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 04:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171332876278.12644.16675340988095880107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de23422f229165c7ff6cae05819fb4a5233d85f05e97709a0f9dce630968ea0a
Date: Wed, 17 Apr 2024 04:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713328762
