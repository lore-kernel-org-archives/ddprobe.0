Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1013491D5
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768976634; cv=none; b=ufmQda3DcL3gczL25r8GsIKnInNcHSPscKv8BVSUEPT55W9k0h+LRrwQfizZKLCO2YegiuKnytSdsObSLW6Zs5rxUi8JWGVsparWcCvEwm5/Cr1ki8ozLn7bP5Nqoo2LmqHfwv9PMgytmiu4qbPalR12MqePe9fmY8gq3cZUElM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768976634; c=relaxed/simple;
	bh=Y141CiaYCSgum2SKg7t3/RPsKImST7JXRYg9hZpFx5c=;
	h=To:Subject:From:Message-Id:Date; b=t2Pnow0RD3diszMPOVhI1NLcT4C7OtPfbnZ1BG2MKgE4X8x0jW4wRKK4B+el9hSbcMixTxtlWjFwTdQS7ZmnFGQCJQzCRamNRFFSKfiJhtiii3dn00fQjJfwWHDwB1hOWfaqCK00ftImHSEGo4lrdG+EZ2gNctl+MiNJR1Hoaag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pnrAKzhp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pnrAKzhp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9DBC16AAE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768976633;
	bh=Y141CiaYCSgum2SKg7t3/RPsKImST7JXRYg9hZpFx5c=;
	h=To:Subject:From:Date:From;
	b=pnrAKzhpyqCj2kyAPe81hEgILr7QUrRi5qSPiQ0pn3ugKumztL44Gs8rjYAVfZXLX
	 vrcJ6/a903uehHdFO4x/BLswStz19DP2q3t6hVC77vnnqKnYerZIfHDicTJWAuJqf5
	 k+VA3BzhTL1xyzdkyrB2JQM6ftxoHCPK9M++wzA/EhugKA5sIhRqwYh0otRs6V4nW5
	 RSEYnRChG74sCUkdSsmiukgWTUepFa74DILbvKd5ovxv9aHtDWMGNKywyfM938GOW8
	 roo9aiMTBZVL1cdT3dFxjA7wOf9rzor1j3iD21TIleujvU+tc4g0lflDUGPLkmSMRB
	 dQHG+Xj/+wXTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D2FD262B0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176897663359.12764.5100823932275901110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a299577e390882fa897e22727fa7fa5039f0f932920173121ca4665058df65d
Date: Wed, 21 Jan 2026 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768976633
