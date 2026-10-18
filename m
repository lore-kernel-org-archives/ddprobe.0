Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3894F3ADB92
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792335034; cv=none; b=mAMrndiS9vd63mqpMDj/LhDSHF6xenVTaRAFMZDI9F5qcOudMArAEbH/DMA4cYprdam86r1RcxkzVJ1tRuKtYfWFXlCIoaDLDKjw1WE6whDQ7shMVGw8558+2PHoZvqra27y3DntryWqODwHUR1hxm71m4V3a8bN377oxo5kwm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792335034; c=relaxed/simple;
	bh=jXZqjs/txkcoPv8kmllrwVl9JRfKdhbizkGFx/akWO8=;
	h=To:Subject:From:Message-Id:Date; b=Oq2rAAaQfw/nnGbnmgIZbu0wnuQJR5KqaeSmF2p43oRIJvdCgU9rdchbn8VIGeqQXWGTWwCojfTN2J0IbaRJAfawv8plzU1iXexaYcviu4YQWHSFGptWxO5WY3sk1yNeaQJoJKxsP9JrrocgjjaKpsDycOcTBhrnSfylZSR8LuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YYTp4MsO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YYTp4MsO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D038BC2BCFD
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792335033;
	bh=jXZqjs/txkcoPv8kmllrwVl9JRfKdhbizkGFx/akWO8=;
	h=To:Subject:From:Date:From;
	b=YYTp4MsO6a24MSFLbW8e5KvJ7+r0PPbaEqIzaVLQO9exXDdntPaKhSECIbhuczSTH
	 DVG39Enf++J/3n1VNMaZbvBYRz2Nxrq3CT0PIQ6RK75PDs3V4KSwrgooEz9pX0+DvQ
	 MahbeK3p9zSU+D9PDzbYqdQ80bgcEFn+5gWecNkvws4uLkpl47RHR4t329oQTgc2EW
	 wWRKiOaFag6zkzhb46I6RvT3Obl1dFg44PEJkuO53eumpdCWAYJvB5eoHBiESmh4UI
	 eia98JWpvHAxY2Jyt1pJHHCkOP+Rh+oqolHZTj4uEKnV8de+7ZICidyMKZ01LfaqyR
	 SbqrRVdqbeV/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4CECCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179233503368.10581.8991927956858952022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30f61f18603c6576f5492e7fbd5270d1408a17457029d4796f82abc5bbe7de34
Date: Sun, 18 Oct 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792335033
