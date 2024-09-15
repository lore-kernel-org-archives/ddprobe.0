Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421AB17BA0
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726383354; cv=none; b=bmxhelZbI1S2pltAtXrNWoAjrOxXG+IisPSpEhtVwEBBo2spacs0skHepBD95WX1jF2addzDnERXVuCRKh/XQGcTsgwpRYZM+2a5pR2LsoxZFo24Mr1Sap/155qZ6OB87g/yWER7u2pguuefYkCANzwQO13CvsVmsIPtx8yeDgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726383354; c=relaxed/simple;
	bh=RTSWKDaGu/HAnkjApO/d4skP3UbTmkqIrpE/+hhekkM=;
	h=To:Subject:From:Message-Id:Date; b=nllO6WYb2jG/p4bcO7hqJ1gD6ADM8wy/0BNIe7axtJD3JB3x28WOJiHYnC8si1w/27bA/qZvXy7ak6VwxAk6HpbJbCmeoCBr2M+Rq3LzWQxJt+bJ5UpHfxodSa83OepUWGTId93pgglpvNcJx2kVZ9CP/S4zpO1D0A5sxQj5nRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gxcYRA1y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gxcYRA1y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6E15C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726383353;
	bh=RTSWKDaGu/HAnkjApO/d4skP3UbTmkqIrpE/+hhekkM=;
	h=To:Subject:From:Date:From;
	b=gxcYRA1y9IJKuetUNGqG0pMFJ9IFLS/6DKDEHDNqpd3KPzaMvid21uPDrQItmkGQi
	 mtIRkQ/pDZnETCYtRDLS8WE7XynA+PnXcGSTpQLr0hKvFEbWSXoODSSLYsxkBeYIjH
	 jF32WU+9xf4zoVcOn3SmHHWDOpslaH7mLufo/6NQYWWimE6Hil9gd6LfKKmWSjJv1K
	 64KFSwTes+vl69V32eCdgAZM4BcUFIc8nUbA48tZAcZFQ2EGHqO5cf/xM81VfcubS6
	 VkQz/QaMnZ75IN4fga5Nx2THN9o3bBl6MaihcNEWQ+zcMyhgG0LLjl8eDZ/Msw8Wc9
	 tMX8wzRB0s9Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A50A9C35FE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172638335365.14144.2124890378804826915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f40f168e00b255bb66a0dd333066c8b79247ebe0966bbd1769690ccb139ee429
Date: Sun, 15 Sep 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726383353
