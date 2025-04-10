Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A94E26F47E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744279794; cv=none; b=Ov2BhvWNUxIKtBjS5iT+Qo7nRfeLZrz/i55XUw4pvB+WCwHtSf6l4X7dttpM5ox4qsxH3VNsGsLP8jL5YNNfxdSrupzIDtlnOU4/0mt66MPaYrif7zl6fbNSOk4DL03i/4bJmOqtzbiiUw44emCZsUTRnQoA+1H9CqJBh5OwYkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744279794; c=relaxed/simple;
	bh=QHnSx5XD9nDEXmlE0jjA3nc8dmbNkhwH6t9zTScrmo8=;
	h=To:Subject:From:Message-Id:Date; b=ukrAbnnZpfIeDJ3N5zWqyAyB7yP9h6b9rM4VevKLOnvVvZyuABB5VpB1AKVdI7aNkD8iR7cjQ6c2GGXOmNcA1p6WRiX7ZUIaqAGmr4IZyUshj2m++FxjfLsNAlpeYbRb++SIqlwUBQd+XctlIXSF4Zx8CPLUrIRBmgrlLpKr87o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YeyswYTO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YeyswYTO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9CCFC4CEEC
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744279793;
	bh=QHnSx5XD9nDEXmlE0jjA3nc8dmbNkhwH6t9zTScrmo8=;
	h=To:Subject:From:Date:From;
	b=YeyswYTOeSlMu53QYo4o8eNLM1XluANE35TpIQpG3y4U4m3Aub/vMeyeM/YUiDAEU
	 y/ryMGPTEuKMVroMyzBLuvSppPg6aAkrHwINDss/gja1ztfLx+vtEIwZailsXmPw06
	 vsJsMfvLHuVWpQnTsdSClJT4UUtjjRBdHUxxtg5hQoGJjDFI5e01J2RzVAAYFwstNz
	 IDRcD4QtPv5YKs4xUxbD+qcXH26XqEYQLsztPt7Nlw2QVGVf2IPDTTYx7kD9zocCwd
	 YlawbuHOLRPJP9WLDfQTixa5s67OahVyb9sVBdCYBtaj1bccpeSwGLDB1dCLHR7GWw
	 oVynVo5sKd7GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93181C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174427979359.10485.1319879767489823223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3db293825ef1168da5f74757fa0bd845044175b3831d1f9fb48ae80a4bd6d5e
Date: Thu, 10 Apr 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744279793
