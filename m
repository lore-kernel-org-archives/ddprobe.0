Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 801A820DD7F
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 13:14:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739366095; cv=none; b=kMCPv3zEunlJk3bi9V9puOdOi4hLhuLNm5p07Nc9o50HM4s0JUf88SveAoXzwF2yB0Q90kgjW7cIlM+9ninV6e++qZtWbWaIyS7v2UBZRLMxAnZeVCeOokAKyVa5ShgJEibXcDqKTb4ZJomauGZgPQcdLdUdK3O/wcenLB+IDsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739366095; c=relaxed/simple;
	bh=yvtVn3Gr60OguHEm8I+RuL3ZJtuoZQxDj/HFCuvNrLg=;
	h=To:Subject:From:Message-Id:Date; b=HVd4ygEKdatUl6KrJUteWC6HKZ6OdZKk6dqCE9eE8ZZY6cI2qn21dkgKqkklVKA09KWMfXzWXOOcLpxpxeKNkbIHQEYTKXRiaUUYI3QPi4nPC6SZOTF31FYj+IHOGuOS5CvRkK9qAl6G/aI9gsho0FNN4UypQDhZeeTcts0PwpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E7BXBziI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E7BXBziI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCD9DC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 13:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739366094;
	bh=yvtVn3Gr60OguHEm8I+RuL3ZJtuoZQxDj/HFCuvNrLg=;
	h=To:Subject:From:Date:From;
	b=E7BXBziIKUJo42fYxnzTk01b7x81DWIS+32EZGz+c/hXqZQL5HX5asBXI0Snqi9H5
	 j0C6yY/jGytfzn/bIgGigWHe6lvVOxkPHp49/FA1XCuM4DmVPJs3wpXZOHgmdio13Z
	 y+o90PuzWRQuEAh7BYQ86T1supJ//1lA9GboloNEuaPvzIFzVvnwKfIkUXpedu3ElS
	 O563AWY87abCN20+08qW6AoUFOqpvZBXpuIvgExvfBh3CK4s0I8gkxOsQBSvI0TNdK
	 l1DGReKK1NuXKSt/wSZAUMYXBfdZXDe81sU2GhsmIV029WynLLvPXfkxcmcDOr5Ss6
	 0VdGGCbeq4nZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70F18C021AA
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 13:14:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173936609440.29722.11375575307546004897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 598e42717af054c95281f01636ad8690294b02e117d559f71a10b8a20bd46107
Date: Wed, 12 Feb 2025 13:14:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739366094
