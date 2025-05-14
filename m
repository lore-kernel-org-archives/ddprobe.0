Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA9C101DE
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747203594; cv=none; b=ivAJ785IYzFK5D5NWtnhorDGpGYVNnD+G8xdBVG+3CrpwZqQl5mT1TMtipCgGKL88zGWgrWBb7Vde1MDqwtWS7eYS5DFbbrT45S0hVixmlr31HSpSIR9inu+OMo3fDtBKcf6PRGHWBEwUSDXdIt9qhYJlhbBQHywcj1MO151ewA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747203594; c=relaxed/simple;
	bh=f1W05pPHl9ja5MhXKqhqyRYax3eDtFOO2EJ7tDwWdRA=;
	h=To:Subject:From:Message-Id:Date; b=dAWQhaINpX6SAwyPD4BfxAIbWzJtx0Yan0j0wCReQ0i6F7cIMosKnzVYsV/NkSDfsAAbaLbV+5+d2t7BlA2rzJjp5KnjwbK14uS/ZKBWujFKN33MBF9r3+OWRz2yMA2cGoW3zC03/maGE0s1Ez0hX6M4GV6hgI4EbyZDajCroSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CeKvA+If; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CeKvA+If"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDA8C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747203593;
	bh=f1W05pPHl9ja5MhXKqhqyRYax3eDtFOO2EJ7tDwWdRA=;
	h=To:Subject:From:Date:From;
	b=CeKvA+IfcTVKUt80cD205QZUCmiMfYmLJlqEijmpR+VDpS7sQpCavpu4e/6Ohc681
	 P9PeOvJI1dKPdfkRY78gahUrBTMycfRCXXfFYZ7FA1WECYvjy/P3MISKsWJKbGuGAM
	 iEn2OLs3zP+leWjGCdBCGSV6LAyKRfPZ3U6vvRYia2Cdkqd5oCMZTqytsansJeHkad
	 UdU14TyHa7QoszpyFfavY/CzSFmCEOkBwHIJGZCwThBsevR+HU2ckIlI4YuiFXI1/z
	 0gxjEAykLa2e3HlfTvP1rPD8ossON9KuQf6bsdOroxrh6ZDJtGwUDQMQQ5oF2458mZ
	 vPvB3elRb9Omw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8CAC3ABC5
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174720359357.7434.303781821956498344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 311849a815f906184639ec20be2880f980f2084fdae809ed19ad59e5554f86c4
Date: Wed, 14 May 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747203593
