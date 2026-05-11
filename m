Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EDB2356760
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 22:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778539234; cv=none; b=mF/0U+EzmSXKxiBXNjICmZ8mLRuMqkd0izQW7mbGPqXDrbgs3DysCPwF3Ew361sFLy394Ws5imjaKXe2cFgzJ63G/HyZOkmz+ru1YaMWr3re8h0L5+trdykGPMHGxGdoh0Eb8UISWvHj2udkrKOPps0HCZnPCoVW98dazgwQdOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778539234; c=relaxed/simple;
	bh=ywWralvcXxAsjMyUjMbojbm2ygQJJCdPYKqau42NjIs=;
	h=To:Subject:From:Message-Id:Date; b=flXi/GcZ3eJ2LJS6j7N/8rhdQCArO2vWTKVZ6jnarsbdksg6PUws+UJMHKO9ueSPzRv1uwxAPwUiQLr+g4JSBjAndDUS/4a/9+0O8MjsfLYhvvrtjcKR6anyMatqcdHo9ycORt0s2dho3AC5saP7zqSUnR8m0uyVU5bvMFL2bss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aNGOyyQC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aNGOyyQC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9FA2C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778539233;
	bh=ywWralvcXxAsjMyUjMbojbm2ygQJJCdPYKqau42NjIs=;
	h=To:Subject:From:Date:From;
	b=aNGOyyQCcgWvc/lJNTzGlm4ZrXO2AQKOujmYzaQjdp6IXOwWvUTE4O+6+/cAmtxT/
	 qS20qdipOq9cvC37PoVXI09GHffAfBqaXBoPK/0SkivVLazbF4DBdZM0vpA+Hrk+ZZ
	 p3KQPdCI7Ofm4TkTfG65ZyR3qwrbMRRaKQcUXat7VhTvKe1p51VhApgSL3qs7Aqmvt
	 4FwcPe+lloywJm4lORHx5zT1NcDC6rU+gHVn27Euxdus1Yhy2LDOLBYqGtff1kHUnL
	 hDleAU2n21njDInVWREQ6f/48B6suZ+1gCS0orjCeZh4y9X+rJtNGtFTaaA6FpGR7p
	 sfBmDnP4GoSAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAADDCD37BE
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177853923369.13586.6483217876705368338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0dc2404975ede3c9f2be59993c74dfd52bd035338200a3fbc673c65c046eda9
Date: Mon, 11 May 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778539233
