Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE751EFF80
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 15:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764172374; cv=none; b=tiucFAQsRj6yvzIHovDE9DmmSm6Abd6M9ifyqXPK0V4CGAMm0tBu+3nitaLAsnlDi9hSK5HB+wmzDlEkhoIxJ1gi/lHGs170Ay/OlB91DFu9t3zHbBE1mjFZU2560J38sf3v9AmOXo4V/bUHUfVcu2pnanul0FsMBxmWEuLROhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764172374; c=relaxed/simple;
	bh=f9kTc3jsPnQPQq3dgOQDBo2NLrbG9kTz6+7w9g9UvNI=;
	h=To:Subject:From:Message-Id:Date; b=TtQUMbkU3NGkXUYAIfVo5rNtmm3fAkf1KhuyzPxPpKmlIGNdZ3Pz9s6q75XPlC4SJOojRntCLNKqTdktvNxoi9z8iKiPhkdOBvUAFDCKYuUx0c6v7IK77QHCSrTGWQpNS2WILlIKIKI/k2M57ah0D38WmXYZ3dRAUxatgGAMT4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QtNQyfNG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QtNQyfNG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B40F4C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 15:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764172373;
	bh=f9kTc3jsPnQPQq3dgOQDBo2NLrbG9kTz6+7w9g9UvNI=;
	h=To:Subject:From:Date:From;
	b=QtNQyfNG6NHn4KjkalyibaGfKu0jAmsTdCZBcG/3xq6HigrZWcSY8Qx6bAborEYwc
	 cKSu0jIA9QBqqvtWTVkzUopiwq2NgZjuA8+rRkSigF7QkKzPSxeMbJaSoV38ayjopW
	 ZjN2+mydW16Olb23z+QO12Q5X9ss+BNBU38r1IxH4mOgcLsS0NG/9Hrh0WADDkIUZg
	 hUdwbpS10YFxIi/5j9p0sjw2Tkg2Di8n4zeik1T9DyqdA35pWEINE211dM93IJpqCZ
	 RCM3dEb9ivjGMWcMbWYVGKOEa+EFeLyc/QNmq7o3ya0BI2tnzUfEZtiCPSwcktEPP4
	 eiagUDR0sQAoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D7ABD11180
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 15:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176417237360.6189.805037865138317534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 361d16f2205352e2a3651dc446567b76d2f8f05e4c5827b85fc23fd51db48e32
Date: Wed, 26 Nov 2025 15:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764172373
