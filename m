Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1969E2110E
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769915034; cv=none; b=ltvg6xEHMGIHc7j+OvwMaCLJ347eCl1mqmjKDkAY/8LGCx36pB9Uhanr/fTi7rj8A4iBOimhXa1pt7aUtWsvXyTCdOSFggB+InMP2cwghzdl1Nb1EsA4tvJqpAkogRPQ5hBQja6OpWocF4DEePxXYuTvAn0a6GyKvXybjMtfKEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769915034; c=relaxed/simple;
	bh=eGhkqh6kEz3Rq5DdEBvyG7Yw4rybu3C4bryaBQ74Azs=;
	h=To:Subject:From:Message-Id:Date; b=g5KAVZ9T4F6bGNw3fRXriRtENtWj38JzU1YbBSuGylOyBLXmQIKNTp5IBO7zngfzCDuGNgOQ0csrXmy0gdlB3Do+CXTkinkrS+XV1FwMNhZgq/X+79qFsyYnBqgcsqe+BEAI1B4/m/+1tUK8B73DMfgEn5g4ee7o9A2T8+MSdjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YqIHCOUi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YqIHCOUi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC611C16AAE
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769915033;
	bh=eGhkqh6kEz3Rq5DdEBvyG7Yw4rybu3C4bryaBQ74Azs=;
	h=To:Subject:From:Date:From;
	b=YqIHCOUi7v65Ue1gLe7WRcO6k+TqP1f+lFv9XH6lwpn4Emp04BEHCNUv5F80sKHmG
	 QMvxa83ywghRUxOPgesPXkML11wARyc0sxLd+MbJaK7eTVr5R6K+2raYB75ad7AlwA
	 NLjKNo+PxnTzoMGnfw3ernMRaZEE3Y/GJfbTAib8DsABcx+ojHr/VCBmDgr1pIGcYq
	 xUbDgyK8ejD376CuUxDS/sVnrKWm6eftUXKeHMYqGFnptAzcQPphcPnb7T63hCfArn
	 P/eI/1uReNxDcJtdpk4IHNeo1Ry7ent4HDNcf+w8VCOee2RGped9DNrcXQQgrHiNEk
	 O3I7jyFj/xUZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949D7E7C6FA
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176991503357.18566.4819125179184564536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a9962cb1b42e057dc4911c358a7636d674bc4216a2ca41c105def334aad9f3b
Date: Sun, 01 Feb 2026 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769915033
