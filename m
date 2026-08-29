Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 508C8331EA6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787995234; cv=none; b=h0en7ZH35jUz/c35KXKc57VCbiXMS8fj86RYqVbLvhS5YuaE+JPMKIs1dWM8DnAKKLeGFSwOEPLIKtv8nqjJPDvw/OZWPMyhyI2o/rvtOsSR1c4LghcTTM02A54wPZGRTMNiY/rLUi1l1YUErCBBcAM7aDz5+xUlhsmSQQNRPjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787995234; c=relaxed/simple;
	bh=S0+SWGkXfGHs4JH3Gk59q77Dxfdy2KE52X91CdGfotc=;
	h=To:Subject:From:Message-Id:Date; b=OuYbHjxL3Gs3Q/hsn6f30hf4HVCo50N8+LamblPo27nLzGopW21Xzo6uSLum3plt14ZCwZcDRTarzZuuO40E3ZlT7ZCYTCnT4/ulfGuVIjgWyoiIOd5mmngKquvwuv1tQ9fwkBW8J33IMBQJJqzw6vHeVNi1X6r24Zr/lWxLnR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdIoVNsS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdIoVNsS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF026C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787995233;
	bh=S0+SWGkXfGHs4JH3Gk59q77Dxfdy2KE52X91CdGfotc=;
	h=To:Subject:From:Date:From;
	b=tdIoVNsS9iXOEhDBQPpqwiDvR1vnzuxk7eVMnoGRiYYurU4ejfW4grecDJ34NdGb3
	 TExcVUjh3IM/j5YvZ1aGBIT3c8ozWD1jwrLr51rfAMngufxG+L5i3tSotmGJd8zRMd
	 /WcFl6Q1BXBoiSuxpIYuv7YOyF2SGnqymveuK6aTZAfrspwCUyLwQHdfV5uvkFFYKH
	 R41Q9gSsylV514B0R9c5bym59SwXfZubwI8JEwcg7Y3TisN+4cwiHe7SjrLOHgKNDU
	 U9PHKsd/z052iOZQwt+9WOPAWj7wBiThy5seG31qQIS37wF9IrZDT1kDaYEcEVCdBz
	 KioD+NA33z1iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6A9C61DCB
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178799523368.5758.17776109045244058587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4222b45dc3914fdde8eb0768907c0b83ff80c8fd73f2e276f3af73825ddf5be8
Date: Sat, 29 Aug 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787995233
