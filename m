Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D25513ACC
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 01:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718848763; cv=none; b=i0THg0tI1WEjby/p+v8lz9NPd4NkuftmPaElDJ8qcvNrkWEq7/URhaaWtxHgtPmWZOKA+NdsgUFvS/jRAeJPpz7b00qt1BjVSf34i5tTBSAsnavrr05PlEJpSv3iS/KeSEmN69Q8IrPiky4RxQ0ro4stoHQlVZB0/sd4vCIHz+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718848763; c=relaxed/simple;
	bh=vvzDlt7P6E1jFFdQNd8BHpi0ecwVc6ZMoYz1vHnfzg8=;
	h=To:Subject:From:Message-Id:Date; b=eLIvdp3kiAgJhH3VvqTlfyoKk9AoEQMhcGXDjxdYO1gMrI0knhyKtO27Jq/HmecH+0v9o2BDLWEK+VClIC5RMkao0DIX79PAdMH15Sios+cmPBbkRwW1oNaLJth4HI9GUNWq/V1AZvflmAoLXfFp2IA4RG6MWGMwpz8B/cIGUa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hGvv8eTg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hGvv8eTg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66FEC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 01:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718848762;
	bh=vvzDlt7P6E1jFFdQNd8BHpi0ecwVc6ZMoYz1vHnfzg8=;
	h=To:Subject:From:Date:From;
	b=hGvv8eTgtg82BChxrxe+JNJjW67IEj+hbQ0zZ7N7W9ceB/fxdICGD+b7Nqy2yslLL
	 H0TFgIIrVUOt7T2vf/tLfN+D6UfVOGqs0yN5sglX1fpzA55QHW5ynKDRKc9BsyAmII
	 DQWX8FFOLH1CpjV2mzK+t12LFFhet0LeUeaF+drBD1avRv7MrA7IndZlLLNjGLLO6C
	 cbIwSIBzHsoOfso5kTWGgty3pZQ+2B76CWzXPV7DwLC0zm54uYX7v4Ol7YjOJF7vcF
	 DPBlZ6+rNHgM71TRF2xb0aI3WI2JLnSoLOTTBC7X9cJp058RZliQr0lRFmc7MLUwm/
	 mFlT5mHiI5ixg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2BE6C27C53
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 01:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171884876278.26214.2427603281808506657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f08269eaab3532f83f7f163d5c4bc7be33d98353c149419a60a1bf5c6aee0d1f
Date: Thu, 20 Jun 2024 01:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718848762
