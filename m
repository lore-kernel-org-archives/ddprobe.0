Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4580F2AEFB
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 17:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740245937; cv=none; b=jZBRAR7Ut477YTbZzHsTcARtc612s2sIhHE07uaSojOuZfaKvE+rmBxM0h5OJV+BEsSINebJwDPmRabEvZi4kmFzxucPSF+3nn6UpHS7QxjvnL5NV981z6AuofCUtC7aJD6gQRHkcIX9wvbrYBxfRAIddQtgYkrAxU9CKbNJk6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740245937; c=relaxed/simple;
	bh=4BjsgtIw3ftGH1IWatNeMcdkIaTnHb7mSD6NxjsPRFc=;
	h=To:Subject:From:Message-Id:Date; b=KFuOJkCD4eXlI2sS7RPHHDQRrhuP/emunzx3f9vm2JBcKtCM0R8PklCNgpUJSTXMSzdcH5SXylnumrzzr5gjM+z7wCeOCSgpAi9dfPCfl4GASivn++UmvCM9T9pVC0RWmSrbIOxn9btqcitENHSNN3nIVz4lSjScIRAO4sDRd8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QUgDTDK9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QUgDTDK9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9ACDC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 17:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740245933;
	bh=4BjsgtIw3ftGH1IWatNeMcdkIaTnHb7mSD6NxjsPRFc=;
	h=To:Subject:From:Date:From;
	b=QUgDTDK9oqRDPOph2PN8vjArc/uq4Obu3LFoYietA4nZqgpvsct9KgImK4jKuZCM4
	 YxDTEa593ko+Lq0xnbQDY0n3iHhWnX+/7wlM5yfLmTCh7O1nXY+qf1tAfn0VOqLfHl
	 7J+yY6Il9dpHFPsHVeshKmkumS+P1g0gMf7E3zg/4mWLkRr80JS8miDlFuL/+Jki/B
	 NhajFMkZ5/MlMRhPLOa3jo7Jjy20e6vwvgTW4WZL/CrXs+Y9yjgDvuFp2yKVqwFMKU
	 TLtiQ7oCpJM1PfMXKCm7P8mmpIWTqoV+EaXzqOfjuK+jLupOu58gnTqh1T8vWohNA4
	 iftZkYfK/5woA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91154C021B2
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 17:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174024593358.8661.5468038502403375888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 523210b8f0afa566e7fa491feb40c96f08e09be51336fa0f4d56e5099efda835
Date: Sat, 22 Feb 2025 17:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740245933
