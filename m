Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B492DF158
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758811194; cv=none; b=nS9CO6NjkVH+H4OeANYg3Ndof4B9CRTfy9JtX44q/4HWe6cZ1VjAAMr2aaVJBRfgejnYXqvctRJJZfwWN/uvGj+GuuW1TC/ffLTvn8jt70lEzwIZCgKcYEth+y8WAUhBmXVT4H2ByvoRIEKHmRYCEXu8CNM45fVJug9g4KqKXUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758811194; c=relaxed/simple;
	bh=B0sy5G65VMOheOWzWL8TRuSoyeq2c60eISvxFV38ueI=;
	h=To:Subject:From:Message-Id:Date; b=JpVsK1X1uyapT2QqHqgwHWlnHF0kgFBrsDSCC8OInFNsD06gmjP/tAPsOxOxHjhZwyZ/6N5nA5Tu7kuiSpGqx5NgKE0qcQoQlgm/bwto3jswo2Xugz/yc9DPBdLrGvtvCNUqTlPzr+9WdznDe0xDC57ZXcOhSIWeGgCti+N3IxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J/P1Rgcq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J/P1Rgcq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88FDC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758811193;
	bh=B0sy5G65VMOheOWzWL8TRuSoyeq2c60eISvxFV38ueI=;
	h=To:Subject:From:Date:From;
	b=J/P1RgcqhqQx4pIdHavccd+j39ft/LQFWwEGy9GmrE/fPZUhgqSYlzZYS2pWjg/9j
	 xujG26sjTvbAWdoCbmctgCC3iwv8kAC0D6rJIKGaPZMY9mZn3DlEVTiuK3eNVbRKV5
	 RpHKtPJBRl/gzoQculkNf1Ww+4JL3GfENkX6n9Vp1ylD6oboH22mWBlZkU3Pa83cVp
	 H7ikpHiLhn9PUIFAIg7ZjqZXczjqe9l4GOOu+cg4oHJf24hz66+dOlqaAV92/mo8p2
	 yQj/6f8pQmgQweKAUXac1WL57EG9k4+pDlx2aCkQyB/Rb2bsac5ihyGHCybslO5/+b
	 apkOilckn6G4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94562CAC5B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175881119359.24407.9702345593555326690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 785eec3af094c54387a90368642e2d2bb0ceea439f2950e5c49a196e86bc590c
Date: Thu, 25 Sep 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758811193
