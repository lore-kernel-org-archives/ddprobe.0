Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67071399890
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790218234; cv=none; b=nTvLa3LHeaGF3GO1zzGU7EusECOFTfguyr1yVlelr0VE/hKELCBG0VgF9EovUU8nDRfKW7Oq/c0oJFfmhtvvOOUSJNyMG5+Zjrv7gPe+2vZOZtpGM2t3oT55am7JbThtlpdaalJ9WqaRurF6JaneELjLurvPuIX4HEx6EQhUehE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790218234; c=relaxed/simple;
	bh=H0xYwzjg6cUYlgRLtmT977qVr/tkXpNHzQ+HSm3wYSY=;
	h=To:Subject:From:Message-Id:Date; b=W9aIA7XFaPyG9/ttahV7fEI7FPvGd2Xs22F/80e77pfmqlOcfq1lkscWGRz4gVYONEf2oHp9+7Z2dFHR3Ys5TSzHHlKKGiI3ipoBwH/Tl3trNNjan5Q57IArJHKburFanT5EHmKG/ZQRa1fBG31dEhRRC9b4elnAp6rufw+yTFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PFHxniDG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PFHxniDG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D541CC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790218233;
	bh=H0xYwzjg6cUYlgRLtmT977qVr/tkXpNHzQ+HSm3wYSY=;
	h=To:Subject:From:Date:From;
	b=PFHxniDGaG/2lsw4htyGP8idgXuE/Uikr/A2x3AszvYStG+B3MZWJ2CbSGOzpI/MU
	 RaPLilbpNS1TPWsMVGr3dgT1Lstkvjawf9wojMOx2lAq0861QjdrAXv8SdEs5zA3Ln
	 Sx/sZZN7adIUW52vESmjmMUiQEKEb92MjXQpNWP8B/jL3n/Uo52SB36OTj4Eq3fBZC
	 0Y0hXn7hj6cnNMxUQNk4UOD0IFX9EDbskUpImk1D5u8gv0oyRZvx+86e7Gk6PhxYph
	 xGzi6OFPLKEiQo+6sO5KzPfGncNp0AVdUxLzjUYzKqdrBhY/hzYEylKs8B8J/LuiA0
	 aDQaj/VUafKAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2034C9830D
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179021823369.16067.13607887377220044550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88c55bf8a5f4ff6f2ef667208e3526bf8b5b5c7cf77694bf09552211b2f94224
Date: Thu, 24 Sep 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790218233
