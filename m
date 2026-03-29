Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1134F261B8A
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774804494; cv=none; b=qq0E06BcFm4ep+FclARmLPb22fC4rZvWA+vsDoJfjvyRt94kcHUrqW81ZkMFVfqfwaWpWrg83dl8qID/c3AbKVVTVMoZU49zvgDYEy8sTd80ml00vZRvwTCX2yEkivj2V9LSKeKta5vmvWJKrkxYy7ZdwvKUYtmcMj/U/UN/08o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774804494; c=relaxed/simple;
	bh=Zj0bvD2Jam2wGUZ903cmBceRD2PT7eQ3PlifMW2wbNE=;
	h=To:Subject:From:Message-Id:Date; b=ORSjWh/tOWLzjVx59LQtnCwrtZSgEXljvSpJ0+qxncnDEavq79lX8Db3mF/JO6bl/aLwpzRZSQ2apSLaJpao77UKnocwGwWTLSq/oIUggPcgRwRDaKOd9wlmck6287cPbE6lrE1/QOG344wZ94cUq8BWe0MolAY6oAtkODNU+T8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZAXmkAq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZAXmkAq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A400AC116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774804493;
	bh=Zj0bvD2Jam2wGUZ903cmBceRD2PT7eQ3PlifMW2wbNE=;
	h=To:Subject:From:Date:From;
	b=XZAXmkAqzmPTNaywIYUuOTl3YPNf98piNN+qWGoHDJExrMIwZgL6d6L1N2uxuWobJ
	 2fqpMkUnAs8Btl+Ly4IYCyQe+pxgpZZTH06P3iaxeKKjiOmwUcw2mMZkzkfl8F5CCc
	 GMYQJK0Znjc1by3OGpmrf5c2KcWQn2pyDwFVa6HiBX9M9K0SWyUcjHIFOSHFr8xgAu
	 tZbdC9Am1Td071KP7Gz0x1cA/hsTtrDaO6eEU2iAvI4mFD3yBuO6sWFqoVYWYwmZ4E
	 Qs7p9kgo+h2dw5tFPwXrJAd4KmC/oZVvB1M85N588+VyZO98MWdH25001R1aMY1Hfu
	 R5itjre7WIwcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F8FF3D614
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177480449358.4224.5399233501136906565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e62f2fd3193c64050397cfe7cec00b6c128205d9fc98319c99f0939fba86e3e3
Date: Sun, 29 Mar 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774804493
