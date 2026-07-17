Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17AAF3B3BF5
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 10:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784285915; cv=none; b=dbVuD2E9/CVn4gRD9JMeAA+OI+Zlr5PWUp61EUXabixypqFTFrP6rV+P2apkWiX85jshqXLB2bmojIt5PIXy+6eSGKhoMvfUUcC4E4NWMsTNECp5OVGeaGomzHb+gJD8hyy/8o1OKlQf/tq34OM4b5VyECPGvFt/7X8cJjd/iYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784285915; c=relaxed/simple;
	bh=PKvw+GvuE9D/pdTONFhFOwmQW3oROvcMpVTT40+HIlM=;
	h=To:Subject:From:Message-Id:Date; b=nZonuXVLeKo0sAJItG1hHAR1QTc+WT7fSD3DjFf5jha+p55gdEin49eTg+No/JIRSTGLerHvEjfWTxlfdp6+EqqkxoVrf+y3ONPHsIouqTNNP++/YGeyZ/MGZR6K8JWa1CwUbY2HCszpS2VumIB1mPCovjrjENYP3U1AyJe0EcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OnmUZooQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OnmUZooQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC9F4C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 10:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784285913;
	bh=PKvw+GvuE9D/pdTONFhFOwmQW3oROvcMpVTT40+HIlM=;
	h=To:Subject:From:Date:From;
	b=OnmUZooQ5jpPGiphZBsZdKF8zaOA+IoWGI7dokpwoT75HNjj6aF34+EjgV6yZjaTS
	 3IuutEMfzFlxXYWlqbpqqwFpoeeAYf4qhWmEEM5GZK4UvR1lVIgq3TYrLwbl4I5ECT
	 orb8GNwoBB+OC4yZmpk781eQdt/sMxmCavJ44R8xcWDJ4Dtfzg+OPEUBvEvmqgWcW6
	 4XfI11dsSv5F1Pcc1lbj30flyMkY6eTMqLH5WlMQq1w4p7x4fliLgEntChXxh8tjto
	 UY3ZTalYdU+gVGQDCGpp8+H0uVXGRz9+ogXRiUdB481S8TJv3PC+12VSOwMlZk2bME
	 vp6AgoEI17G9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB969C44507
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 10:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178428591369.29493.2471801850208190167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aa468d3668af1438a0632d3db451de3e532d58dc9459c1b18e7960bde2e5153
Date: Fri, 17 Jul 2026 10:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784285913
