Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336CF1957FC
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760210394; cv=none; b=AR/WOV0sDtCeJ3B/4xa9dH7MnM8CIJmdIzkZZ7aWDXdyWOTpFaCfS5Ao/RUFBerNYN89AAZDIVfA1S8mMrU2hLS8DUsigsEjeD+mGCD7GSLEpy1ZWuD8Il65Q+Wu/LYoBpOINxXEyMr6mUKeSA33Rw1T8znGxpWgOY8nY6HZN/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760210394; c=relaxed/simple;
	bh=XT9KpkGXKygW6A3aQNLPoWjFiH7h2kxly9fnQLrsQdA=;
	h=To:Subject:From:Message-Id:Date; b=kZdI1A5GfoEWIIu0VUaw/Xaex74hvGMt2OpZsnZu61cqm5eojm6axejz0O9t0yPrXWbfsRMVsWB7ct1RpilhHuY0PGrFJDV3REI4Av2a7dgbFxRVjVBJp5YP3o+xroCcF3Y+inhuqgTAvuNnvKrUfACO4e2S+Y1xQNkyhPsc93k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Un91HHtr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Un91HHtr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3488C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760210393;
	bh=XT9KpkGXKygW6A3aQNLPoWjFiH7h2kxly9fnQLrsQdA=;
	h=To:Subject:From:Date:From;
	b=Un91HHtr9Nwn11ikoyZXx2ViTSuBBFiizJEQGCPSGjOTo6iXIMdvgdBEtfubEqBLO
	 57SpdZ2OuZLhxQv4EhXEHC8MDeb0suyBYpcd5CHGoEKdXqAQfNGQ6yW5XEG0LGVxV0
	 75kEdXFOCrs/U2H/gQH0KGrMEpWBIWldXS2izset8e2seXOHrXV5iadltbpF/JiHQT
	 EzKb91iLzJN0zgFFJkADxNLUWNgWxtIu/zs6se72uHYyq9iaRrsunrivpk09KDh1ve
	 /HboF/HowvZ9KlEhmIVfsvYid0pBY3b/1oqU2G18myvKSEVc7gH7RzTq1UHBgi1pBV
	 s03MktTkFaQMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F619CCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176021039357.22251.2678023573187127987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b10929974c5ef04d1527cea31e96a692c97ca5ccb0af2dd95a4e2cd2854cf8f
Date: Sat, 11 Oct 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760210393
