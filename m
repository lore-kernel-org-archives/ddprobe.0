Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2531227145C
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757522394; cv=none; b=Ue9Q7NZG7rappNmdHAtfSnSWFJsrInJ/DHqqundNpYAfq4BpEBprDU1YDFdpjd1ya7NPN3Vk8zjekgT/FtT+l/tFWussdlLfdsM7d6caUUJEEJ8jjrkksazu3EJbcBvJJVqK7x3Bu1l55gR5IjVZinS+w9uD15MlAoGKbiTh1o4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757522394; c=relaxed/simple;
	bh=Oe7DP1xWbHnZh6fOn2a3Ry5vE3mXACYlLT/GhHJkNBk=;
	h=To:Subject:From:Message-Id:Date; b=G9krJthZRoYQUeCma7BwcGwb1e9yZCz6QA5xKdWZsqvso3afhSykmVNHJ6RGjUO7LgQCh7tEg54R++X4t3NLkPexF3aGINbOiavpuScRc8a4C38ZCY5QB5aAqSho7mo81n2MaKdl6L0ptd5AqtkTl8SLthqqy76YgXn96AB+vUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f3+SnNOf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f3+SnNOf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EA9C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757522393;
	bh=Oe7DP1xWbHnZh6fOn2a3Ry5vE3mXACYlLT/GhHJkNBk=;
	h=To:Subject:From:Date:From;
	b=f3+SnNOfHlgOQonkgQLjhLoxyY6qW2AdpViWtFhEmYTjtcRZM5lq7sB9Lkpbhm4Xw
	 vvKmoLhbckaiTgBQhw0fvNOfNWBFeh68vVq84/ha7KPLB7LVDoAY7ZuBP5btgdD93X
	 HY0zoh9ur39E6PVd+/ncudKXnNysQOGvKhSqZyPbJtoHbwq2juxXTtV5Rxn82ZYbuo
	 2DRlajcoGmiKoMwYyCwevZ54ATlCynbqFB2++H/IBG8HbUeJwPzvHTlQfqtnRbVc/6
	 o8YN2xncXRyQ0FhBqmNQmMoV+j3BwGyz3akw6t5JJjFSwFLeVuuCLTCY6iXBwMlmpP
	 NoQbakriVbePw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CE4CA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175752239358.24042.12635537660589765921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea5f86e89b75e6cdf4445c6485ee52eddcbfb5da9e01d969442698f5ccbf0aab
Date: Wed, 10 Sep 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757522393
