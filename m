Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79CF9376F1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 13:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718458703; cv=none; b=Bb6jFWAO+hqga+bH0fMqSmf2+a55xNnOCCWLb/bS2KqrVSkPTdXgfbYCrhxGSyr9ySnwA11HXHj4RAc0wX+jXlYpe0djsq14h7deKbsfPUJz1CT9vWBzz8rsFCA/pv74irPq4CF32RWoUyCcjM9XeEuyG4rdTB9zAHCTUps/YJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718458703; c=relaxed/simple;
	bh=vYzQTjmwB91RfC3kaFypza2rbaqikOQGHrP6gG6hgEo=;
	h=To:Subject:From:Message-Id:Date; b=fFht9e61qInjCH4NS7YNeiZq8xWHEaHGUpoedHclj2VWv7oDtxHOeaOvR/KLtXJodRDXkGwj3QMqZhYJZ1f8TxmM46geg0GeWg1kCXuylA6SGWCuCKfKGkt/gTGDd4k3ezYDJfgoJquinmJjJa1/zChoV2E6T8229dvVS5B8sCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZdXz0oR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZdXz0oR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3460C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 13:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718458702;
	bh=vYzQTjmwB91RfC3kaFypza2rbaqikOQGHrP6gG6hgEo=;
	h=To:Subject:From:Date:From;
	b=HZdXz0oR9RMqjBebtIQHY29G7Rvx+kPaXdDCu/qVae1IA74t/EeVojvFiNuWBuLAJ
	 wjb5khtZiFpw1A5kLYWJtUj2ihkoJlUaVLWLCxVy0i7bQIstkXjUHrepWVslcQuMcv
	 Zwyw7TxSCImtQyiEewjXNmG1r3zCiR9NBpa1rgUkumSbGWLg+pMQEHiK/ezFakdb6C
	 Nx7fvXZc0tP6Dty+UMP/JwuF3NH6ArrkDhzsL8MlOSVtvN28uALQR7IuaSFiVZtva5
	 JuoGNiPxUMAc/zP6ss7k0AzmEAamx71ThKdN0pP0q3C842bqREb34y7K6tSTKhFMFm
	 9/D4+I1df2ibA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB979C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 13:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171845870279.2440.8066051053174184080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d84cc47cd7d948c58830ee813369f4415d90d6b79d9229f2dc02437f0a513ad5
Date: Sat, 15 Jun 2024 13:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718458702
