Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416791E492D
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 18:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780253674; cv=none; b=kUqSnCqbysS6BNT/wj1RrSIM4iOdigb8GAGHFDzvwKFkeC/DkwYQvROsnVwb3d7HlL1JTDNGpLSoDUL0N3S47zRsNRvAqDqvaUH0KQQKVYjkVDt3bptUu0+xvw39uCsfBRLxzL269fWVxDzzjgWZcA0Ovh3/Olo7Z23/SvmtNko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780253674; c=relaxed/simple;
	bh=HKvj6efylz7u58TwbvIaMALqHZ08fwsSGURwnrocBKI=;
	h=To:Subject:From:Message-Id:Date; b=q0zf0f6xf2irPIJaqspIyiW3S+3ZWt/FULH30dEdrxJ3X2oY6ohOEXSUYKj+eU1AGfwywwNJ7rnduxUeD8IyL8tSjA0/wt6rLb92zNzYdo3Ot12Lp2MRYLcfFiDLNZBb/VQIyNXqgcmhn3o6M9wgzYOMbPY/IP8ou1xN4xHKZU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bqRkzYkY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bqRkzYkY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3EDEC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 18:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780253673;
	bh=HKvj6efylz7u58TwbvIaMALqHZ08fwsSGURwnrocBKI=;
	h=To:Subject:From:Date:From;
	b=bqRkzYkYAQ/A/Yvar2tJvy4hO7Xt+Q+ZijQHJklQuKYOSI7Ny4tWeHesrucA68Y5+
	 pbUp8PTYCdLuNcLm7u8zceYDT/5rPBYQgpUrnLQwiAt0fKvbLlYPPcv1rjEwaWqMIj
	 0ERyriyGlS2SLjq1XY6DQOI70Faw7EffiUUprnYuGgT9gTZuBM+Tud5F5s8eH1xRHu
	 QQnomUirhcmmVji+GC7cKo3D+R1Gmn7YAr40EnO3PE8qv0/KB53F0GepueeXj3gU4s
	 GVkLmPCJGud9B7zgV1sxrjtomogiU8mFdyFdLURY3aIeN2KxnJzKY/fdk6fl1DtZZg
	 ghTHa12PYpluA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAF6CD6E52
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 18:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178025367368.21819.187191707198469469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8425c359d63ad38abd0696d31988356da2bf69906ccff4d4ad74ff8a02d6cf8d
Date: Sun, 31 May 2026 18:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780253673
