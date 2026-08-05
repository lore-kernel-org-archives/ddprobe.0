Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE3B399340
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785905434; cv=none; b=IjbjL3Bx9C+UzLvwPG85gzrqlBi50vDQUojdMtJQksW2sGCnTCoRistD3pRNusx7RHDDJHrFbU9efgjY6UPo0CwISHgF0hJ13xLmYPcYYJ+rbxp8ABHam+iT/HmmbBUt6q8+TH9P50czA0hllyPEZoUqLW1CgGpuTFK4mFNjxd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785905434; c=relaxed/simple;
	bh=NNBu6Ni8r0rUmLU4/l1YY9Kw8iuje9s1U/kTWBfObUI=;
	h=To:Subject:From:Message-Id:Date; b=XtO5DYtfb+opUXSOnqIZe3XawapDododiYtfk/j0n+a868lHVeflc4eUYYcKFJwwAC6NQIitthZVyE7lpaU8GgXx1Lv49Dsi/cSqpwibGGVSbdIXWYyT0yQQD7Enqja0KIqjUbk/sDjv7ndq5012E9KKKuP8j2sqm7pZz42iWZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bUVp/Mc5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bUVp/Mc5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB2DC19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785905433;
	bh=NNBu6Ni8r0rUmLU4/l1YY9Kw8iuje9s1U/kTWBfObUI=;
	h=To:Subject:From:Date:From;
	b=bUVp/Mc5LV9E9MSTkVtSUvYksO3oDRZAgic1GiAgNRjCwsteCHOG94bsY70Ky58d3
	 cdW9hvaHLFVcwJxYKjzmVGTDGoQL3AKZ3sokjBswK57uFcSfUcxO75ZsrIhLjd7+O9
	 erA/7jltLDFCRvUnDo6mRCGAJnkG33yzPIlVJYHZqNypqO9Gc/9XSm5MZrzvZSLvHh
	 LuzOeSPpBCrj6xWcTKcgPvYnnG5QNEjnfhyzgUkFzLaF7edR0NC/161n762YKIttXj
	 a3BhYc4D4Jy4PKqarHW3BLWJ83U2atRiHeQXrOkZ9w70oiAy/6CJbIGJ8obIwvB3Dz
	 oBoTE6FG8eeFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD806C55182
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178590543368.4983.11933259838368486251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25979bf1278c2e2b4cd2c6d83bef65ba7c426b71cd283df3680640c9739a3903
Date: Wed, 05 Aug 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785905433
