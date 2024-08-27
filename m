Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3639B9479
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724723154; cv=none; b=C8CR9VfiF7P02RMjI4sUyD/bZlNeS05iQISAxG9JS2BF90hfRIfg+evnxFn7+GSp5o5FwIhJGScfoW9Kb30dpuLdY2t6lDafI6s4O8Rotpx82l3IbkepkhBNzit3pGtMeTFhEmOd3mFNGIyGFedMflOdSj34R2MQglC5Tazjhqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724723154; c=relaxed/simple;
	bh=0WeW9OfmeVivYH0fi6LL2clakEX544QobN6jeimUdJ4=;
	h=To:Subject:From:Message-Id:Date; b=OWRueVWpyPOcPepTXR7wl8/m/OTLnLsu/75YcQqOuS+X9pKC3f9zwINCPZ1Nv7UikRUgLkvgVPmCUuDHhKFZdYRGa4knL+4gr2VqqYOD/FN4RNIDpxY+0ODbHsMkDRwDxiRUYFMFZYc3D/ncStFwLgo0m8tYmp41qTXXO1iM0g8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hdIg7Qq3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hdIg7Qq3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EE0C8B7CA
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724723153;
	bh=0WeW9OfmeVivYH0fi6LL2clakEX544QobN6jeimUdJ4=;
	h=To:Subject:From:Date:From;
	b=hdIg7Qq3rHkShz/vW9SUCxapclER6Q0ACoE3vd9NBwR6Pw7IQ/6aZLQ6vBZO1Ey7n
	 /U6t/Os7cji7izO6TbmdhQarhn9ohBd4Vi+3TIt4pBBkN6nAd62XuRT2au7PNH8v3i
	 yJ51Rfwvby+nfqJqCH5OUD4TwQaOUjhFia002z8AoqzpSn4oqcwX3FDDmpNttW/4Fd
	 z61Shk/lgsVz150GP4K0tRMCnOPwlH18ZfxC9ccQGKf1RscxPn5GtPHapLgetMYkLc
	 KPUmjFRM1eLDmTky/QB4JNNqZu46+cX9VLmobS6+9PVMq2jqtEY/yo18D7P5hqq84B
	 mbExVP4br0BTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92847C5321D
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172472315358.26567.2898196021019768180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9047613ea6f7d2a36cb0a3c0da0f6193ec4bf7fdb5881a4de9c2f126aed70cd
Date: Tue, 27 Aug 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724723153
