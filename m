Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70FDD394EBD
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 06:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781676994; cv=none; b=rGfVemp4ekmR/GjCfcvBf49RVw9VjKsaLKJqaGTtRUYoqdqaLwqRlcwmPAzMyErrHBwqWE4R87HcT5/Byw1GDRue5BVwB7Vr79SC93wdtlZPNXrgG5QUjM4B9XzZxTS0+e4fxPb9bNMT9rLI8bpt/xzkWtn+61JzMuSaFas9i5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781676994; c=relaxed/simple;
	bh=AXerng3sY2bHGMXpnblCLTxpnQMmftCvGWnTNk9NbrU=;
	h=To:Subject:From:Message-Id:Date; b=IvziiNJRpboQ80pcqwOwKsPN1CUxP8HwjBZUi1vfV6qz8v5TRdtKQGXCnwQKIL296IZGH2f8eChQcjY778qTocwMfZjCouUu5uQ5yK8zLN+Txo74m2MUOdWOIFRhSXUftJ1QlABWkrxapwPTLYkuTA0Er2SaZqpmZKhyO08rxao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bFoAUdL8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bFoAUdL8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2FBCC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 06:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781676993;
	bh=AXerng3sY2bHGMXpnblCLTxpnQMmftCvGWnTNk9NbrU=;
	h=To:Subject:From:Date:From;
	b=bFoAUdL8EtzG6skerjr9gOBx005RRVNuhQI/V/UJ58Ufa5uzox4mHw8Nrlg+FcLJU
	 VZkEohF+0CfOygy5CZJmUDQolb6OKHDMgZG/2o2PvcoVNFraqyWMtNOVRDyqxfpYdq
	 vzbcHG/vjIZmRuFwV52dh3keVDyRbnM1ygiWVETyqXaXTaBfqdAjGRQXvnrnnBekWH
	 PMkwV6kzF8bEnez7fgMWK++c6NC8HnVw4w71pwsDcUkCYnkMGcCkMLi0RldzESu1Np
	 Tutqo5hrn0qcGLpqPNpdKDeufvF38AnEKBLkcK66DBMwUss/RAMfLmGm7iu73ELxFN
	 7BWFFUhrqBL9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB1DECD98F0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 06:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178167699372.6258.18278738459642623756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7adb041d2faf10e501d3518fd9bddce18c9fd8d7d272b7dbabfeffae4c465ade
Date: Wed, 17 Jun 2026 06:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781676993
