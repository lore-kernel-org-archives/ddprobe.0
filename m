Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE147186A
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748582394; cv=none; b=bZEG/DAZjEdHf3nUcnKoUw1fQY92jpZ4ZBjrJzg+4K6nmHwTO4tj5UT0nFOGTPHwBKUsFqfzvwjJdd3Lk4ykASCBk9KPp/njP/wCNzzDiGo4gUvqqHKx+6wSwGxLvTFeXR63kVuh2bhOBd/y55hRMfXq7xy79h2t9B0kOEPRF38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748582394; c=relaxed/simple;
	bh=/bVmbHuiFtVdQ7ijrHeDP9z3vifuG9E6G1m2IexUyMc=;
	h=To:Subject:From:Message-Id:Date; b=EYUAvDm8fxcPqIOaASqJY24olhyetnfnjBxLiyg+twMuiLo5vP2D30F8jnBt6Nf849M/omODnOKsToBAqzofrdY3ba51rsNf4aB6WNp4Y/j5rVf4niAHVZInmLhWghZkJHuhu6mRXoH7in1sG5zV1tJBuGfFvxVNk1K/5NpC/oI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PQUXB7/5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PQUXB7/5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20B4C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748582393;
	bh=/bVmbHuiFtVdQ7ijrHeDP9z3vifuG9E6G1m2IexUyMc=;
	h=To:Subject:From:Date:From;
	b=PQUXB7/5aONlWhvg29SC9N9hzVCHVjGXppChZZocFb17uJyfyIazF9Jyq7nLJ6BJE
	 D+D8C3kqUyF/dDTA8uZYbflOUbo39lM7wkdQGiI7HAH3PcwYoHSLwfA4DQYhRIaYrc
	 jlAXeXs6B/LgmCtkSElZWuYWSCWYqNmLkbRpetMmksbQ0/t3py5CV3qURAGCGrrgEU
	 +reCWdmsuHVyUG/5Gql8NHsGd8k6J4KyT1pA5ZIFa49PJrMwlhmzGoo9CjiojHvDV4
	 aKLyN7ztQ/1J8P7Us3lyP/CuvOc/AprvaoTVK4BwLPJXu+bLJJwkiJQXxJQqJz2/N7
	 be31qQQVSlUaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C1EC3ABB2
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174858239358.31991.9288544362504147360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f183c29119d40f36bba7636b297661c259510a063cb4853b79c3fde0342bc27d
Date: Fri, 30 May 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748582393
