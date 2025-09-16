Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F4AB266B40
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758001195; cv=none; b=pkFzSFFUSH4rX15EfZSuslwO0T6TQzq2cmltEuKrKm47nJl1u7zHxnCDHbhn5Sxgp2Cd4iFhE4Ou/eK2xPgT0zz8cVOuQDRTo7CcO1dy+9/ZjOEzy4tohzWT4XK2TjFhHEtE2Wi+T4GknyXzHRiPbbWy8PSbymkr7lEXyGPkFS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758001195; c=relaxed/simple;
	bh=1XwlHjh6x3xEBjTej5vJZ81Q4t878mgPvzCn/W49W4A=;
	h=To:Subject:From:Message-Id:Date; b=IQcDYdUPLEYzvW/QiSevftoYP62UV3vTv1vf5ik/lxB9ZqIppD2ebpTznw8e2iSonzDYMKDvyI0Rl4hNco8rE/z1GCvCjwtOvNz99BsHRChCW48uaTmQvLYKOExujK5Ufv3XKtDGsVhH8y6WxhKYbnYmpa0JczY1nxjPC7ZCGpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jnfBOXg9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jnfBOXg9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41F5C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758001193;
	bh=1XwlHjh6x3xEBjTej5vJZ81Q4t878mgPvzCn/W49W4A=;
	h=To:Subject:From:Date:From;
	b=jnfBOXg9+upvjUQF12DOAe4ftkAnz1zA4XavnMqw0yx9lntpOCyS4XMygay40UbQw
	 M24I3MZfeC7tI+qivzHwPcBUBAWgxf4dbFdLq4bZoX5jkJScO9+Jn/OsuprQJB+TQJ
	 hvaHlE6h9MkTuTGua6AtawTqCtEzSYArvJrXMNXrmBGXQz7gj4zGJe09TM2Kfd3Ag3
	 RKAIR6lm/xLUlmDDKjvrQ2PATuXemxvCVHynGBErEE9ZCCVSb8+rZ8oww6BuA9QRvR
	 LM/ar5eSv67BNMB6MeKd35nDSdVTCEIbbT8Q0dtXK2snBnNqwifoP+wXKOo43UeHHx
	 Zg+VA7zGD8VDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B98CAC599
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175800119359.27726.6133152539010006302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d51bbe1b9324d92be7fd765ec2b6f41dc0187c59d937b33ac6afefebb95ff57
Date: Tue, 16 Sep 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758001193
