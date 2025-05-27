Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484FC1FFC4F
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748380194; cv=none; b=CngPQ3tp9lUNK8F7gW6ieLoyZR1guvNOm7+FccRjDeSqjHOaA5M3RL4rSjUOAZdIb8lAyUBpsuk6p9UfB7TlvbGzKM0d0KfZNimhLYaD8ZZyPzSl2QZ/c6uJqiSvVutGJPzddrEI240BNsrCte5oq/q6YpVxoxfnj5m1MwoTYKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748380194; c=relaxed/simple;
	bh=mszvFWF00yBbf6JR+X0spRS4M9LVxU70ZKuapXd91e8=;
	h=To:Subject:From:Message-Id:Date; b=iE4xncYy5RGxDw5sRTm2hIUSN98Ark2nT7nSeWm/ipJQSHzZF7zWaxUdajb5EDXjK4gpMGoagIisEvWi7IGoQWrlyGnLVbYPiI5ojm+0HNtWBzB1JbfI9SZ/QMXDOzOw/xqHjWfqM/6CNh4QnTZPsx/0zPK450dBvK+IjDg5Ye0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BLgkEizN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BLgkEizN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30F1C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748380193;
	bh=mszvFWF00yBbf6JR+X0spRS4M9LVxU70ZKuapXd91e8=;
	h=To:Subject:From:Date:From;
	b=BLgkEizNEHKslB1pa3gxrA/vRseRdIPdrEt7sJsQ5wlBGCch+e5P5aUy3GOvqxxPx
	 qvgTTqawoF00Faqe/rantm9kK4JtD892luJ8MGk/q61vKPPVYWvco6dgGiU2UR3r/B
	 zVjYZinHkGiDdWdWqNBaKmjdE80GG3PG0Q0bFYvix2YMJwNEO9/ShX+/Xmdld3dFaj
	 QkPuPOUizS+h0aaiK1QwlP0AVA4PaK7jtuFoGb+R+DuhZDDkO0ziGFuFKckXKH0WhX
	 VPZCndyT+IhVYMFRlit9AcD2hw9bwu0K9wd75EKo8cEZCq98jq7DGA3MFqRef32kHv
	 jVQTcPfcB/oLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDF6C5B542
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174838019358.5474.6401203570397080790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 037ac46d740dc62678ab029ad2c3a32e6ca70bc9174ba2ae17f9603a1e428e54
Date: Tue, 27 May 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748380193
