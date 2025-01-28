Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 773BE4C8E
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 20:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738096554; cv=none; b=Spr4E/2rLFff8N+9BsA1pZ/WLh4ROTrFmnQygUJV+qvj4D3LZOTnz42aUSeWqGTaFFBoY8V2ZxMgjTCoxDqD/zjun/Y2YAAjtG1WyKq7h2LRQl3Y/ANI803DoQ7rZYoviWAsQq898EhhMmD6CYMo37ZmqbpwsOkceviyeQsvAmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738096554; c=relaxed/simple;
	bh=cufuutBm9QUobCwcCb9fP9/RNCUnAd+j1PBI8Xc4rQw=;
	h=To:Subject:From:Message-Id:Date; b=sthB7tH038nSQ3I8lr8opGkBfZEXpD/wjCqX4Sj0KLkF9f09B16iOQA3gmrxoTbS7lE9adNWC8Jv/cWNWcD6q/2iKVd9exDimb2ZbcV2fMzcpg6n1Vjeg1BAQVK0Gih9DxLuip9GxMbqgXkOdIPgRpH4pRhTaSV30LNHy6hYUJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XDYucc73; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XDYucc73"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8CA9C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738096553;
	bh=cufuutBm9QUobCwcCb9fP9/RNCUnAd+j1PBI8Xc4rQw=;
	h=To:Subject:From:Date:From;
	b=XDYucc73awkc72J4cwAFFZVV4GwxAKXo/8vHGZGVX4qaylxO+ZPmq/Qu4tCqYPBGw
	 H+j5PTca/i8OrhLF81BZNgg/j81Prn0aROv7kv0DE2fAsD/M65F4r/SteUvZMtrboh
	 e+a9X46FrugV6Y1S+9ESwrMSSEpbONFxbZJURMnSWwg2N9Z4qfGoU54L88+lq8TvxB
	 Tis7lwwYC5NSuCU4yXqtPJgTAOMC7CvH5KQPCtVlMdYzj/9YIwk5mVCdrAqhvKtTjx
	 9Hqpv2g/9iA2Fw3BDoyIRTxkWUxC98UkzXeC8V6muUI6jNpFPxGTlUqx+pvT6ju6TT
	 mL5PtV8xO281w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA58BC0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173809655374.16489.9218692739155616304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 003e2070236e87798ed401acfb1faf3717c19a3a2e031da73e9ea99614cd9733
Date: Tue, 28 Jan 2025 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738096553
