Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D601E520A
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 10:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780221874; cv=none; b=uMEArWGCb8R+SYeudZI+hSJkazo0SGaK+Ahnj0y+r1JQYbtYQD8X7h7FekmQVLY1I4Oz614awzGSumqvW75CcL5jEmrR0Wh/ZyZodXTzyDfikUX/lcC0RrZkqECKcINtzfBYFsZ2O9q4tCn9KabQDHO36YBhz3mPMDg2thrTu0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780221874; c=relaxed/simple;
	bh=5mrw3d+LAswppbM7aDpBUBMMUmWhGCrwYO7DAqYBi6Q=;
	h=To:Subject:From:Message-Id:Date; b=r3VtRUv81H2aQ5xwjS5jG8kZHPN52aMIfuLB/FmHRPTVNlDNkV+m5o8/VjEFYgCbZW/avHJoD+S2iMevenQtOT72SGCckqvpOiRZJxNywxy9uEWvJ9echK3AqowDLOVHPtbBdKR+THjvTYI7yy1AmvD8dkkkHAgLAl9L5y2LJCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q0vc9h74; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q0vc9h74"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0A12C2BCC4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 10:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780221873;
	bh=5mrw3d+LAswppbM7aDpBUBMMUmWhGCrwYO7DAqYBi6Q=;
	h=To:Subject:From:Date:From;
	b=q0vc9h74U/WA2VktYMNB5JUJtZD0ZArbi3pcYXckRqSTkPC60cwgTZTJ6s3MOUMLD
	 n9UcCqhzvdhYOWUPmMD9W3WOdVzr0RLj59PCXmjfbAL78pLvXcCtrwOk007R6HFcxy
	 IA1pjzr2s9OIWHHh+HcQn6ga9hjxu9dcHm5YpXHT4KO/ftxRpYmg6DPECOVowgAHuE
	 E5xNqja36v+0z2YlXwNGud1Woj8boAfOUWiGB/7d8vugxdzqFGby1d7q/l8Bvzg1KT
	 omCuW1P/1C6Q0DTRDsKv5Pe0eWWjmurnAWEb5hUJQgZRObAQ0mtpXQfdJMScqig9Es
	 L4irfgsqsVXKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6CECD5BD1
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 10:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178022187368.7414.15302940217176159915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e432560961906fbc43ff61dbf22588bfb9f24a070a62216750e9af80b0cf16c5
Date: Sun, 31 May 2026 10:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780221873
