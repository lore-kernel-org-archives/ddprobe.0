Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F86D194A76
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766715834; cv=none; b=GpVpmf1zHWG2HSg1xivx4m1KPoZngDGrCTV6nG5UCjit1UeXluHYichBTbOs/QyTflHkwlsJWLQq4vG+j0iomz3gXyDG9oG6/ojYeOAedd3/vg8htooyYgZbbW1PS51/U3unLHp1yDSMUDgpz4C8NiR17YBUmGKPMSjDfNQdq30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766715834; c=relaxed/simple;
	bh=YiFZOh+XGbhXjNSwlMXO1pRTgRwetWHsrjku1IPipWY=;
	h=To:Subject:From:Message-Id:Date; b=rANrfd/M90osjuWbfLh8eWSngSJyQZueBEqdTi6O/+d6BICimlMTrwBv08yBjf+h3Ug6FzPkpbWAFYQqhMAE4fJQncmH1A/4+3MHLIETNHB8Ma3K3WzTGOsZHLKwcy3jvUDA3YKue3cIY5giWzRE6mFDXYhJaH1aeLgybuJx9TI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3Is+3FH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3Is+3FH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73B8C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766715833;
	bh=YiFZOh+XGbhXjNSwlMXO1pRTgRwetWHsrjku1IPipWY=;
	h=To:Subject:From:Date:From;
	b=D3Is+3FHACCSuPmTFUIJL7TMpFxAQ52JIJr0IPOD6jT1aKx6uH/gguweqxc1Yl5py
	 BcbawZIhM5MgR8kCZoZbemKc7sk9G1nZehW6N9BjXEixidSgx7bmPnDB34xEfaboiq
	 hGaXw2bkvCiBg2XK9oS6ooqfjqBv/5KwFNCOIshoK3g3vwsJzwb0fiKz2wW432Hg7S
	 vQ1LWEtUDXyIjNfNYntMnX/3Dqja4YPmsUTdfJiyC4gyM1/XipSluGxBH4a9dABuFl
	 9qUewPNnXuM2wGAcQC6HcpB0SAdpCVy3Ts5QM/2jXiMo33xZ2CK+rYEMcUrTtjIbSH
	 vGahiSbH4DiEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96618E7AD79
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176671583360.25790.9192819705654594391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed77bdb71bb1ad9367638ada21ad0496bdae49275d83ef86110b23b77dc539f7
Date: Fri, 26 Dec 2025 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766715833
