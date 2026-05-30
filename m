Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40FFC30674D
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 15:53:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780156414; cv=none; b=Mvcbk11tKnnMpPc6nQIiw5yMKTZmditXgRd8dPOMEu0zQiACW+9PY8PdaEqv/db/RxytxG9n6pTn3D0pNiBZYoCysixMYGxq+2KyWOGXna4UjXufCa6Pd0/pHu5uUyjTjXXRjKQHMqgCX+UwDlVrOAGFPKf62TcZhBYR3DqnDLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780156414; c=relaxed/simple;
	bh=rLeu32Ta/JX3jidqewdlSfM/1XBRW3GVtzOoN3X/Z2Q=;
	h=To:Subject:From:Message-Id:Date; b=d3Our+AyG4TcYYXezjRNFWvri9yiEN4bnQTI97GXmrgTYBA3MubWdVjZittkVhOZQKRQJptAqQOAzgg6JIinRwRov22QIMpTbzhW1JbFfdwPmzY5GiTzEuZGntMPRc2ludv9xVdvFHTn8S4qabqBtYjUfrQx3AZrWcyQxZ8Th7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BS0SnhaH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BS0SnhaH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D33C4C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 15:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780156413;
	bh=rLeu32Ta/JX3jidqewdlSfM/1XBRW3GVtzOoN3X/Z2Q=;
	h=To:Subject:From:Date:From;
	b=BS0SnhaHvWQz4ZaStnxgzptTulEFz5mnrq6THiKDjzFBLOS18UVMSisR+gX/HxsV0
	 y+nxrUgsslTQEfUgArVEc+ruNlG/K6gwWv75jShJkK0q2eFc9gvyyFjN08fj51Dm6R
	 I6Ws8kaEGvhaHhUSPjXHw847XCRXHWvSqIMRjEipJ2y+e8tZfjrihyijHe85FAcSLw
	 4F/AoyZ+SKNxVp2v7a33StOth+TuvB2qMPXa8LZmPGUepqTDhO1VDyYpTqwueqvTwm
	 WvTHh13A67AjA18vkGphU0uU4Uv5SKBBwqY3AKxNKUJ6TSWMil09TJW/SmgKDvO+9b
	 HKDiEywTQnFXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4F94CD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 15:53:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178015641372.8036.14833750490531432654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61921fb849bf309208e5f7d5b4b3a7c4208f76eda22da4523ca97a18cbf7488b
Date: Sat, 30 May 2026 15:53:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780156413
