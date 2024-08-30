Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2363C7F6
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724979954; cv=none; b=PRJneViQmTYdePl3DqUUHa1cA4PXT5y1I9xedPnNzw2ruvmfcP9zz001M9IIVjIOB3JOW9MvvsCURkkruLNmgHVmoVmjEpjp9BNxCWDWa1KsNcYSWpTGOBhAtV6dA8AqNl906P2VXZS+JrEMfFUNfLeQAKhdUIRWzIi340jm7Fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724979954; c=relaxed/simple;
	bh=x0xyu1uu+LMFDid7NGSi1+DA+7lpfNl4i+28IkTBiP8=;
	h=To:Subject:From:Message-Id:Date; b=VoUOoRz3axILbuF2eXt1GJj9g+uHmDAfASxX+6syeNJQtuJYrFBBfEuPAVELS56eF17EdBk7SwiLMOID4ScTfdsnljripxACv9qH18Nv5PIOV64/AyyUwMsN9xmAxQold99UZSRPAp2xKUsYyBmL2sUjyYUG2ScuQJha155XVvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CuPCoKvB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CuPCoKvB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98A2C4CEC1
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724979953;
	bh=x0xyu1uu+LMFDid7NGSi1+DA+7lpfNl4i+28IkTBiP8=;
	h=To:Subject:From:Date:From;
	b=CuPCoKvBGR4mHTQW0CyNNaDZlet/l88zPgOeS7Kk52mDSv3Krtn1Fq3YFlvpxm0qV
	 hMO5aBeTz4GsDWugw0hGoRTXGW3m+LB848gOCsusMgqyELkQWB/CBEsuRd2mmEw9Ws
	 YMgW3B/araX6MdwM5Q2hYnhRMWYz53eVYciRJi9zOdVEmDKTinLN9F2OxzY2tYAbyC
	 OKKthgT29JM1y03ZXbIN5vOJv3kZnwfAHJa+uIoXpi70iQ6m1taQMbMuW07dTHBB8Q
	 CQfgzo3EznkfKc9E6+yMmqga1tPOyovqRRStdP+0bMY5RQDLdBJCiPawXKZIXvOaCr
	 8C6Lsqr7kxs1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B43CA0ECC
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172497995360.23666.18364143788657478754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f47c3f9efe7981f191ecb2556dd4e4bd00d6e4191308f954a2272c2dad38e6f3
Date: Fri, 30 Aug 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724979953
