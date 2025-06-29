Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2101624DF
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751236794; cv=none; b=j4q1ai2zQK7CFcfqAz3jZtshbhQNq+uFGdf+PbgOzbG4IWPzVT/DvKXjngVz6uR8B3QizVlA6nQ5TQPx4YMt6MJsl7Ii/meR1h2mNWDSKwiaNXb/7TPUADi6PYUZkoTAEdy0smHayKg1t15JrS9PWZf6E2rZPuUldreyEX8ymxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751236794; c=relaxed/simple;
	bh=Rie8KuE/uIGzuuoUfYP2f+LPnClFWMu9kuSn37sZ+GQ=;
	h=To:Subject:From:Message-Id:Date; b=aZk0H6Zziy0ibM6OEmc7YGNdsylxqSCF6tHCgjjZM1TWzePmzRZwhsOYGvcL+Rk3aLs3KNic0CHlq8VHtlA+VH0AwiXiYMYSbdpVsev6fQ5ADF1ERCcBb1/s/2OL9mb07SFalt+kX3NmQLuq+kYNWpbowG7IuiQAgdBlpF/FbrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nrZNdrkS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nrZNdrkS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F0EC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751236793;
	bh=Rie8KuE/uIGzuuoUfYP2f+LPnClFWMu9kuSn37sZ+GQ=;
	h=To:Subject:From:Date:From;
	b=nrZNdrkS7WY5qoTsHiFvfKt2yOclxvtmVRDSOoztTNCjXmgVA5X5awDO5N9240gmq
	 +SwpzzQ/WzhdwdQEdpcRT8mrFUNKH+oz+7ORYVi0kYOtBj2DeMnnfpMQjwUJQAnSir
	 iWv0b0pCnabUjg8OjPgo6hXLR7knOrelKDdj45q78v836Gv6JaBHAVNr9EOy9GsE34
	 bpNo1op2HX1uZayTsmQ5yNUM0H2Lj1e/WyK+ziDpDvpoeNimu/Ek/YqR9xYVYAURbj
	 axfDK+ogUwkgSyGw/GANNVU6k0LYjbd0MJjRGSbmGyVSD2Yu31weU0RAk0mBS223Dw
	 BeYuSalpIu/nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938B5C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175123679357.16373.834681798039688426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32dfdc2e85a921ff01b74cd8223d8a8b9ec5e492c28fc1f8fe35819d33cc9f8f
Date: Sun, 29 Jun 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751236793
