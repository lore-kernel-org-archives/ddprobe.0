Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08DE5346AC1
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 09:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779789154; cv=none; b=UVVq5o9LEZ2ngIKLAF7+tyL+r4aEWG3JOtUlmmeXxgJFHP0nGEkUCsx9HUkHQ/Rf0MuKJX4rZjbsonKFEBg/ov6v/tulgzZ7BRjDNiltAEgb00xr+nD/mNKoXcyvUpvVrjNdHUTHV8hgyOiJMOjhWDO9jC+Ow54crdAvNX9COqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779789154; c=relaxed/simple;
	bh=K30eIH2N+OnCGxG2Uo54EE5rMSvfOFSmvjyrjCo1BmA=;
	h=To:Subject:From:Message-Id:Date; b=DwKFFHlckQf9/1U/eTBTye5Nagxu6XLnxZ8thEKnr6EHMshBGzWn6vc61UIuvc6OEtqJ8z2L43pDavATUERji2GppR/Kp4JWSiBX1s3V19NUvGtScAueYoaYi/t5V/5b+YoxjRx/Ho5q5SmiGbZOVV9ItFKLICikeznXs7bIjfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aeIWmtl2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aeIWmtl2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A72C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 09:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779789153;
	bh=K30eIH2N+OnCGxG2Uo54EE5rMSvfOFSmvjyrjCo1BmA=;
	h=To:Subject:From:Date:From;
	b=aeIWmtl2AXFqA9Ga/mWWwZj/hA6O7kI/nkB9uHWiCH4iKbw+zrxAjQMN28a9PDvNw
	 zavURyYwZ2NLP3T9DMdYJWRa7derSBeWP325uV6ABy4YGJghFlbSlK8p+fJTjDwKbQ
	 QlE79ipmJjDuBeLmxx8y8KF0mL8AJtrqAakNDv+/EOaQxAW/Gc0SFjGZ0S3qH8PPo1
	 L/yet1qYj/M553YFsAsB0Tl9pugkb1oufT5T84mlaHQ9+jNFcTVQYx0SRHZ+WGWK2L
	 XPO2nDY7D4XU0g+6ZkhUYgVnQmx+nFTjqtVwO5SXVOSxqvlq+n5LG/lZNFz5Ic9U+o
	 jNOGMBEQGsZ0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D96CD5BD2
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 09:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177978915368.20074.2386991482406123830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 068a6bcba7049a630c56af95513da29d6ab16aa35d9df9813348bff352618a0e
Date: Tue, 26 May 2026 09:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779789153
