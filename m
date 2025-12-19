Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32BBE328245
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766156634; cv=none; b=Ju9fTbCakkvpbleNFj3D6/9Rwwmwksvr4uk3O/JWGLNSUZOnfqMgYAqzBo47dy0KgfnwPgmo2F73jMz9luomj+CyES55ZEq24n0Bc31YixPq5FZfjuf+6Za0kIU60Sjyn3Vg7z215W0+wBj0IfTXT7v+qyUaFgZhTjYPqYp87Oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766156634; c=relaxed/simple;
	bh=DqyWU4htcUrVCV98vqA+G2AdNEDffZx7Rm6cEDRs2Ik=;
	h=To:Subject:From:Message-Id:Date; b=iQKiQBE/+Zg5jziBiFcUuIXm70tPYiJMASAMJKiwnBqKxShXR3n7uPvnckyG5XZ9SdhGHfVRSSKLTC4SvwnreGns7D+70Lu+ogAH/f9PcgDhIyghXrF2oyXrG6vVK4XcAzzWNpvMOytJWaiShQpMJsksp/bR33IzL66x4YWY/wE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r2999Cbx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r2999Cbx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4F88C113D0
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766156633;
	bh=DqyWU4htcUrVCV98vqA+G2AdNEDffZx7Rm6cEDRs2Ik=;
	h=To:Subject:From:Date:From;
	b=r2999CbxFYJxSbXlz/IOqR+PK8j6KkbwT9KHdHLpQXgpWIfQJoaYtJq37URkVJjSf
	 z2MTrXlYBtjBjQh8n0oJ49PAcxYy71IUaOscdmFwrdNysQXEQoyBR1d3KPTKd5BWI7
	 VPvotOHH7r4N/nOQEMtu2FxwErlD9vX84UbtMKJHiFJn7GJGEzqkA6DjSz6hOzgkHq
	 rotgHTce/hY64yDA/xdBdBJRl8pzyjwgMEXMxw3gNhMrbPi6DkGxLOhsZSViHaM1xt
	 opi0Xl5Xc+CMsNDhT3aHoaQr6KFmHrnPZ0uIXt1Fu3tg94YpUxtniuZOcAAJUd2EwJ
	 VK9JFrCqtp11g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9641CD78786
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176615663358.842.14952892579815121475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c54f87595f164e99a3cb42aff3188ec5a9b7c7fa9f6e78093e8a72fca92bf2aa
Date: Fri, 19 Dec 2025 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766156633
