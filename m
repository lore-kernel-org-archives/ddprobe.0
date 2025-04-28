Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD0518836
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745845193; cv=none; b=F0MsXmxDijMsTIj04c/Q15uD9zLm9cDEBID5aTZ9T202OIsglQPDdR1esjboq9aoaQvgclE6eWwiq8c204auSXX3bK9U+rugKvOF/2CTXTffDNXzz/B7OBlPbcN0U4kCpMmODEdZhVWKiGWlkH9wfk/V4+FfEkwM6tRQ18DBD8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745845193; c=relaxed/simple;
	bh=diEItthv/1kjGIc4zcx+ua8PH9DmBtLpD+LagzYcL2I=;
	h=To:Subject:From:Message-Id:Date; b=QVrCt8vXzjPUKpzCBRLF8UuE1KXj2pEXKXG8u0sylBYsQbOLAIlx5y2HgCbNGC+ulDgMR9ZMaIfy81PSjsHu060kjLcsDhlHoGHCdJ5K8NPSzrBUW3Xaf3PeatnaL7U0NCZSQguwBthliaPoNrmfrBSAfeO4Dhm/uA2WgIbu2AQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U9HI8keK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U9HI8keK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2ACDC4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745845193;
	bh=diEItthv/1kjGIc4zcx+ua8PH9DmBtLpD+LagzYcL2I=;
	h=To:Subject:From:Date:From;
	b=U9HI8keKG/LFSjxDyB1yadaWTuWFQDw39u+Qowzg6WdTMnNVxKFbMI1JDFR5buu+F
	 +K3seS9tqQ0JbMNACMrujoB38RHmIgWSzoYPXymjwF2i5X15QJKXyijhyrIU8eJ6L5
	 j/gI/NYl7ZcBxeu2jXG+vCxGoK80NEZcm1oEsvik++K9rwDrMI71S14LBffoFYuNa8
	 DR1zMOifqPSQkT2S7Xu/E9hkZ4n0vO/n7tu2Fi8ExgZ2t4lWRO3BADg7WJkDTpG7Ey
	 Uz7JlaUqNRuLfAaDV6ndJALpZPbu47SAl8+Brok3Wu0azYMjGNuCQVicywwBv+Nt1O
	 4fKsRKsar7RPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F013C3ABA4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174584519357.28886.1216154494170452311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6aad291d4b428adf3263d5aa8cd8ebcd62ae7a4e3aa46a582a2fccc5dddf910
Date: Mon, 28 Apr 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745845193
