Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F49922FE0E
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771284294; cv=none; b=HwskiOKsGaWktt8Ww8Vxv2iXx7SSbaoTlobScaQODzzLA306tFKg155vXV/PbRtnSzU6wD80A2QuUiKxjrh4zvYkDEP7z4NY+yUrQ3O7XrZkNJ6/FK0ag7kYumKQGiT3KvcdPsUWNtluys3JdL/CeIiTWCZk7ht7hFzGRsVwSRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771284294; c=relaxed/simple;
	bh=eUxqHrUz7qGSO8dYAYCPHnXDnU3/dPO+7FBsgPkEiLM=;
	h=To:Subject:From:Message-Id:Date; b=UkGgXpH2eu3ebf4VKeu2qzWNg86Sp4D4W47/0uBMhUzGKDkdUjRIWp1Jx1xTgN54vL5C74Pdr5g6Al4m6alKuIu1zsUgT6bdSsppnVztlhcGNYyVTZo4TP+hWqxGEDJdqnJV6bsqBDEvGlOIH25/c7XXgrQckaYhTIxWXgf8b/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lVApOc6k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lVApOc6k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8540C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771284293;
	bh=eUxqHrUz7qGSO8dYAYCPHnXDnU3/dPO+7FBsgPkEiLM=;
	h=To:Subject:From:Date:From;
	b=lVApOc6kIEKa1gRGb2XfQfTviEdqGwLh1KKPASn6e/f4LaFfa8iFixHsYbDsviVpg
	 6QmNr6MO3NGZQcA5/JycLTQTNXJBANGroz1POu6INg13k3e5V3WhKu+gi6i5W+ul5e
	 xvWiYydJyB1DpF/r3TimX/VAef412A62a2uisThu6yyfH3qf0pWTsjGp0BjIwJo5+G
	 QcZXChEFvI3qMvI8qg9xl5yfulMpBDKGq+LdX825H5sloLkyJWiL7I/c7z+JrDo93m
	 9+0STBb69hT34ODikGAZteQDPLC+0a+22cv/FJtRv1AnmDvGctW9Sf5MXREpDQzBJ7
	 IcmmoZJKzkuvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AAAE83840
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177128429358.27566.4339437423594015033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6013d6e72f13409fded337e89cd644b9a65492db973fc59d217148436f2451e
Date: Mon, 16 Feb 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771284293
