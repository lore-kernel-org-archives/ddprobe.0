Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7933B1C8611
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757743195; cv=none; b=IkbI5o2FOd4FwbKWo/mkTzgPVhm7cqUT86VQ6p/JDkfvbmV0YlP8/MlJwTwyN3JCdxJH8H9wHUloEjuXs4RbxG5eN0dmk4BZgAaB9umPDKAN/jQ2KZgvjwwsNP6jIJ/qyS/oYREzOdHnV2WwEd+j+2ndrJQfJT41mdMbIqOYPn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757743195; c=relaxed/simple;
	bh=7TXny07FJPMAyHRB0q4BVpRWKBzV+ILey4pseQw2oXQ=;
	h=To:Subject:From:Message-Id:Date; b=mfoEG/UCIVflwU2Elc6ASxAnaSk7Jzu1nEFDDhEHxZ6jlmbivCMZYk03l77TK283FzBD8FUPpsgQqckCeTH9gwAQ3bMoE0RInjFmgCSw5Jtvht/ZTkIUj+cDUHQXLGkeGMt1DJjNcykUDREHdcRLndgpLDiKX7qjyYMAfnsq5w8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DF42WnEB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DF42WnEB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A012FC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757743193;
	bh=7TXny07FJPMAyHRB0q4BVpRWKBzV+ILey4pseQw2oXQ=;
	h=To:Subject:From:Date:From;
	b=DF42WnEBBBNLI5506hi0Qh163+AjCh8NEiXYOBxDUMy2cuj7ahj8coOYA4zKduDrh
	 kc+VuyCw+wJiECUaoVORzn9DpTLP2kDkdqSeYuloT7n09J0snnOYmwvm+mmOq3TOFL
	 /bFet9LEf33BIlc81icT8h9cDjiE1rC52hWe7ubdZRv1Mb6Se7s1lF902O41DWhqjK
	 sH0HLmLJnEwuzwwZzuiYrg+5IgSOR/+5Cdyt6g0bh0IgcxD/jV0S+5RjTb++x6Sgou
	 p/ZtIhOwelxDKsluGnpVGWpq3uzCKxoh6QrxCd8/EbM039Qe0beG4QmXy9+ZecwnDK
	 t+W+6ZkRU9XEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E941CAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175774319357.30441.13393312085267745925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e01caca2df9bb905257d85b352b78b4e56f03339ba76760099892ef7a756f1c3
Date: Sat, 13 Sep 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757743193
