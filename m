Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F04A9481B1
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772750694; cv=none; b=BiwGpi06txV7kyoR8O0boYmExThZgueNNxC9e2vhzluGEwIyAW1/24czZ/NfgSEBfOdwlsUQsia8wHZnDC5SSjhzesEbqIvxoHwF3FCgS1qZ6DPGsJT1BkzA4xByMHCcKPbSXoBgUpUnuSP2O8b/GqkENaf1zTUwXbbEOv5sgCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772750694; c=relaxed/simple;
	bh=6DHjXymUZYGvgc1DqZAisGZGKCTt1or3Tux0frBA3Ls=;
	h=To:Subject:From:Message-Id:Date; b=JHwDLj24idlbZFg9NQB6cPgdsDdTD7XcCSqeDrCu4Ae4XTH/+GNpuoCwsaeSih2fXmg7uE9FKx75V3nXcBJ34H/KjOS47B/BwnzM81lRG+oxoJ2icq5RcbtruINE3dlEByo4eaAPXdsWIqjR8fg99Heg/22eJibnUZ4pU09Z6AA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WvQBMpEE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WvQBMpEE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0007C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772750693;
	bh=6DHjXymUZYGvgc1DqZAisGZGKCTt1or3Tux0frBA3Ls=;
	h=To:Subject:From:Date:From;
	b=WvQBMpEEWmf/PIQqpOqqswB8HNwCC21r+si6WjaqFvY4x6ksJl/gMLtNHcc9L40I6
	 5v6/E1N2fKsPrKGTO65ECwAZEP39lvnMrvzKZwOC0+FlSc7biyf7FWRl1f/AgLslp5
	 sUmylz7bzYiMzWVzdgjCTikV7CS3BAh3geFQkSVOiTaMAr9n4wPFLuWnDgEuXMWxCI
	 kYl45hqROk95OzQY+gOFGC0E9SZIJkVACi1IZRUj/megmUiN2aOWYB3LcuyWdiJpN7
	 Hz3KPjo8y8WxpJBXSddRif4SJnpm2AkXxZKosEhKSADm47hJd0xVahwi7MaHnJwCIp
	 0GA4EDi6AiZQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B97F513E6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177275069358.1828.3181978453798845339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9a5451ec6ac0964028d21ee2f5aeeaded2a14dbbbd91e8e37b032a4c9ab9ebc
Date: Thu, 05 Mar 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772750693
