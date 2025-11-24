Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 088BC2F9C39
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 10:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763981514; cv=none; b=RK9sZ5fyLI53R/H3o6XK1WSZErurFvf974+8Vd8f4L7w6+jTeKZLKtYvztVqnqXtu6AAbVrIA3FDDegQO5pnRVPt82pGqGsCSTRJ+ktzg4sfFzxFW3LIBemrRM0x5Dm8x5TnWQ5by5ZFAWPBt+YN+J1KLv+0PQPAXCszg2nZs3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763981514; c=relaxed/simple;
	bh=agNv5UlGn5uBPjEquFPpyphCaybc9K8WKzEgFx2BHm4=;
	h=To:Subject:From:Message-Id:Date; b=SusQ7scdXhBdGDW2k/oNYH3Ib/W4qy0rAWcoU4/9HWcN3Rz0AbjJIKkXIzR+O/JTnntkm2uF9ivNkBh3TjhP5GykEhvsdtk6YIoZ/kAETwUqIH4RCmGU5gj0aNU5lnn7PxczzB2lckveGQOg7Km3k0uOSLawsNjQ8IuGq6yLu2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RAZlvw23; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RAZlvw23"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9ECCC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 10:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763981513;
	bh=agNv5UlGn5uBPjEquFPpyphCaybc9K8WKzEgFx2BHm4=;
	h=To:Subject:From:Date:From;
	b=RAZlvw233WXX+phnjuvHGlECmx32vm1kw0HmKbluVMTruOTwzM9YpzvfWhSJ4FUBZ
	 +abCom+d1UzTWw5BVsuxggVONQRDQwg+0Bl6w3ljkH6JNecvqxljbAPttqw6PhoQn/
	 kGagJf3duis4zqxesPbhBxEfPGN/YZ7zKKK1Heeu4WiFJQmsFHfNqUMoBpnngZqGnX
	 pQKIbTHbX1WQBpYRrTK2sLjLO2JAcp8y7tSWJoi81b/Q5RhbdK20+9mMBDkn6fUMIw
	 0mDUYgzGeeYe0Ugwie+/wrjZToZH8/SfrF+SLBgmPtYyMDXKYqYWqNxcaObosviNFd
	 QD1cb9rqnl1sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96156CFD317
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 10:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176398151360.5540.750675431711443663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c4226a1fd9c1563c34e4938d825096dd7f67677c422ddfccee031d0ae35349c
Date: Mon, 24 Nov 2025 10:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763981513
