Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C16812A170
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 12:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713270563; cv=none; b=kGWMtffdw2r2jfBe6VkFnBCQx/T6YalwujyEM/gPsBRR8C8FyeNwKZveoa85ht/pQgK+xLGUTsJUsRcIHtllZVMsyg/rmxVFNumAoi9c55elYUIgxTMwh5GpPwEpjFMUj2KXhsYSUfj8rgGRKMhDVuUVwFodOxASvBAYqgG7mtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713270563; c=relaxed/simple;
	bh=nBSFxEpKA6PXbPYT8SaLswnFMuuk632vTRpsModXSgk=;
	h=To:Subject:From:Message-Id:Date; b=OlE0nbmyAfp+ZUNd7BtPIcOtL1PI2B/kypbXfuHnOSGnwGJ+Qj35lNo2pID3LxxCXyZReizycz160GpjGUasM6RMnZMd30LUwtQhsDLETUU+34G7Ev4qXUpbMHO1eUhBwsWvMCISW0o5u/0w+S8Xt42Zp9koFYoQAfUaaA0w3ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BzKLaDQU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BzKLaDQU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9972C113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 12:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713270562;
	bh=nBSFxEpKA6PXbPYT8SaLswnFMuuk632vTRpsModXSgk=;
	h=To:Subject:From:Date:From;
	b=BzKLaDQUc5AIcYhKe25zK7p/ynsGarBwRKFZcLVdg6+m7+VNsZMhci6mYvhGOjQkS
	 xeyAUyDCTvZKHFwqZQsQDdDU+u+29kM+ee0AXI0kO4BBoF4C8C6vkS+Gk9+8HjjeYA
	 VF0D12I7ou+lrdjTxOcKNvPu3Y34C0CUdsJXmHx0CIvkA4iNChZ8sEmfDZ6y03a3gE
	 VnbrrnFgAyUVgOavV1wsTZmgceFOOJcUeWI2zk13nXNiglCmbIQX6HrUb0GU8c6Ycf
	 M5h4L1/aaQtwLNkNL2QGzez/Lnza65pnm8erT6db7lpVoE+aOe9kJUbEFnyvFzjVTw
	 2K+qvUpF6udWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1FEDC04FFF
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 12:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171327056284.27540.4554395818919824245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f5282a9445dcfcfa9ca62249c07ac07add611aaad796bf53efc7a639c0c9051
Date: Tue, 16 Apr 2024 12:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713270562
