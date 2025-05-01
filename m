Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22653215779
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746118794; cv=none; b=DegvUzQeTWjAmXTgsRdFh45zOTKzfvYwGkpKWKq4u1/QxYeKbflYtjOEs7g1Pghj+k/lqCRe1f5SUO1lfA5AFkNBjqQqgXR3pcUlSK0iExBOXIXgAELXwCXDrYF/k2TSPkcKvPu10bVALP0rxgWeADeduJ1/ZLrBPX0iqDoRS1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746118794; c=relaxed/simple;
	bh=+KuNpLejTAP//GW4HYaVRkxxOt9SV9cP7PhOIvMsrOA=;
	h=To:Subject:From:Message-Id:Date; b=gv2nIM1M/JtNxxlln8LyI0CLGYQa0J5AJmrp/OwVH56HqovgbAAZrGziQqRmPT1oEBS/PiDHyNsSW75fRzWWAPoNCLnDpZUF2YBTrtM0nut/Z65dzU/C+U6DnScMNEB6RfLZFSfHwuUjF9YE1YcYhAHiZFQrABMiP16jRv9Abp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uiqn/0Xs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uiqn/0Xs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F540C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746118793;
	bh=+KuNpLejTAP//GW4HYaVRkxxOt9SV9cP7PhOIvMsrOA=;
	h=To:Subject:From:Date:From;
	b=uiqn/0Xs4U4i3bdi7vS0e5zVqduM1qHtnDsJzYTpvykZKRB00YxQZvtv/W3DZMlbl
	 uvSqAs8j/g7sq+zsnb+ChdQ3I4wgqfkkdGIpK9zHuP7CQt44HVk9rREotteF6HuFNq
	 WBnqNgG4FsF1m/v3vB5yrAKBX09lJATVdD1x6DSUiSEIklWQLYFWYSrmEZs9B3CFTM
	 i8sd/BLHehUEEBT97J+jOmfQsEaxvIUWfNS51d4GvzFCLTVAIHlD44gFoobWMDrgK5
	 BWMH/jswQ3FxNYKGYgS+D+l6Du7h4stPmp49Nh7dWkU6ZoQBs1jrzMBwLUpbcl+DH5
	 /aARYH02pSVRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4E8C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174611879357.29819.10396998824457564160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25792bbb8a6c6585ce3a90aeecf38cd472c13e173d6701eef560a7e180a4c419
Date: Thu, 01 May 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746118793
