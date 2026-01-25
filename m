Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C2F11CBA
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769335434; cv=none; b=WGfPf1OiKkQTCq/Lim8DSHM29/+xjTTk62J0UM9elF+G5+uIl0MMZDV3R+RYfUNQ1OoDCx7REV/AdE8J4QdWPmCtdYP/Xw8wlImdZ3U4FyV6PQyjAKXMaQIrb0vOjCAAS4Jm6btob/Dur68w59C2ghu/Dq4XVyMxrRxszDNcdLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769335434; c=relaxed/simple;
	bh=rXoxWQyJ+kQUgidtTBTYcMniGrBhTGcaGfcGKoSX2ts=;
	h=To:Subject:From:Message-Id:Date; b=NZwOESD4szAx7Eiek0k6v42j89woPb6EnctleGkxiM01uQHe1/XTjDSPia0qhEt7eNVb902b2tYjyypf8z5JgCiyWUsXMAJNvnykQPA66JHKUAmJ37rbJo1w4nyf5FD8Lnu0gGZhFDPAlkrO2xux0aMtcGo9aLBKDyiEnVmL74M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5YwKx17; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5YwKx17"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61F8C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769335433;
	bh=rXoxWQyJ+kQUgidtTBTYcMniGrBhTGcaGfcGKoSX2ts=;
	h=To:Subject:From:Date:From;
	b=C5YwKx17dV50cpy37GFNE/lRRMB2Sfasnz2NV3k5ZP4Mr9khz6JvDj6FTDfrEgv/T
	 I95L+I34BIynuKUzEP0SU48eYxD1aWjZN33mqrJEk07PiYaMlJxwidBtVlj0k5o2MX
	 TjXkSq9bvpxtrZoCsTl6vhCjj5hwvJDKpsMlNmL5JUdONv3iYDXylaaSb+Daz0JY8H
	 +deVlKa5V5EnjPrICX7zAQLmSdI/bzYV1Ph5FQVe420JzLA3oj0JJI4WOVXtvVnnzH
	 tx2SwPw3/FYg14FYw6BV8f4DY+mUXXSDA+YV+DxnOmM4rvMg1Ryub1Ykm5E1pzGEIl
	 8qAKuNoN1xrNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95209E63C9A
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176933543357.14997.13800781807552274348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c2246abee3728dd9f0d6e6380c9f37e13e03e728ae9a196b061b93f41392969
Date: Sun, 25 Jan 2026 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769335433
