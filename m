Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6280818C08
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 14:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720017323; cv=none; b=KlX2JnCEpNVCiQUFpx/RRUYp7mtgYrgQHimu1JSXk/YhZk5yZdCbGgpY21YelclA5IqkNDgB8IBRcIykxyL+tLkh7BMNU88CuBY4ukSBZl7pDHK9XssNxIbd/JAeehmBWIA3ZHpO2MBkwPcV3ahfW+J6SNYPWVh+/g20YNAzg8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720017323; c=relaxed/simple;
	bh=bXeoqUYuP1ZYZ6AZdAzBvv2v9KiUl3h5FlQd5yb2uh4=;
	h=To:Subject:From:Message-Id:Date; b=iq/luuqLpUEJKj/LGuJ1uML7iL4JlBaEM1cSLcL0C1DadtAnnNhc0o1IbrDxZE9L63HcL/1/eXcUosm3QuEssNtx2s0Q63DyNzaYN+7pxLZRc7eMHgptP3suCOsKAsqCCrfZvs5EiGSDALpKdOdnTXlujRL31aswX0+HWRWRsKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fGCqsfZK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fGCqsfZK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA666C2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 14:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720017323;
	bh=bXeoqUYuP1ZYZ6AZdAzBvv2v9KiUl3h5FlQd5yb2uh4=;
	h=To:Subject:From:Date:From;
	b=fGCqsfZKpkhQ1fsOkg7+nod6CvD4j6ZWuvHxK2jTef0fADjPRHqxF6BzyBllTuO0X
	 byXH7qwIch90cpaxooFtZf95SrUp1593eBPxR/7Hiinyo4P4MR+NVlVjX62+gST7jI
	 jp+03gH9lQfZefyGAScjJJupeIcULtfOCSO8b04if0mFsAkfLoIa4R1OdtEgRx2DXk
	 grtvAFgtpxefjo6PquhwkAjj8tbJHkUv/JqLR98uW1wYhebP0yO2wJ3D/Q/LCIQRr+
	 qN6mLgMWgDtpF3XXJUSrOOcW2LYT/XVxsgpmlcuQ8iSxfASjsqa9Y/oKeOKHNZZyPy
	 RWzUo81Q0YmAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA9DFC30653
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 14:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172001732281.4389.17588624934270322002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45a9fc01b3721921080848ab9046e9310740a140e39030e889e901034bbc5a31
Date: Wed, 03 Jul 2024 14:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720017322
