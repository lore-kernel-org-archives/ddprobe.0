Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366331E9B19
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746042594; cv=none; b=uCbTO3ggnxhm8dYTrLqpT7fQYvGfHubvA5UcP+H0h9ep9vDVSnD52s6eS+igy4jYuGvLOTNL9r7tPqJwurjRsC2uMwKwPvEoigugCO4hWe5udW+mBgbukA19LAG+DAMlUN8+65FIOy9D04yXxEg6X+kM1/UhHElKzBl8jIxLuM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746042594; c=relaxed/simple;
	bh=IoX1lL0KczQqnqONNpgfQtY+6wKx6gNw78w4BOxzHVw=;
	h=To:Subject:From:Message-Id:Date; b=Ox+xM5hCpnhrOihfNS6nEbVlWPya4cpCKWFFa79l6MEBC/LnTR2TTLzbWcZT7NAZFtE2NgJt50vI5/UPBqmyiGEqroUwLu/7hh5mg9BAvJ/38YpUKIJHe5/d7nvtxM0hi+wzANsB8qrfpEZ+cIsxfjkERtK6suhgj4naA90Jh8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kuqym26j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kuqym26j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C8DC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746042593;
	bh=IoX1lL0KczQqnqONNpgfQtY+6wKx6gNw78w4BOxzHVw=;
	h=To:Subject:From:Date:From;
	b=Kuqym26jdAJD/vd3W5I3t9DkzPXqCCEntn0+v27Gsupsq7Sp6oDbkjfb7BKAdnWMy
	 vyA7Ik0MYX+4FlA5qyKOIUvGdJtPzHy5voB7rrBHtTRUsOPyHQ1Uj1Bd9ngsxOJwTI
	 VHl7cJwbeLmbzm4mLvu4WLQRpbxHh08XpxYnPpbyuVCsBhB88/f78mgdiHjszIW6SH
	 0zqAhqW42auRXW+LkQFABJhzYvjnuAaNwGpipD8f9iu4uWSp4IzZz4ZjEO6taTtbXl
	 k7lUWFf6Ep/2IAuidHoIswDG76oEzfEsU73c++e5cD8Y6c2bN4hh2YZBa0RSeQSjNZ
	 olVOVHfrMC80g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EECFC369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174604259357.1631.587216758717144904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2e6fbba6f61b1b0df4463d235db73d2a205c5d81153055f71530a7234f64267
Date: Wed, 30 Apr 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746042593
