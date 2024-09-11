Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3E4D15C13F
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726066553; cv=none; b=p8cCSRLOhp4GjvmScHy7pqh9xrJ0fosb8sPGv8xWmN+LgHKUPuDdANWvXWfOo4OXSqB7FiV10CE2Tvx3UXh7yDEGfmnUaECKepIjqpbHZIob4LOJudKtptlj6KAF2rkYO6JltX2R8X01Fq/P+FLKNQWS1bIUUOz5DX0mWjOkBhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726066553; c=relaxed/simple;
	bh=ljvdhP3mHErVs7rSSx8RhRLhNwMGbpBybyN4cokX4U0=;
	h=To:Subject:From:Message-Id:Date; b=iQIhSAd80sjXzCgVGJrIL3XViqE/E/FQjvC2ltm6oyzopEojahBEVhWZl2gkUVtTRjR7nDGhE/wyvpAq+FeOXMG4ROaI66UkMyWSTUQuBh6ygHNGPcBQdUh0JYOadKfpezLnygsTIvetJTcFVYetWhkZ2gczPZGYBc2FKDnWCdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MyAc8TBR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MyAc8TBR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2524C4CEC0
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726066553;
	bh=ljvdhP3mHErVs7rSSx8RhRLhNwMGbpBybyN4cokX4U0=;
	h=To:Subject:From:Date:From;
	b=MyAc8TBRt9kvP7xLSJ1UFG+AEzZJXnPMBzTq0XQA2kXiiR4Ys8oith2jOEFpURfhJ
	 lYZVc1Bif6+tUO+TMgzYH4GDJ+KHz333PZOpzglPF6Nmn8GFN2u1EmND76Y5ZY8jmv
	 5btygEjH8Yob8oO+0uQJguk5oZnN9fDLOJ729gJvimPtPCIiP+ZPRPrMU6yf1bVkkr
	 89aor9BvBG+zqqjUnCEO4pUql1bljSVrFJjWR5Kn8ws8EEY3hyjSPSjM22LkFI0g/Q
	 0X3M4HnfYTHX0K44Dc8/J3O+NaWz1UKsia9WWOHLI44DSEUjyqmPSmydoXlYITzqXB
	 SgUvuxgjSmv+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930C6EE49BC
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172606655359.8002.5976030858043606081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceb6acf895e2ecb0a7a61805894c3fc33131bc33340a30e76260b5878909f37f
Date: Wed, 11 Sep 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726066553
