Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D549F46BF
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727661353; cv=none; b=Rwwv2PeLahNwzc+9ydz8zc13bfoY7+b+BzDN2LIOa2PRdkYXWZ4V+3leqKeImJgxqWm434eiyCbQoSrmFoCLBHVtgR0tsuvL13VSvBT0S4Jv/N2RDYS3ah1oFaqMUh5dt+exSifGBsIzp5HM157Qvw2R+fYmt5VNOU3YvBhbvDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727661353; c=relaxed/simple;
	bh=oFQ9QZD+T+mFV5RqlFncXdkAKAFEhxjMoPbMTBfu7HM=;
	h=To:Subject:From:Message-Id:Date; b=qnlHOXPSO3opY3QnYKYxZC+ZTntE98O/M92YT4QJYz0VcH2pi4eqyXaFZGVBijMRj5W2KaOoBrLFOHrXiBde6lLnlg8eqM1pdC4bu4gghIc9PUDELoO6vN4foBQXyQFBdiwBRKI/3DUWps/8OE640mKpZnL7yiwJMmtcLzir7/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GvxRKUMO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GvxRKUMO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1BEBC4CEC5
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727661353;
	bh=oFQ9QZD+T+mFV5RqlFncXdkAKAFEhxjMoPbMTBfu7HM=;
	h=To:Subject:From:Date:From;
	b=GvxRKUMOPu0qLZ4chxFPr6a2rgYmjUL8uVcPI6NcAB1RfPZFyzDYrrqR2jIEua6qk
	 bxwJZB0xb/Hve0hZ84coea1Vi8ofTAhAzL2qwf5eGwWGiJONVrLmf2pb3yQuaYfR7k
	 ymLUY2kK/xcdJS8oLxa4LCmIZWg0+fVEEIC7PfrPwi+FMqfNsw/KsTM/95m9JxcA2E
	 j8v8yHBXPLcO3jafvsOZ5yOTJqXN69/gMRcKuCbWYH2rCUXwgE2jGgo2A+dzvbJnY5
	 oVRT9aAgiVR4f/O/WHOvPpanfBDnLgGiV2q55cedjfQcu5x03CvNKIQKqv2zC03XmF
	 zGsqcNaxSPyyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF32CF6495
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172766135363.27880.6986491523593586876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d86cba06668c5ec6414fbbc9c845ca557d9a82cce045ef7765b7773350c906d
Date: Mon, 30 Sep 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727661353
