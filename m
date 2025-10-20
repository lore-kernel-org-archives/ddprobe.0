Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105ED2EBDCB
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760993994; cv=none; b=fDuDMNsCx3ECms8e+sq+uCmYIunqVoMsL67axaaIwwocLFJxTBRoor7M4nTuPXHo5NS/NJc5665IYw+LcvCeS2a5fqkPap+NOZicv8/BTYqRwqsW3nZSQlxUNWC+hKMvxDIww0jB6JRVla30WxNlJIqJHA+PiQI+aOLzG2Z2I80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760993994; c=relaxed/simple;
	bh=Xj+Ga2sG6BjJZfx5mmxp77PDvI3szmF3BcV2ZKj9rkI=;
	h=To:Subject:From:Message-Id:Date; b=E5f16Qm82DC5A/1oFq/H0jyyZjY6o49FA+/GKeLvU+wAlPjhDrO+CG36UnSj39qur4xJFJS6ZY5CA+SqS0zR4r3lJOnXss0V7DhOAZb/4lme/bhapLnEqKUryTSUDMHARG/AvqzSYl5ZSXjO2f5sXkkvue7mjkOF7OYj77IjmpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSNJs0Y8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSNJs0Y8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB5FC113D0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760993993;
	bh=Xj+Ga2sG6BjJZfx5mmxp77PDvI3szmF3BcV2ZKj9rkI=;
	h=To:Subject:From:Date:From;
	b=uSNJs0Y8WY8qv9dd98/Hglo/tj94MZk08iGAE7lHnHB6w30L+e9CLgiJhXzp/WXMA
	 rVt0Th8Fstb08siy0+0EOdpM2J0BK575//3cDQDdbnQLH+NstwDmbEVdefl5NnMFVH
	 833q5UMJgwmZP6VRHyQKfrE1eU0A/n3AZsZsQBjeMgmmtezX9XR8uO5FfT/M4G3uDV
	 zeTJ800v9aSLbH/ljTLSAFl4uvtnxv0f3AuSYVxZVlp/jUK0dk4SvdAw/slSRI7nqZ
	 tRkUK2LYBXmqVRuJUP98hsRtx6xEDwGlkV5Fpb2dv3B1PGuqXobNDNlehEyXi5Xt++
	 yd4mgop7E8pEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB75CCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176099399357.13907.15676559341163608791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5a5da0d9a6af40eba6d43db20f18fa54d10c4853c12064cd9b3c87b5e6441ca
Date: Mon, 20 Oct 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760993993
