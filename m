Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3119E269B08
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745396394; cv=none; b=n1wGsH3Ax6lkCTfKhXd1fY9+pZmNbMwyySZpvQa3FvD4YZcLbIAJAKGmvvIMUNjtKREgbrM5TPcHdaXRyDa3p3XL0pdH1xLyVTqUiUAc/UWLg7KeKCcvuiSRClaVICZ5ZTT1iqLh+JtshhaHLHSSCBi5WNGwsi9eECs7cOZWnCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745396394; c=relaxed/simple;
	bh=nDGUGjjGW7YldCub0rdm3jgosQCGkt8NKwkAFR+oCGM=;
	h=To:Subject:From:Message-Id:Date; b=Kl2FW6XbHDOgy4m0vTAzutfEiEYwB11aMF45dYqpzOIR1g59dS0ydTL5t7BfvVzY+wOzz7U76KuCdQvTG4dmdzDJdKh+eeBIwVyT4i6UwW/XwN7soKHlLwa0YFiL+AtYCLjA2UgCiJbTzMgW7/RbhXC2DfFAQ5xsc9g3CHTIxzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EAWcVb4F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EAWcVb4F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E93C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745396393;
	bh=nDGUGjjGW7YldCub0rdm3jgosQCGkt8NKwkAFR+oCGM=;
	h=To:Subject:From:Date:From;
	b=EAWcVb4FKh3vLkel2aQ7uCZiYfgJ9zr+FPzBqdR9J3BhQc9BY8H7R9pUYJApfYgYS
	 13L7lL13gdxCq6rsuAvNHVMDvxa9Jo+LlZTluttB+SWUd7c9Sel8pEub7F3xeWt6Zv
	 oJ17LzKcP07f2dXsS4JAlI0t+LVY7mk2ngmIwhazT0WXgowsV2xse8ug4pf3S2ACPv
	 oyohLu+eXNdYhRLhARcX90J+GF8gsqtqyTOl/8bng4tcCYMbEqmxRq4N2bREf8XDGO
	 LVnwcDEaOWlNx6mqA1GJYG3A+26l43SCFQW+99WlgN1apTnHV/iQxrC+2rekgQ1NLH
	 Us/6ZCjyv0fLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A86C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174539639360.30530.10218794490506675769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b6c914f039bb4f5383ca6d813c44f6e76de55c1213a7c5bfbaae75179ad4097
Date: Wed, 23 Apr 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745396393
