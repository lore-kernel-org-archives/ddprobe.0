Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 936274BEE48
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789164634; cv=none; b=LLXJ4TvEbt2qS1SIVcEHilzk3EPAvIkclQ8LpRwYiCeA+7GPAhVsa9JSBjUAVCAtngJ+DMzzysoXUwH//nCVNA019tOz1OjgCiMlRFJxpaIfagYQANmYBPt+ykPfRanBVH0zQ0pZljY38vveEPTkqgrmSGzEJDCXhUJf9T7Wbtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789164634; c=relaxed/simple;
	bh=aqVJn7tK2j/l6Jr3OydoKIUMCotT9mVEvbabpP8ZKEk=;
	h=To:Subject:From:Message-Id:Date; b=uke8mJgDKxhLl1NNBpZzQQJXlNVbn+Lk0GIIqw8vzYuLx6fokgxZFPtHzcD5dqNnFGNxNAJTC+vxBHZS4FD7caJud/gXa2Gi0TV241q4emSjh48RWj1xSuD/FiybHx+AfEzj+y65Q8WvH0TxA+D+Z6G5X6zw5A/LbsSXdG5IkVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QKGGaU/A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QKGGaU/A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5922C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789164633;
	bh=aqVJn7tK2j/l6Jr3OydoKIUMCotT9mVEvbabpP8ZKEk=;
	h=To:Subject:From:Date:From;
	b=QKGGaU/AmszcpZ6F20jhaqp4Y9ZJ3wjYo42Y066bhX3zYezdHpFR9zCtzYqIBROWo
	 ZF9sxcY0v0b1uIICUsqOR2q6V14CRxdlGZu/ckgJk5zX61VKo/+eCRX/qtRJ1WI0/C
	 LCB6FpvgDO0pvaojrBgHAYdz30flKofRodZ0znJpudya8/dV3cQldauiAI0z4dyED7
	 s8jI9MVyM5hAnHMz/eUvQi2aum2us9AZ5SeR86CPxsftj4h+kOSL33z/NJF+v/ZfPw
	 pNhwLnEp9IUnjybDFl3fQ/w7LKTs+aBTrOuVZApjYQchw+IaO2ngnx0tMNjCbD9nYj
	 aoD8O3CjIJQLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B21C4C88E4D
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178916463371.26087.553639170674363901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07801605acee069e473f9c5b42ac4c3741fed867a4a6e9268f81493c18bd2a95
Date: Fri, 11 Sep 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789164633
