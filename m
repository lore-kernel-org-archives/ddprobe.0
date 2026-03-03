Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD37156C6A
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772579694; cv=none; b=W/ewX29m+x1BB321o3onoETs9lX6TlVdkWmiuSCDQjALvvJV6RIakMS1mors6WOc+U5cX91WI503S9oYW4s04ctTaAoSbZN9FZwq/A1ZLyqYObpdHh6eIrTjCC3xDj8iFqNJsvyQWmvSA4cojWbM7GmA90xzG+nyh0ntkqsAhPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772579694; c=relaxed/simple;
	bh=sWsJrXHjoZLlZFhVKr0Gt1MS5go4ONR6ZOuhgsKQrNI=;
	h=To:Subject:From:Message-Id:Date; b=fE8r6xcd1K9WZGZIvd6TTb6OiJsTVWZ0O8Yi1lTuNEKgn93EYkolpu8uwc1BQm8ltVdBaiLENHR8szqckSBSDXPaURK4m+b1khc8pcq/jYCOHT7+vBGhUkelHVsH9NjjT8fHh33mjn+5+gBn/lQr5+ImW73Ta3pXGTxrfWmY1X0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QhFE8896; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QhFE8896"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2680C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772579693;
	bh=sWsJrXHjoZLlZFhVKr0Gt1MS5go4ONR6ZOuhgsKQrNI=;
	h=To:Subject:From:Date:From;
	b=QhFE8896aUTbF2hNYjaGTMFeSUo7ypvNWJXQVtivIpwF2G1EnBiuA5ugFxC4Jz9ek
	 944aEYCXIxPVqSTjUsU5x+csjV+gePgwmqpEd6GbUSpfx3xhPFmCgbb3/IzEAtoXTB
	 lmAXq236LEkseSc2pOw0DuhdqEF6ZGcJrgHK13/0FgFOPb0Q+F42CNqXt9Nk9yC0Wc
	 HuktjN7Nk421vBcNTXHRuCXlgDpGo9R7kBPHO2Q+XLljeInwayGEawBxKAZurwjp75
	 rdd3mTCxdo5gZl6BFIZfMh5pBj+OW61PeWY5o9LVEx4R93TkD0lsOuZ+e1JGDS22T0
	 LAGY894LNfNoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98AEEDEBFA
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177257969361.30832.17730225108249824463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36eb92a825b4a77177a16493419d6d49aa0a7c234c091c034b63aab74026ebbf
Date: Tue, 03 Mar 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772579693
