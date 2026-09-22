Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74AD0463B7C
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790120434; cv=none; b=f7oRP2ytO8TcZkkMF9sQhS1xp050fcnYy/LFLfxkb32r81Ro0Qtx+S704X/129C+lbUb82hbwz13SCZMmK2GmmGaYGD8DdFk15o1Astb89hclm5p0qteoI7xpXPP0zAgd6G27BLmiyfpuqamZNAX4bG/tPIsYrauPI+/OUWFYyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790120434; c=relaxed/simple;
	bh=mFRjqXIo2kSGZBZ6/G4JjhT/W727r/GG1sza3lgHYA4=;
	h=To:Subject:From:Message-Id:Date; b=p+NXVqxzosdAvjfm5RVt00pOrDg+8an6KBWnTgN0n25+J9BGQ9AxZzYzkJIgbbxWmtalVYWVYYl6tXQDHuNAoYB1O/2aCHWDYxxFDNP7FhPueY0FSo9v67pxWpIth6zw7NxlcVAUrp4masjhbZVVIWRBdIb+eX39iZaNezZeQFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CKD4NzPw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CKD4NzPw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D53B0C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790120433;
	bh=mFRjqXIo2kSGZBZ6/G4JjhT/W727r/GG1sza3lgHYA4=;
	h=To:Subject:From:Date:From;
	b=CKD4NzPwQYWCmlLYny4Sq4NS/OIT+qCvsqoMplXGR5ZbZSPnpWTs+N8DfxFIwlAg1
	 oWwrko+vIIsf1Beo5/YMtWlRCPhOpuNvera+/CEXm9vWy1Sbd/pGzjpdqGaJcSngk6
	 9EG1HgPw+JoKHasuI8J6V5HSiF4igKUemQ8ksKaCiGnFsOdSRD4Ko7AgKFs70OPc7z
	 wg7dctNcV0DTz2gpsZ3Rbbs70hwb0SiBDTWIIpJqFAiA/7/+xKxJpCI95SlDS0w9PD
	 kutYTJhnZ3B/gXo8kbcdXWM83odj1zIp73hPb+VsrriSa0z0HFPAbff8f6AmG6D6Jf
	 xD1y+iITb2GRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7D2C982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179012043369.14753.7799292658144609799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b59ed4fddbe7d4d530dad0c96d2c67a819c00711e25e61c7a0aebdb616f6e41f
Date: Tue, 22 Sep 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790120433
