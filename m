Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEBD20FA81
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763003994; cv=none; b=hQkZFpJVWxbdKntIAW9+ufKyFM9QHuBOPGKN8KmDVJuhUV6CsY6rp5x1Xh+V0nkvoSkt4yRLqe5M3eA0Z+gSEeQyPYgwUdSVXJCvR5DcC3N1ROKmULj+Anrw2We5BxtKNdi/FJ9mKNcMfThP6tnJb8a2UN9KTIkFEJXsn+MTohE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763003994; c=relaxed/simple;
	bh=bU4TCA5oP4FaLnvDCrhaOVa/N5xf2KzZ2Nkioosl0As=;
	h=To:Subject:From:Message-Id:Date; b=eGhD0LMlRBmhnDcOmMSrhXP+G6lGfBYmGJvDrnGQp5kLL7y7/btSuaSAMN27f2r3oB/H80y6vTexwD0SiQGTkruHdfYYYKWph0R5FRCXrl3qIm7Cflcx+M/bv9WoUPYlMLDTC3m5VIZep4vfDuUILhcpTSC8LKsaT++gbFvO5V0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SI+Cijjj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SI+Cijjj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A285DC116D0
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763003993;
	bh=bU4TCA5oP4FaLnvDCrhaOVa/N5xf2KzZ2Nkioosl0As=;
	h=To:Subject:From:Date:From;
	b=SI+Cijjj3Cz18p07RyykMHLqaiUe7v3RYuOXflH/lNWaxnCs/QelCmXt154rASNHa
	 7qbQoy6WJ5PW/nWiDz5djm29UrH6J790ANfOEr5lnrk+7gMXbUricwTQY9QqadQkce
	 lBj2S24EqkNmkbZUADDemlhYJ+Sc1Vkr2DvNUtbWhnrGAPuZuXEOnZUMI8lIrYTnok
	 Oxj7BGUjeZeAlxRKC8rjMvof9zGdZp6lsEFbGQGHqyVCU2RrryLk2jQI3FepD35NGq
	 DHsxiCwocfhs+SlUvZolb88RWp+xgrwpBpGkJ/z+OD3laf8VZpBru6G2huL/C4SAD0
	 /HFP5g0l/NpVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938CCCCFA18
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176300399358.10656.7796333512327865920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49c88abcc242fc43a7ac319321c7e959c7c647e8cc9f0b534cf8fda307d30022
Date: Thu, 13 Nov 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763003993
