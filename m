Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC8E3570C4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757431794; cv=none; b=nFleUHJCHkNbP8bqHBl3E5xWGHCgYKJdWDwSVzQE381apezJHzIkfGIleR4QRHhsZGWSrHj3ZakxIUZGuy6T5aBGjXpLvhhxZnbe7nBObCZ0nfDdJ8gSHwzVci7brloo23x4cGEUysMjTsIN6fBQmCTy1e8f/IwX3le0/rixgf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757431794; c=relaxed/simple;
	bh=JUpzFiKdGqBXUG+cCqD4ciPooD1l4MTcZLvLhGMZltQ=;
	h=To:Subject:From:Message-Id:Date; b=SWwlpvI5By2jI1I5N+pBHxHjBkTZThI2P9rjpbxLRnEie1dzebHW+++GvSZVXuFek522cjHZq9K46YzKlkIQUx4Tc3vD7fA4mPD3mQxoebkZeHa/pW0ZWASCvq8aPiHz0gKXXe7d9f6PwffZfSRm8yFxAp68ZSmI+zS+9BWICRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hus60Glg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hus60Glg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D89EC4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757431793;
	bh=JUpzFiKdGqBXUG+cCqD4ciPooD1l4MTcZLvLhGMZltQ=;
	h=To:Subject:From:Date:From;
	b=hus60GlgPRxYBA7BlycP3MbStDAshFS2wuNPBL2LtO/IRDQGxlfNor9OrgVXx7xKX
	 rV4WxQUFe9603ynKnu9ja5Go4m3NY9ERajTT53QeOITubC2lJxhFPjJi2fw1ME1GPV
	 mflV6ildm20n6dRR3DMfMq8SqmEfMVi7LlBLk7H2HRmnA+FNEMVMmXjPtI+dHlZXbd
	 Xqs8e8/oFfPpS6GcKiuOxNSDfjS3NXjG7j4Bd054jQfznHv6h0Uu9AgPRg5H+0OcxA
	 xEm10dmSY5jsC1HWm7IFa2VImU0mQq6L1VOdmbNSxh3pgHBO3lQ+BK/vdOV3f0TZSl
	 Pqrpn8jiSqTIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC12CA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175743179357.21220.15948104626061928086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1901b029bea6e6a0011a2a618183181e3d104aae46396d30f2ceb0af6a2216ca
Date: Tue, 09 Sep 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757431793
