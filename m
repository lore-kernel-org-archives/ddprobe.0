Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577FD16D4F3
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 23:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720742243; cv=none; b=kvjoFnPQMVZdP5VHL60OyeuCSNcec+I6tFlQ9E+ikuP0VsdebPt/pKxPzG//0/oUFCokA/CSBREIwySNZtyFoG0EY7Wnn0FcoFpnKizjo6Q/qHhHwBsijJhydpL2SlyiOxSaoTEw6AEHDxQqQfpGKTV68hMBephHM6dHlY9xrjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720742243; c=relaxed/simple;
	bh=ED2jcssUys5GdwUyUq6s9Yrs6hrJ8ntrKhW+96sItaA=;
	h=To:Subject:From:Message-Id:Date; b=O2iiLu1QkMcNg3lwZHRNM3FeXDKcn390ZfbH9v7CPccytZH+cLkE8zI4Tq0ZR8+3pDmK0csk8HRiqDIr1cEIYgJ8HDBKTJl8vNcY3/Rej4cok79ItrJuwX/ObNVZ5ZLnn5eUUTCnqWGhTF2++Ig5xkFpvAQroAw9UN5fLduYMMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uRRXVdeq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uRRXVdeq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF244C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 23:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720742242;
	bh=ED2jcssUys5GdwUyUq6s9Yrs6hrJ8ntrKhW+96sItaA=;
	h=To:Subject:From:Date:From;
	b=uRRXVdeqIrslKtz/RAd4WrJ4Aa5fyeTKuIETRMfXRipcxL8k2kOSVpOrfL8PK0Fpk
	 oUAoDgVKscm1gx5KmnPYvvsL0bK4C8LtPDH2w3rNEjajna02hufZAwiVUuPqdn67Ol
	 O9b6ZwVzNXogIH5I8bPELbKXpBV2ygaodIAHOQPCt4Kp7B9eIDReIfyH/zssgsE3E/
	 BNCp1O2yyNFQDCeKmN10iCJnScdWPiHuHzdWOdJeoYo5O5s9slvKPXXexvMMA8LEcS
	 hqYHp/QF2nJztG+0oCF2HJhVyQvVJMpwJws9zQh0RiF9Q3IKuvXwMPI9ONi9CCWkdw
	 5LQEhWqtlNupA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC1CEC3DA45
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 23:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172074224279.4393.5098215241462720644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbd56f56fc9c48f4b884438abf85e55e8c6db5ff92d640193e82c89e0abaf48c
Date: Thu, 11 Jul 2024 23:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720742242
