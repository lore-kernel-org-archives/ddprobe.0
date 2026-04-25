Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2855940DFDC
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 16:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777136254; cv=none; b=G6nt3cKEB2ZNiCgAIL5w2Z+FdeSH4lVwQ88iqchIYwJRE6rbkh2BbwXDjF2l2H/Qh+ebnwIbpXyizwVU8prijHCZ7shQfBOlBPhj/jXnmPUHN3+Orz/SoJDMGnJAoDvFn9zGx9NCvl28P4DmlANt+UQ3LQAhgRNxlnyq69tHf1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777136254; c=relaxed/simple;
	bh=vVSkfwno3Zn2MTzXv6a67Pvz44mduq0uEQHun4BzfQI=;
	h=To:Subject:From:Message-Id:Date; b=HbeCm8Q6Zh4ZgaWIsllPJwHx7NTsBQwrJkcN38PPyzC6L3eXn2Qll4+grWpGL4Wugzhwn0x0FW7OdGT61+oLj+TC2D2gYz3lWL7R0mHd0N9PIJErdPX/herJ/lHK+NC5jnL4QXUEu2rQktQSV3OjsQETN8Rk+XBdOXb67938Lso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FEYcrUXf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FEYcrUXf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1496C2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 16:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777136253;
	bh=vVSkfwno3Zn2MTzXv6a67Pvz44mduq0uEQHun4BzfQI=;
	h=To:Subject:From:Date:From;
	b=FEYcrUXf5tvTG0hEUMDUyzQCgWQZycUaqdd/Gid3HHUHD4ojcOLcb3t3wMzQOlknJ
	 OjxFxO/vWuTpMVMwmO9VpS41y8azm7c84oXYlB0YrCoUYtpPoCrz7GvN5nFad+eBAa
	 Fvixm5Wl6dQDlIHWjyBu/ZWNgXeqGuE7ErtRyiKLWtWMXTTbDxN+KWFwyrOJWCQM67
	 E+NgHLyrY8l+IuK94z0T2+t4sG+ndbLhSWluL8OxUb5OTRpkTrsXJJ9X7onKROumAQ
	 bdUtfRS7QQ8uRnQRYAnTeyrbJnOaXiBznugGzIotKr8ae+DVqcwIH33F2hR2C4Hna+
	 F35+7cX6lcO9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3120FF8860
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 16:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177713625368.24886.5855867634340613982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a96d5232a738ef55f6de15883fdffe5aea92411f4bbafafb3d0e1088a1f769b
Date: Sat, 25 Apr 2026 16:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777136253
