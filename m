Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7861EA65
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759198194; cv=none; b=QMURdESpeXxlgrXrucSjbtpUBc64akjlKTco2/kDf1TKci22+P7nkN1EceFa2jpu05LQWE3kW4IRutCF5aqeubjenJVIn1yWHEFVob0bF8XunjPiaSZJLSL0TUa9wV3P9WCzOa7BZqfz74TweuE+YgdJ/diNIA6p1dmRGi6tFQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759198194; c=relaxed/simple;
	bh=vGFsFzwZL+2TK5M0s5lhlqoO7I72bdxOZu6SX7eyNMs=;
	h=To:Subject:From:Message-Id:Date; b=Q/EbeMaNypJk8DLtnx8ST520fxaqubBfuuWMeeeQubpJKfKtkZpWKIuLOymx3gCzwhfCkAFac5yYku8X0o74QaRCPp1s+aNwKcegoWJWKdUyipUKwljW/cJRNE47X4QN4WUmCnptPB++kTHSbueeUprxRQWJrqA9hi71zLr6mq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sXY1riuO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sXY1riuO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7443C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759198193;
	bh=vGFsFzwZL+2TK5M0s5lhlqoO7I72bdxOZu6SX7eyNMs=;
	h=To:Subject:From:Date:From;
	b=sXY1riuOs1yWxomW71Eany5EAWZu2Sn2CJ1c+G7MUgdDuEdKn57fTIwW/4ZauJ1gx
	 F3CsuIVLRzTMteSh4Wmv9ClDg7/ut1rpbFGTCC71fLbdHmHxJagb/rrdii9C8ksODe
	 ZMoXCUPNF9k+FFVYmXEm2b4dZCiqoeNdvJQn20vJwN+7nsQMUCclVl6BzJ72MZFrgP
	 PYjnsbbCWdBve5JCO9AEh7BCfZ/xhY5kcbIbtFL9LNrxDpKPpCXaPYONa6EVRWMHt2
	 g9CLvt0BpKcL4HMDAdDkKiAOyi75OqISC1i9kOzJKszzeGpFfRXfE7RnGw4SO1YKhI
	 PZKnNhwga6Jpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921F4CAC5B9
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175919819359.3567.14510263830135845535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f95e73e88a5b3a1aa52c9308d1579830952c96072152b6ad0aae6e8ef74f6f4
Date: Tue, 30 Sep 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759198193
