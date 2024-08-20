Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F9024B2F
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724121954; cv=none; b=iyAr1qDIuXzl6opbH/043dUQNWEeqxATLDOQPBBMMQKLt/i+MwUsYpXUPCDD8UF89L3wt1l4Mm5+Pec0pQUgFnKDPR0c21wht209tTdXF/O3SpiwLkFmPNH4LYqtCDc3BS1Jb36YjR0ohP3WwaJ2hZ4AMcakLe38dV9MSlvy9j8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724121954; c=relaxed/simple;
	bh=GY3xB2iXq6o5gKGHo1wGV2VE2oluwUYRYPFRzeX//0o=;
	h=To:Subject:From:Message-Id:Date; b=JvTESYEQhkFUD+X8FI46iYg6yenw9ZgpfP1SkvwxNFwV35oS5NqCoa4jrkr+rEBYqf+oa5nZ8jnIDP+bHbum3XHSieV392ImkOK7553sZ4CcECO4LKm6BN3HP6uJeKuXSsdGCpQsC72LLEhckUNeElWVz5/wfxnWV1dKC/Ii5KY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UzBL9NLt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UzBL9NLt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB7CC32782
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724121953;
	bh=GY3xB2iXq6o5gKGHo1wGV2VE2oluwUYRYPFRzeX//0o=;
	h=To:Subject:From:Date:From;
	b=UzBL9NLtLbhb4DZHo48bUtS9GMdEiVKwJGx5Pk0pJBbQrkXYVLuGfOGmPCctPcVkE
	 CbsnHqQqopOU4zsrmsEL5DoHFhzbGret91x7a5nfmrvLGse3Lnwqof/x91YwYebxg3
	 gDP3hy26Q6O1g9U2g/1IeJhmRcSRmqOmbQIpksRdXXP+LU09LSQUd7jJVgBwIY+s45
	 BlZ+phAYh5SxQ32MAPbDhoPxp297UAxZt4LSLNwPIETOSUKfxfxP48QlgCowXSoN/e
	 Pj9Wwm0xI7kFotU2Toi+IeCaePotYgXKsSO5Zw4M9damQdX7cY+axxee2WTcWCuqKL
	 j3T9NqijU/FyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F54C3DA4A
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172412195359.6321.16009114983767884949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2915733339c82493cbd0c4e8d4d4fb5a3900b99a38137eb6fb41fa58698a1b8b
Date: Tue, 20 Aug 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724121953
