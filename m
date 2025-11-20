Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D0DDDC5
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 06:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763620314; cv=none; b=pduZ+mmbNtNiyT+oz5eqr/KWdnq32v7cgJ0pueT3E9HgxGXwGXeGGtxW2nkJhbI8pepv7kSNjS9nHpEGz+awd3ObfjZPP0F0LyJbwbt/D8fWPhPRitUAQ395Sv/yirMJfiyMnLOKIZlzjBRar41dwQ44XF9jILfrVYHMEPrcilI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763620314; c=relaxed/simple;
	bh=1yZkzegk3urxLvU5bVQe3v5eNY0KB9WXppbeZKDMhDw=;
	h=To:Subject:From:Message-Id:Date; b=rMMaDSksdjP9vqXGm0pouZtmqj81nGg5WT1bNRCcfaGFVROlaqH0cKwdRN33V4a9OuFSlm+Ix0ibOFIYIKfUcOAdlbnRaCKqiGXPzWIg8BJDrlgZwM1F1RYCuFlE+bNlavNnGyhZl9B4r4rwEKh+3r7sFBGu+oAa49a1gA0brEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SxLNLQrA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SxLNLQrA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1ACC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 06:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763620313;
	bh=1yZkzegk3urxLvU5bVQe3v5eNY0KB9WXppbeZKDMhDw=;
	h=To:Subject:From:Date:From;
	b=SxLNLQrAKmh3ay1UJP6EGozzT+QImCVJRCYE0uV9IP4npWtiK2yxL4yrOFFsaQU5I
	 y0jLXbI5+dIGioXWzrj6/lsPzjW0OWf/T2Ld1h4T8s7cvkQcBS62o5CDO3vGlPU7rk
	 SrlXm1z1iaeslXTbaE4bTAa+YXqzEN18IMd0XNwxoE4x6yyG+eU7+uVnAHDyJAXPZs
	 IofNir2BwwQO0qhqIp8GfPkTFdsoMDjWphqXE+gNeutTDmK0JfxAATr33JLIM0Ay/e
	 xW9U4GAVdLLf/d66JZT3LPh3o7hHJLmq289TczFcd4DxUh6XLBx3jYRb728/P0GW6B
	 DrF2XajPfb5Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986BACF64BB
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 06:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176362031359.4119.396589473663683304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 230bcfab1c0cbd3e761119862505c515d96c3f1489dbab0d19e4ec04e6bc56e4
Date: Thu, 20 Nov 2025 06:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763620313
