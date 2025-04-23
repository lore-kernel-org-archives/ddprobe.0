Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395DD13B797
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745428794; cv=none; b=qki/go5cJJqXcrghIppAqDrlCwEK7MMLMX/gdbGV0HWbAneNGBHeCMcPvcw58RicZI8ik/WZWG+tMI482GKqjJjvA5bgPkWLFtkxyWORp1qOPhHqVLqx6tTmamnF8lhajsd8bgc5cm6LWnolkF+y9i5ZzwMGAQVTwwt/k0DRxeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745428794; c=relaxed/simple;
	bh=/LZfM02fAWxGl1CkhWFn2sofV5YXpYCMN8DiZtMBgtc=;
	h=To:Subject:From:Message-Id:Date; b=EvsGpKv2ygZQHI/w0d86nbH+AG7F3SrlBih/kgEopiQdKIIlECnlEXSXzVGcEFrMQHqexTzIIu4cwrbAZLSeyhgrkwfnlc3oTsqCafCKnVhVHxhy37ZGGX4NbGn+3p+KgrWdtZzhnzyimmls/nRI6UScGrgNHmzOoBmx2x/5Jmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tb1USIlu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tb1USIlu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1431C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745428793;
	bh=/LZfM02fAWxGl1CkhWFn2sofV5YXpYCMN8DiZtMBgtc=;
	h=To:Subject:From:Date:From;
	b=Tb1USIlu9eCyx5sb71VEuedqRU+0d1YpyhMX+ZgksvhcdGziycPTDyhxQSv9E1ymP
	 JWIG2DcO4J18ogqK1oq8KyQCPStvFp+1gnUjARs3kc7XB5t7QXQhidvmzXyNkEHaI1
	 td69n2DRwWO19U3JM45PxGHa1avvE7rMx6Gh0MYRwLkP5kKKSF6dpp5JXc/mqcshOE
	 k/YPMbPR38HEub6SgRCI4W6bV5m8DwCh57ZR0RAOkrhTrDbRUI5TCvtBIKu0t+f5Jo
	 x3Ln05bsDs6o3o5OWkAzWzlNhU/mG5YGYBzWQcxse226RLq+vHSA5l1tPmSdoVlOXN
	 ZUxF+5C3Nt5pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC1FC369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174542879358.5719.16502586265097451399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beba4232faf7b70f6880478dd5a93104dee924bc8b7add803f9b7e02d1e7a511
Date: Wed, 23 Apr 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745428793
