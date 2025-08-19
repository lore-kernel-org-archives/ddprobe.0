Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C29353368
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755641395; cv=none; b=KpmfFNKM/2z1Y7LQbtkmEqSZ+Zhq7pvWir9l8oVzx1WeEeDSS1NYb+aEQfWWi29wVZbPuAu35dQGoI3nFFHJlgztoa5PVe/Z7d9pws/4WxNnZruFJc3iynNV16J0Pu4z+wP7ZfhKLkt/w7hc5GW3hOWopvDabkEuyP5qbWt1/lA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755641395; c=relaxed/simple;
	bh=F4uOSHE5WKHb8wZiEawAZD0kGBpM9IGUqDaVmj+v2RI=;
	h=To:Subject:From:Message-Id:Date; b=ZeJQyG119VZWCAYYSTJGXhsCHgxoPfZVEkz2PQbMxYkcWtU5AOURWb8KIsIO2+02Ep0ZWhPJbJxQ6jg9NrkGSA0EORUs+kjrWqNwy+Gi3zcNeil27jzpgBrPqYLcw00RKsgNdFLkGeRtztyj+3NHEG3R7UQ4YCuFdc+n/dLC7n4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjrehtlx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jjrehtlx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F84C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755641393;
	bh=F4uOSHE5WKHb8wZiEawAZD0kGBpM9IGUqDaVmj+v2RI=;
	h=To:Subject:From:Date:From;
	b=jjrehtlxhloxycy6K07LRZeK3yrxpEsHKCw04MNAQ3NQch+0IHsYCt6KspY+bGKBY
	 dex+1tQnYLUoBFcVowk+RscznfkA5o1C+8o7dlF3woJDm10gh6sGcnX79uOqlRPA7k
	 qBJVpuqFJFumqMChmy3NlWpyJ1tX9NhFNMUra+aj9/l1graY+58EiWuTUhuvmFxDmt
	 K6RnHCDvg1rGMfVOKtGuNbmCtgAEieY7A0g70zZ2C2BRZOLG/sTyGUc9tGYtI2wMe5
	 bPdvV/d6IaeIuRqygF7dktG8CVtfNZKUmOg8LWssuP/jQxLNUoZvYHjI4PtMaFLhBP
	 CH7BXA6dggqIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94645CA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175564139357.6523.2686644659045167630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b4a13793a4c9503ab055ce5a8f63da389afc77a55505424e4f95f69aa5c85ae
Date: Tue, 19 Aug 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755641393
