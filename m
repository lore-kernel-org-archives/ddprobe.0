Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4E4301004
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763020194; cv=none; b=rxY32knwI1BTAAB1+6AU9YUwC797fafIIcDJQhZ+QJivGFo+zhCAOVOI3qBNL0S1GRuNClu9VLYkX2i/x0PmxB0JXcVy70ay0Y3pFb7+4rKTJCxStHIU3EwNbCbvgV1aGm480rmc4OH/o0UzdSnsMhhqzY1LiCovKZdwmqTrXZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763020194; c=relaxed/simple;
	bh=Du0rZ6RZpIMhVxG5+lPo//G5IJObmS+KfKHofeqd1EM=;
	h=To:Subject:From:Message-Id:Date; b=UG/fYTpFFf4wfQ/Hj1aUb74iekFeZuzYq13huPTEv5BfAwLzDq/onCf+1Yvs8r+aTRxxlNNzHN+sgHcxoXbLzl+7DsaE/5dDThiEjINteJSwMZMWezNS8BXpAHVAJBtdCB7vNbzGfu41zIIfGMmbV3Sxxwnf696Zv3nyyEulkGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fVVn/mZ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fVVn/mZ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD31C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763020193;
	bh=Du0rZ6RZpIMhVxG5+lPo//G5IJObmS+KfKHofeqd1EM=;
	h=To:Subject:From:Date:From;
	b=fVVn/mZ12SVrf8VVBXnbsGY4Di/1TFjxnymWnvkehxdtayOpRo4ih7q0J3IafSgr+
	 e4NgLcjc7sriHt8Je435au6OdhcwA5VosIQEiH9w3PnPAWXGTaKOLtXUnGyPSvosBP
	 KQRpB1g1OEPyWwsGC6o9cEr5k2swiWGiTmg1e2wqBMxIWoP4Y75+8gMXil3sRHN69L
	 8jiITM21o2/PJQ9QSZUsW5Y/q69by9Nxohehe9ViNdH/jC5kcBGX0BgjJapJaHXaLI
	 xNddvX0yMG6JiSrPFTgUzxFG4OkhX9ZZWiR6TSgmnZdFCoET1smejRegcYGBT574Q/
	 jasOHHlA5LU7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B44CCFA18
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176302019358.7447.11724508717047824113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c60b187208cd4e21b8f3fc1e303d98ca4598b5ab3415e4946f0fcf11100e4843
Date: Thu, 13 Nov 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763020193
