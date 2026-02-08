Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FF333F394
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770582234; cv=none; b=ALnf/ZP6cX5cb9Q5BlPDx/mU/YGAbclB8+SCTLRbuNy0HAcbnpzTCyiu3d2oUsYGvoNCXeK9jBXW9kFDKathRzcJhVrrM5v802ZD7dcyRmpHLC3UT73pfouCMrCVIUMbtxx68YcADY2nIY5yJq0rrwpYA7BoIDV71OWBMaUf9vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770582234; c=relaxed/simple;
	bh=I0BFXmn5LmihMxjSSiDP2DOd+tje/boIn47xce2gBN4=;
	h=To:Subject:From:Message-Id:Date; b=ImQ05PW9L80J1i84XOqjJu1KgeJ4s8uC1SR00YVcK5s5SljD7/EXDD6j1w/vIoIU1M8bGgoMy/xjM6q66Tc0yyvT4ofkde8IeYdtKUhRMfRLlvwLsJCxhmlBb5bjhjQ4YqZW0c4yDNTPhGujOENR8NGxpEZW4KReQWVPjnAQaTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s7+0JA1H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7+0JA1H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC455C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770582233;
	bh=I0BFXmn5LmihMxjSSiDP2DOd+tje/boIn47xce2gBN4=;
	h=To:Subject:From:Date:From;
	b=s7+0JA1HApGgeHbFey/dBk1Bu0baGP2DhAnscYYTX6WlnNyXVuoF7+Z2nmhWRRHxc
	 3Su+cww9Ofs6YSwk+t2zPpXvEfpdabQezpkfDvKcN/vcr5UBlagQqm5040MNNe3Y1I
	 npB4TKg7US1B5YK9822v8gc3s0iylRDrrTHxREAInJT/7o9R3n8bG3Q5rwM9UN/8Fq
	 ZVmvsO4m3ua6xpaUwfEA5HEue5f592yEdsjvoac5YnSsPhE/urk2wkNpwhhxhliy8Z
	 rZEwzjRFTT7kC/P4xUVd/3D4fV9CFkQEbwJebiW41Il6uX6Wm53Z4+MeeP0TomwLuH
	 +Z8A2AlF9Rgdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974AFEF06EA
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177058223358.19122.1646868795895032114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fcca76304527500ddd916250b2872ebcda05c926719d237ae89209d5d9f2053
Date: Sun, 08 Feb 2026 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770582233
