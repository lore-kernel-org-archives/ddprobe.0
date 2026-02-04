Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0E927F005
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 04:33:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770179636; cv=none; b=gGJ4iy/I7o6V3jy2IY3L3Vvx2HbBpQdGRJnGqwTKb4B2BnXTMjX3nB5UkthfjblwQwH+QO7VsFsDPvRKeWiv/7Laz0WTCfR9Vt6QphpmtBYE+Ppz4c1y6F4E+ON+6AXpOjdPU0cI7M1GJ/n2ya1/VRIPpQ6SyYgwih9dPcRvQr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770179636; c=relaxed/simple;
	bh=ThQt8+OovE/vHRPIKmrveyygtOPSzh/Zerkt3tJmYuw=;
	h=To:Subject:From:Message-Id:Date; b=ORmSs1qGHDUxHkKJy8TXvvjJuA11qVEGt2TJPU1PRK4LX/JNJ6fdztOWYguaSkyRsNAbFaKH0k3HPsHa3+1zlAL1Ywtn434Nn/I+g86ULyhS9qdxiFSYcahHO41zAz9dORsGG2sAxW4Qy/YfnkSIgcp8MplW8Im6j1xUQCVDeI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TPQHTaD0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TPQHTaD0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD24FC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770179633;
	bh=ThQt8+OovE/vHRPIKmrveyygtOPSzh/Zerkt3tJmYuw=;
	h=To:Subject:From:Date:From;
	b=TPQHTaD0fqzzcemgzP/NOfL28lzwA4zQ2SFscCR5Q5oJQzu8A/gYRDIMb/voayRbw
	 kZt1mqAP+JyMrP2RJsueh9OpWX9Q46nWNG80uL/70GWYo9LBgMOzQTNx2NKhRQl3Fc
	 Q4VJITH4BxKduJk1TrJdv0MAzuZK8E6UrqxmnWSt7s8nmPYIXQ5S4Z6Dj6pXQdFpd5
	 U38RAnbsJVgKUyaw9ilSj94EeBuRfW8YeA2mEysxCZgelV/XjLi2jzPEI+fTuaf7fq
	 zZOTPbJppwTaivYVwvPVmPuvbYiIw9MbeGPCoVtCr5Cjctwpn6I6TjtL3WSci9Cs2G
	 Ly7I38dNtu8og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA0BE8B399
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177017963364.4276.9686342674555017488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8616ca381816a37fe33a51560c09e81d67fdf5917d72d9ae991a6ed56cbca80f
Date: Wed, 04 Feb 2026 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770179633
