Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42126299924
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766225034; cv=none; b=J7mJ0YKRFkf+erHJaamJEetZjDVox3h+A/LFlsmsGAL8QGGzDlDerJOL2wOc9sIan8xVyPsHYbCRtMtak5//XGA1Bl1NwUMsjnHJVxTZSK+lXLAXD1TckTYcb9V0s1BgJY6kq0A2LR5jmluQPvmWs6T57rNK54/U3LMUWTNh3fA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766225034; c=relaxed/simple;
	bh=jIhKK/fkFTdgR3BaIT+w+JE6es+nXYyXSFKpcxPSrig=;
	h=To:Subject:From:Message-Id:Date; b=Tp26fawHsNba9x/h8cIVU9x+7T2F/B88yGi/L0WoJ5S/A61JaaEqztI8/X4YEr1283teBggSleszV+snI32uom1SQ8lfFrstC/mOS+pSISXzoVhwta/I57eENsKYJ7MZYqQ2WGJcHVxs0j9MlAKAYYc6dgUU4+wm6uFtUp8noOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=trwiEhfO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="trwiEhfO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6CEC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766225033;
	bh=jIhKK/fkFTdgR3BaIT+w+JE6es+nXYyXSFKpcxPSrig=;
	h=To:Subject:From:Date:From;
	b=trwiEhfOj3vo44D8lQx9ol+lhCq48aqqNhDHAghMOqr0G0L9qO5+S9aK+X8dYUc07
	 cyM9prz9e8gb5HE5Z68nz6bgbPmIP1ie5mPa+8s14DyB3Ed4skinYrt2GOOh/kddf+
	 AO1uXn1bSM+jkfpJBorxkx3nrXUIJwyJe6R6KoNGIv4pyNFo9Gj0D3qNep/AGzSdEI
	 cXDTFOLWSWpe2fW/I9BNdG/TP3vN46zVBdjDcJa2UuEzkW2hr8jrRPmR6oFdvMqX6K
	 0G9++d5z5F1Qo94TxaA4EWZzFKA+Y2e9X75FT0YU3f2qNmoiDq9je3RI1EYpjLArrR
	 pTE7sXO3GTKbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9ACE6689E
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176622503359.11620.15453167920527270992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 392e9b95c995237c48ac048ac6d5723025ba856e86ecb8f00b31a150931df027
Date: Sat, 20 Dec 2025 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766225033
