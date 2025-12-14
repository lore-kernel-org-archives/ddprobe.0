Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26557293C44
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 15:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765726974; cv=none; b=WebdvW7QXr7SsPSve90K6F7UZkMwsamYV1VvWo36Qgal79hcgXIeAhOpH9HEw4Pgw0EJk5BmIJdA58ZKfFBLegnczMwR0iWpQr6Unm+Wjn1CQCD1Kc7k0y8yiRxB0icKnh2+rTI5Uo2XmNennp3yeRiehvr5qIBvkYFiSyTIdHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765726974; c=relaxed/simple;
	bh=OoSExDGq8z4DsuPb4nvU8vvCupsLSjAEl6vuc8YruWY=;
	h=To:Subject:From:Message-Id:Date; b=d29mBsDE3I+kW/pe+g5xZgSOQDK3oVcCdqMPrreSOvtpp+TwvyHsEzFcl8qvIH4bLfzEu5ohuXiNkhqHGiJ3FLKQ7Yy83jV8+nHKPzoYtuPlc7b6DxVuFZngIF5L/BBzVA/DKCwr02SWg+n6nuWVPF7TBCCV6j7vRQouzin84Ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Plb6icZr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Plb6icZr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A948CC19421
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 15:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765726973;
	bh=OoSExDGq8z4DsuPb4nvU8vvCupsLSjAEl6vuc8YruWY=;
	h=To:Subject:From:Date:From;
	b=Plb6icZriHdrulGeURvkGR0TTM+/xgVUGNDkA7imeGuAN5+80XJ7rG/Nf/CvkHCid
	 53kDM7kzzZV5Df6RINWA0elhAr5IDXKiUISy7Spf6WCd4afkWbhLxuC3lnwEdhxfps
	 ReiOHa4ngdZO8SzyGhMaWTjXt8OluhTk9eTIXQsxMIY3a1XqKtMz+qbubyPNaQJaV9
	 swyPbpy2ZR6ii8ihjyqVfrn/SrbhLIXAffDZ7qo6cTH/PGqT1ZGVGbpngWOx0CJVdE
	 Ec12jWNMV58Fzge7HMZZnf7dM7qjTd1YPFGTOFGjDd1pDThrZhZSopfHA9se/SxKoU
	 ekU8cSBvqSugw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96279D59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 15:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176572697359.15483.12506421559425869771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fc1ea400f397b7689aae64c0548b295b7fe49592885f459c9781ee2b6cbe6db
Date: Sun, 14 Dec 2025 15:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765726973
