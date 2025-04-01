Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 438B11F152F
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743505794; cv=none; b=Xspg77fKyWKqk2M7eQ6gha0rnfJVEU8hqrKcjGkvPAgEaXGBGgajrEnRMUNsTVvvc8MtQlZYdxPaNxRej0KErxslalEANIAE2MfDgb7LarMyK2K6MIj2M/SwULPUbdpFcAEiqajY0N2zh/9inI7ONS1lPOA9UNi5Q6qYIxpiMiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743505794; c=relaxed/simple;
	bh=XDebmGe4F6fr/AKuDicbnbAin+mocRIylAT/hHGKKJI=;
	h=To:Subject:From:Message-Id:Date; b=HNFdpgoksWJ02Esnq1N7uc+q6v+8I6wx1mTpSRrzdAA0ottCrE+HRNbldPoNYrpn5xOCozxBM3cSMlyae1nxtfeSZZQVg0RWeo9EunFTRI07iK6Isfv12UNL2+RNTW1laum7sMh3URCWh3YlPzSHqAB84xfVhPOPLnPvjBvEDJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lCFtcQwk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lCFtcQwk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3902C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743505793;
	bh=XDebmGe4F6fr/AKuDicbnbAin+mocRIylAT/hHGKKJI=;
	h=To:Subject:From:Date:From;
	b=lCFtcQwkMbjKiH31H7930LvB0yz1CZGvHylnTeJSKg2FWbJJUClq+eKuNUpYDaAV/
	 W/H0Kbp9UFO1UsOW5TxOSdlScHTj+qxRZwi9TW9RkNJUnWCkP7RfM775Z62k+s7nYR
	 QuNoB1+F/4TNhJfBqtT9mtkb8dm7l+D3SUwaDp1nIaMVu8hId98JLfOJK8Dm+2J5CJ
	 ZfHMULD/UcIVIuRQ7Gumj4mkNu8gW/MytsG4a65Kmd0/xZfZs+H/l9GQR8abCz8y8o
	 p/YYGEeZeQIK3BXVJUl9BMro4C+W5M4xOo+FYoRMDlZ7+BsXo84S4Kluet3HESMdk1
	 TgLZkspWWGoWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B43C36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174350579360.30102.16741451162685755947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3da1d849229d0a823d68fbf4e13a0ae49a5b603442551bd83fe6705e7caee8ba
Date: Tue, 01 Apr 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743505793
