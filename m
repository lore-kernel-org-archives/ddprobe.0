Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1EB13A3ED
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759598994; cv=none; b=Vnupf9+zD7kBzp/Vl8xMXgH6SzfHx+vnAcCva40d4EyvI99t9ODlOL+bIQ6PJhwtn/pogrGzRRpSsmTey1GE1OV6Xp6BhlxijESbcwOSIz7KGsDbINmk+Wz0mjT4qwAJJJ+wLYbnE3P3bXl9+RnEAB05RGuVUYRDrSVm9cxvn1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759598994; c=relaxed/simple;
	bh=YWXKhfDGYr8m27LNgtTNzIMJrbodiLiBlepDe9oaeho=;
	h=To:Subject:From:Message-Id:Date; b=KJ7VCg1axQQfnveLoKLiA40z76bg3QuDKaINzt4r2F7w2wQnU695dGmNby8bjqOC841mzsRVjlE15CfB4KRqnJA5Mk9uLf8hyRCQXR7Rb4fQaNYrsPBeSIM89pQ6PyZDix1yaqcV+z6tachD48pl1SRnQmjLGj7KZ5XeqeGuPwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CAYoM71W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CAYoM71W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0B8C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759598993;
	bh=YWXKhfDGYr8m27LNgtTNzIMJrbodiLiBlepDe9oaeho=;
	h=To:Subject:From:Date:From;
	b=CAYoM71WuU8ar3QQftdKXcigooOiWmooFvVpAFCI6NF4e6ee92KuC7ybU5nn/JDnP
	 Qj9mpqQAQntQW44TREjOLzpQBdhLb0IMhTc3vi/Q5fqMjGoYBRLg8X1mCVVMRqBA3T
	 cGTyeSMfJvSbTJS1G5hGG5E6tAzq4WRfngWH/fsmXUIyLHNsQhMcHJxQeL8EvJ19D/
	 jMisePgE0qf14oab2d06x4JYrUfxOkUg1Bji0kjyN+yQfMJefVFPOmqX7qX2m49P56
	 wBfaMiyTjlGp0pcYBzQ7Gkj6t6QnbNTldMAYCn5+/KY9OHEgTzAQx/sIT2E5dO/ms1
	 nDxQzrmMVWg+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9634ECAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175959899359.18398.11509351214736359010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b6efcc0fcf90e9e705818a5c5521bf55e83cf792c9fe59a8df299d58a9280bf
Date: Sat, 04 Oct 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759598993
