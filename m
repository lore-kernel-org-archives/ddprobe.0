Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F03030F934
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 06:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780035154; cv=none; b=K3bLxfAZ1vOcsiACYpFf4mBDB1fq9Kdi3+wV+OmCbyQhtdZbc/nDTQ74o9ciYwNuztBG2aTqWID1pUE/nK55U660vEpY9gPua9U1LKf+mJim//cE0uUsOrFv088xHu5s08Nyuv9JeAQvtkDJxzUPO3wNsAzz/l3twddjbMtXQvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780035154; c=relaxed/simple;
	bh=kC9z+CcnbwEEY7kd7WhOO9DdE4UqmnzvovE3HQxvyF4=;
	h=To:Subject:From:Message-Id:Date; b=mp1w3DLAAjzeL+rjHzknQQM97kMldfQRz2hIQPQQ8GQ/gLy4d1/+1sTAr3cqIQyuXYLk0DHxpxmJSECDRRHhp54/+dIj0TBGTdnFdwncF+Q6aCoKyLDNqDHS7jxDq35yxrA56sFs7suDm1Y+9tFwM/s0F6NP0OILAO38npAkqpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mc8EzM91; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mc8EzM91"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1089C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 06:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780035153;
	bh=kC9z+CcnbwEEY7kd7WhOO9DdE4UqmnzvovE3HQxvyF4=;
	h=To:Subject:From:Date:From;
	b=Mc8EzM91L+cOVoHLOp1PYQ0gTG/dydxo5KYve/hWsS+nhRJwElpl84ZKLCO9DS2M2
	 tn8u8ufSx/MCBIWgmcnysN3AX6LxCQB8v9Hj3KdHlQbTpUWUdkJvm1LgSWHfPv9/Rn
	 n+BnVH6g75GR3DP7Tqn+BP0wmTRtP4BwKdFxnkc4d2fp+4OMYjlSmSnlMsEaObwCPt
	 DjW7benZdMIcgUvJY7avYZyf3TpLNRjg25RoYNfT8Em20FYDtwu37M9se2JmhteQnw
	 hnkOlCu3eKIA3g5abZsTbHVdEyCFqN8Dxnea96iruOshcWG/9K76h5bggCbZd+h/gi
	 nxMyLvuwIuFdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A940ACD6E45
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 06:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178003515368.23099.3524199653316078973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 637547c8aedd48f0b8c5a8dc0b5e92d1eb8286f56271caaf537bcc21c6a91560
Date: Fri, 29 May 2026 06:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780035153
