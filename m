Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180033101DE
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767176634; cv=none; b=UHdAvCHlctWO4MF7Lh1c4Os/zz+9m3Ct0cvm760+QY6T8NbyHR13pvJsXnnprBUngWmyKF4U6g61aLO9PRWnbEvLSY5egRETGWgtdJI7TgvJGlaqRnE3zPiWbLDUi86Q3GBGfKBMzTIK9FzbhAakWGvW4oqOlgsWvusLAeXqW8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767176634; c=relaxed/simple;
	bh=cp7XkTOUKdZHQl1r0At1EnOmfGnfs1bHvIO2NOBUu2I=;
	h=To:Subject:From:Message-Id:Date; b=WRdDBAfwKoluZLcfghDp9vZ9pBr8M+nhh9NUR6e2EuBDSbf/zoLNvJQUjUKTi4zmfyikm8Ih4rgCYESHqe+9zMoYFW34ockNkr/Kbpv0I5ogwiRbubC/awwqEkadOG6Bc1an3qK5WpG0lIqxVB5W18HI11Py6e4p4tFeyz/FAls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PjD8sm7K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PjD8sm7K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57DFC113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767176633;
	bh=cp7XkTOUKdZHQl1r0At1EnOmfGnfs1bHvIO2NOBUu2I=;
	h=To:Subject:From:Date:From;
	b=PjD8sm7KNFpniJChdGTb383iPcxtrNEfCpwI84EZCUnhCO9STM22/pPhxaFD3KjCw
	 s8LV7mBGKosMsHHfzW997SdURExIDD2MBBP+G+brJv//txPHfuNfQKLoswh0/8aqkr
	 M4T33Br+uOEoLPOGtrmznalYvT5cTNSCq0BpTgx787zJ+QpKEI4Oucr/kGtChYarIR
	 LhkqcQM65eRUBEEI22Z43TuTmNsDXScS5ZwWOAhX8j7d3FLHyknM7a8AobCOIBiV4P
	 Ee3UGmKR5nD0TDNcLynr2nyVqpvYs/avNQo2d0hDKujsd7L1Wrp0NVy6XeYBOzgGcZ
	 u6zXvESSd92HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EDDEE6428
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176717663357.31444.16823391183350060989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 854d77bc80310f82bac696fa22e61a7e975f7d62e1d1e613c86e1f38e7544ee9
Date: Wed, 31 Dec 2025 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767176633
