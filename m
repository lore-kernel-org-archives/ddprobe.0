Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A9C3AC39
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 03:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766979235; cv=none; b=Egg3VjopPKe4n0trSAsrn9BMA6BWizxnkEK7e1mRDeVaz9oWCLRLu8Rx5ewVoCqzgPkGVfaTl5PX1fYmFxVRDLVvp3a/pkGm5wFk2ChYr+QslW54n0OVLlRYBuif5uT0CmzYf3C0TSpY3UtRRRlHOcFOM/LvTO23Py2vhvZYLXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766979235; c=relaxed/simple;
	bh=YW/nOUqHqFlbkGZfYoL1ydO+QXLBuutm6lb98dn+f1I=;
	h=To:Subject:From:Message-Id:Date; b=jmWplJBQurcs8z+3MpUWncDEAUuRhcSx5GBn5hGqJhKiRH+gy1g1MtlOZP5XtreNUIXtEx4YIyNJ8HVwXOOZ2w8+3JRnNRR+hKz/O6scmibHWWCRymF87MrDVe10gDLGLlK5Nc55Ga63QrM9JopEBhB6fW4NZDfnDxO7pmxWrsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ETWY4C6S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ETWY4C6S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2BFFC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766979234;
	bh=YW/nOUqHqFlbkGZfYoL1ydO+QXLBuutm6lb98dn+f1I=;
	h=To:Subject:From:Date:From;
	b=ETWY4C6S/RVD0FV0KYgeTx0JWCuBBdGvd5UAbi6g55Yui0tEvtzhC2VNQZ9aSR5Ah
	 5n0DSk4VocXcEtJPw9Cgvs5Ud0ajgpJLge0+nkRC7ouENQoZVYSGZ2eYquMFTOdvDW
	 PhRO80hEPwHhYmIbE/sdbW6rv1fzJBWEIoT8BZV6nSIR/GxbYS1d1sBxT2cqhkg0WQ
	 JGDAtgrJHnvL3BmTQfLTviYEeoXcIl6IvJcTTATDiz1l7rl681AV0YS6tPriOcNtcm
	 42OrjxQuJAWQ2H2DyiBePvPqUHpOupmo7IAnSCUJiqHGNFEa5snQmPOf8w7EF7PYCt
	 X/cr9wmZ8IFOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE9D2D3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176697923372.10564.2672736758456906813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24f2299bb6e2f259f9307233dc0dd43d23f7936eb2a9a459b5271d2680b1cbde
Date: Mon, 29 Dec 2025 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766979233
