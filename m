Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC9471D61B1
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738875353; cv=none; b=RpgeA4BuK9wM6akGnlKPlCwIAq+dJxjqoxqNktIXiL5tXEFWX+yxaBbweErvy7jKKIWeQcFkITXd3whvToOXoqCeEpY/6+Ptnl/6vn2VmatRWhWr3AUAK1xn40nQUlrmKA3aWajJCtrjVT30cqfZFyzlFSmhPHJP5XSp5j+jxpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738875353; c=relaxed/simple;
	bh=AmSFOJBivXf+4nQZAVlCnavUSwy3PxZ3BOUBTsmLDEY=;
	h=To:Subject:From:Message-Id:Date; b=VT5bnOJJxWeGMO7flScU3kO1sCK0zt+JeUQwtbcOrdltpMn4+3vGrl1tJiGg82KgEYAyOuQe5xrqlnnIZsGyv0bCMU0Sl2PQDFcuDZDWOaEFR6afLH9JYXitKivrtwDYugSPG/E12kSkmIVaokyE6C0EEbH0A6xkGihFISTEgYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9zyfDi2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9zyfDi2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B910CC4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738875353;
	bh=AmSFOJBivXf+4nQZAVlCnavUSwy3PxZ3BOUBTsmLDEY=;
	h=To:Subject:From:Date:From;
	b=E9zyfDi2ekEWea+OQe1rr04IKtzxBHa4bOkaNWkO31Hq5sL+mIQ5B+YxHRuh62cAS
	 XeiTRrye8VNvO2XgzfCm47ICt3Lr8jxVbNw2h0kz0TiGbToAqVH432LZQ1Taees2bR
	 5/CNHW1GAlbbzVnIYcaLV316GtOaP32jl3L9U2l+diQqZyRFCqPCVabJmpZXi8joKx
	 ueqZwKB2BtYlen51ogGBDSxB7xuUQ/9Z4cr3MCQwrpqPjtRKb/P83MhccdN2Q1uMRL
	 gAoL+mDpMheju778wAfJch41rCm78XtVsMmpw4ENb7nNAtTP2eYBqQPwdDfsTSVIsW
	 6d9znO6v2I+UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A510EC02199
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173887535366.11959.9845947919336716271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3de1c8f197eb05ae2e8e92506249d3ccf4b01b24e62db87a26ebe62a0e055b0c
Date: Thu, 06 Feb 2025 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738875353
