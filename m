Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5692595
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727354754; cv=none; b=LMWYMlI9dhPUo+pd1K9H5pNkAt6fjlpBaULHXqJGkafZLWfzMfZpX4RRJAJKSm1D//JkAXnwLLhO6mqRdpAJ6dwG74o3NXBW/SsxiUvJ003BeoixFQkW0DdqwryMqcu06yXIBTyiHx8W/YxCEZKVNM5Mh8og6P21Dd985eH8Xp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727354754; c=relaxed/simple;
	bh=8ZzG1A39TXFzIJbSD1WQe+DarlQopx8bORPi6dfKAjY=;
	h=To:Subject:From:Message-Id:Date; b=nqFSELWGu79JEEDOTheF+gKmMCZ3gGPXRiRCHndtlQ7w0Ew830+g7tp7HX4eB0sYC/EHHHS1PkM0WpMNiwVIWNGDRsgjngvzS4Ij2C/EUUQLLk192HiBa9PSpqlmBtlIoJC1q4g6AksgMgmfNsW0dmFzfiw4H0OMXlZjhn7rAtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bvenD1+9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bvenD1+9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF8DC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727354753;
	bh=8ZzG1A39TXFzIJbSD1WQe+DarlQopx8bORPi6dfKAjY=;
	h=To:Subject:From:Date:From;
	b=bvenD1+9jS2MlWjS2imuT3baFVjGhhmzeiF0p9kn555Q3mzejkb9W21yIcVLwuUOr
	 8pP/99gwgt/Mc9D/jNb807VRf7gmeys+DGHo6XvPjVB1KiSpL6tQZbI0um/Bi0/sB4
	 1hpS+hq3nYXOyTJJaujyHAKMXNBsZmlxcByrwdD56AuaIr4KdLoB8mGsqs9U4kMuO+
	 pw+H6FOtid2O0m6GUUBiPxqsmdaYN0AjQ0qXawjjmnv0lQz/LB6R0Q0Q+hn4xd/60F
	 yXl1sDktf+Xd2LxUkPRP7Y/W5XjWc7CR66p8Ftj0xB26r+IpldHJaGIVkrHcyx4qO3
	 R6/rK/+1tgo2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E48BCF58C8
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172735475361.25984.12878123222461977155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02a94c7663852c1d15fb73c99520a4916de4e88bbcc725b60ad34004663a2ee8
Date: Thu, 26 Sep 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727354753
