Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2459C27442
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 03:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777519654; cv=none; b=oLn9b+o8qd0VtOAp+QdvXluBvOctdNv9bkuPIDPnQZYkygHa/wa2RYeNv5vDSm8SNeeRSvsDQ+yXnfVLtX4j8aIeZqOtVLcmJGYvRADsER22Ny71kLyserxiXv9BbUad+2113+9HNos3PXnHekEhZD52LG4KDjuh/YCHdRhO5dA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777519654; c=relaxed/simple;
	bh=3T9QTl6kWTnOXsDvUD4bHvJ5PmzOYEHRPpfhbrNOREA=;
	h=To:Subject:From:Message-Id:Date; b=rMYJ0B4B7XKYPWawTxd7zAAHFnNhjIpfGbjS0SO5u4TRR5b/qNCqydFEP7xR7Z6AbnwFpiLgcubWXb3iwRNIhyms2j3/IsMQoVX1TaRRjemvphrv9++ary2NExfpKvkaCjG9jK1YP6H0riPmxDybYcKbI/FsSrbH//0+Zj/EyQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OxlWcLac; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OxlWcLac"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB1CC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 03:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777519653;
	bh=3T9QTl6kWTnOXsDvUD4bHvJ5PmzOYEHRPpfhbrNOREA=;
	h=To:Subject:From:Date:From;
	b=OxlWcLacLVCUH+Yn7Luy00ACMuwuMW7M0suCpfUcLvewU4Ql3HQOyq9DgVXEGak1k
	 IjLnCmfhP18FEteOMfmS2Q11CleZEVtMuNDCJIsYRBr0ZVYCrem0+Nh18eJmFTjHyw
	 j+KE39JHF57GHSZAFJeFHrWSZ4WE38ZJM7r515xnbJ/phZCdpctCOTPZt+czJLCoil
	 BsuIAZCyfaT77c+nTBqgb7H57E1+ZpS8LBvT1Z03Z7tD6xPa3FdLLtTE4bfzvs2CPt
	 k0zLbuVI4x0Mv2fWBMUamX1wnnOuA5baXpPfAUExvxy2Ucv7mOt0Gf3ZJ6OZuLBgPC
	 T3H8+Vyaw8oVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAC5FF8864
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 03:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177751965369.27774.12578337460925418929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 464abad8cc106c8073f6462be091e73691a1f3d73c20257aa1d9e5fe102d93f7
Date: Thu, 30 Apr 2026 03:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777519653
