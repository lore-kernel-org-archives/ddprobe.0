Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE1542AAB
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726686354; cv=none; b=LzkR9WnixouAZl0sqHp2PQdRiYq4ED8i7fPMkfKGzaYcurPtaRSa+bztI14sbXdGCp+/qDdIlnsogtMpVHLqloN9XneLD7LIFzpdmhmuJl4m8w6PuleTqWxUI38oDHZc+NL8xCXfGj6RJ1Bp4WPSZ0U76g6TQA8Am1mW7aTbQN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726686354; c=relaxed/simple;
	bh=57s6DpA0fy2OyD86qM/wYXU6DIMdyK3+bSQoZLgd264=;
	h=To:Subject:From:Message-Id:Date; b=FWAvFyo/JxgjXqeUzFlOb+CMINEoGg6w/FypJRcjnz99hhDdXWIc6k+MVUN0JZvLyWcgwjPavSrYqvxzoW4WRAvxwZW8sXWBv7YOOBtE0JdDQ6FIakhJg+A1zgfwKrwEYjjUe1ZfcFnHnW5xhH8LUByk4Xycc6y86vJ/rclEqfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AQCrFXPG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AQCrFXPG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA344C4CEC2
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726686353;
	bh=57s6DpA0fy2OyD86qM/wYXU6DIMdyK3+bSQoZLgd264=;
	h=To:Subject:From:Date:From;
	b=AQCrFXPG0JWEuc3M5mSWBXv0w/uXeHoqy5xsA6w8rV+L0HzcJRbswuPb7aXzCqo5Y
	 nWKfgS5PfIjUsWwyq90MFnFPUTnloqPkxRb7S9kAOnLDnYLMP31PTn8GvVY10nbee5
	 Qd5jUOKr7c+E7AsZbV2XDBYpt5rz29uc2qcIreC1y3yLCQEMMlyz5UzUE9lD03IWZt
	 xNiG4UA1XhHkNcW67LKJ6ZDnEHe/fz0740KZNnVQnOVmu06BZISIdnrtdjEXfGl7YR
	 eaZsVepmgb3ulcRK0vqCm1wE9PjxvK9kdzDgPuR9ZuWSUuhXNM/sU7EbsR1l/BfB6v
	 khBATYkbSyQIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98485CDD54F
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172668635361.5713.11066892388997521727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e39e7456a75e5e2a4ca0f877e2a862063a888d334fc9bfce164a4cb7b1864d4c
Date: Wed, 18 Sep 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726686353
