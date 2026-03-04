Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC353542E1
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772662494; cv=none; b=Ihrc7unQRfabzcW5FFEBNSpgS/Cy1r7ESFIAG43WVymi73IdEGckIIGZL/3HN1PMxtDEg8Pw0JgeHd1nFDpnVH88VFBzJabCZ1YQXH64j4jHiwXusKiTirzV3EqMqr1Vke1JMavOCqEiZCuIh4Fag/n0474qP4NtRGZkZKhDyHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772662494; c=relaxed/simple;
	bh=jQc+GycU8H0nRxYOJd4IiOkZReDoSmr2vz66vEK1B8o=;
	h=To:Subject:From:Message-Id:Date; b=BMD2coMtokahW4RucqlVf2dGeTox6xQ/MXAYC+YbUCC2BCMO3QdU2VOt5hcpaw4XY6Qoq9ksFJ4HhBvor83ueG9yquNUNC3oX7wIgwF6wJSWH7SwVapJ+D1w+1wspoJzs1GhyJ43LVhVC32yn8qnIBNJpqQGdeQzsJH9KYy9VR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kTZVJTuV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kTZVJTuV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3203C19425
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772662493;
	bh=jQc+GycU8H0nRxYOJd4IiOkZReDoSmr2vz66vEK1B8o=;
	h=To:Subject:From:Date:From;
	b=kTZVJTuVowOwT7ClchdqGssCt9aqE64lHMNi9YtOBcu17wPeHGLslXUpvcBBc7PQq
	 2ev+EJsnk0XT6iR8iBvH8yu4PO463HWqAoxfHpfAUx0LxbKtdd+QmxhpA3BHU1WWHL
	 zZFGjcBOZxmQlqC2f8T6JUP1tDeT9GmO5GagAzwu1fCGcv6Of4OC+VNVqvSyAwVWQY
	 gF1tqasqd3YzBL5BYNWa6x02/j7qTU+HSleijNDm+Hw2p9L85GrXs5CgEmOWB9LLXS
	 Gz6SBBawIZee9V0R0rBmqMUnwsFdMnfnGRmM912t3DZUvkNm13PRM5lQlv19aPFA69
	 x76hMEF3v8aGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D416EFCE4C
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177266249363.27318.4523284765612773208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 418e23a40e28d45a1eec3de065cd5574514b80766980d5310b98bf242644623b
Date: Wed, 04 Mar 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772662493
