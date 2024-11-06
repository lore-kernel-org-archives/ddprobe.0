Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13DE91DED55
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730936754; cv=none; b=EQQbdMWijWgAfK5HxqTwSSo8N8ILjDF2lSUet1pOghdlsc2Dae+wqwwty8YQDWY9hfAG9Ot6AUlbXCD/VX1riRx3aBIZoFClbcxFBzcvut6RrUKIFyfL2djtTsBE1+VDkl61SZbcC4f7DUgXVGJXdevtzdf/HTK26iMgq09pvEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730936754; c=relaxed/simple;
	bh=v/83aicT0j6p1vk8jVw0zYrlQXAkKA2S0s/oDexyz+o=;
	h=To:Subject:From:Message-Id:Date; b=lzvdNp1c4K1TUClEGTA5oqiR91MUKj4eU3UfJp8DlZd2yL5nMpyttPOAZRRAZ/ZFrhruv2yM+K+/Zl630W2sNJu07C7vfkoAXekP/U9R6XdjjXG2OcBiSVzJpfZTP4cMYck8TVEwnp0+Lsv249sntSgcN/6sxx5DLiHqqzWYEi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bloeR8H6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bloeR8H6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CEDC4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730936753;
	bh=v/83aicT0j6p1vk8jVw0zYrlQXAkKA2S0s/oDexyz+o=;
	h=To:Subject:From:Date:From;
	b=bloeR8H6qrhf6OZLHjJscg+7fNY9QOHaBENtA42EepI5VVG/iVny2YFNvfsewi4BE
	 p0mpkIok+Ty/arEqTSfTI2CgFfPihSSTJiFKCFR96WRGGoLUVp0cjorNzWArs+33ra
	 xrFfyOgGhi75yhJp6W+EYKyJyYxtRfMW7aZy8FyJ2T70gVNbDmRioPPIgRFYwrgttV
	 w8hf0cWydacxWbxMrgaBtxa9+vSbmzj1zE3nvDjld2Tvv+SeN6zXrHTvt+SroAsYK7
	 HYZnQDeaUbJsLRfa03wwMZuvy9NxJ/Qvmq15s3kJ3Um2CnZAHzq54xpat1YLDKWjJS
	 0uoTza2N3Y6wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95741D59F7C
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173093675359.2639.11031039858074595012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e681c391fbef1e175d204003a798d9535db065caa614aea5eb6c1fef9824f0c
Date: Wed, 06 Nov 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730936753
