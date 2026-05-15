Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0885D379C33
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 12:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778848234; cv=none; b=C70vQfB4I7rEgJdv7IbEZk1UANj/uB4CaChF2dgVicNH0y1M5v1DhuQIJmI3legxZ7QUkO0Jy7BiMshjVpUsZxL02Tj371V5alZnT6iDV3U+12GxTPb4pQ4mrfRuf4Eq116AnEJtbjGj3SDvzg/NoqozIrEPlIw3DLCm4DdSEk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778848234; c=relaxed/simple;
	bh=jHvuRsyIVis/kkPKBbzUDDWTmauuHuHMcFqku8kVU6o=;
	h=To:Subject:From:Message-Id:Date; b=AAaXxotmLglQNMgFOn6A6Yx91cmP00VYwYUjbgHeIpelJjnz/orlVvUq4lvq4bRPLcMWbr7CcINA3n7XZVCOHXe9Sl6lCUcg8BmGEZJSU9weLuktrflfju/Ut64kY6xY/mJwK+cWr3ZiTFNXT4wxqoHZJY8FQ+5p8OYHIQG3axw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=agwX/aJT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="agwX/aJT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9B34C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778848233;
	bh=jHvuRsyIVis/kkPKBbzUDDWTmauuHuHMcFqku8kVU6o=;
	h=To:Subject:From:Date:From;
	b=agwX/aJThTtTnGPhzZxM2cT2NINNqzKEU1dek9WEc5JwQkl2qhpfVkOdyBKnzFbC2
	 8U7DqIuGOg6eBfxwQthlAZEUNJGpAPoTk+c6BooBnA83ns6swUKfgm/0qGuh7Ucd9b
	 J4vk/PSRHz/GAnmbC6iHcNbvI/SEX/zl5UphyjpV+ZT/Sg+iYrR40+OY7GeYHV5b2d
	 tYIEw5ZaXZSSPqmHz4EuAyJa1B/NUdp6eZfR6BYPZnQXved9pv9eUko41nCYPESARd
	 RW/4t/3zYxGkviSsqyW7nCsMGkzL4rh+t5WMhZKSo8GtZkT0x15xt84oGzVguRHISb
	 8kDY69AIII20w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB532CD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177884823369.10726.5626159828200907501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53bcc9f657e9e577f803bb1d0c23e99f6c9bf1474bfe1efb3b6f7164e7ac3ebf
Date: Fri, 15 May 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778848233
