Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ABE126CE2B
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766186034; cv=none; b=LDeQDHgW41ssxdqVLSReLGQGLTcheRGYtI87aS20oC5PnYpY98fZQUbJbad0xQGueiZ3COlCL1oFKV14G/Fg5vQpc650KLLmMT4thVJ7mFHWmN6uWVPekIkPaK7choMSo3Bnx+D4GxXjPkO0KPuYj6KbN/TSFLsE1hoG5xHf4kU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766186034; c=relaxed/simple;
	bh=aAhsjVIr0kSDYSdX+hkCVI31K5UIi6znTAKHWPE8hRU=;
	h=To:Subject:From:Message-Id:Date; b=j4zO12rWbI3xr6XLg7Rpme4drCZClUNeOFcySdn05Z9XtHzH/CKluUOXK9ZZS8ISY/MRYs3dl+gRCIUOLR8dYq6dS+ki1GXtuooQrMf3HokY6EamvxvAev4TuQ4aroZuKXbh+NpL/B+0VLneptYu9JTYRnZfmookeEK+LH/sej8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZmtX2ChE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZmtX2ChE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76BEC116C6
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766186033;
	bh=aAhsjVIr0kSDYSdX+hkCVI31K5UIi6znTAKHWPE8hRU=;
	h=To:Subject:From:Date:From;
	b=ZmtX2ChEAy+Md+ehBovssFh9ttMoXq9Bm0zDQa5Is+GQ3KOeq7dVvqWmjQKdicBy3
	 3DLpfqwr55fClw+GzY5uSnbdOxMjUYmw+qKdCbWPb3sm0i4STOmI7UJ86Olbmq/vvT
	 bH2cRThmykU1ySBvtjA1zfg+z1v/moYpM5quR6QVSLlNgIAYynWyvQAj2HSIwcEXeO
	 erHE+7tdxs2D2aBN9W1LTvK++yCF24bSREtoUUjbIM6+9UlxND6DRMW7ozW7W5j96Z
	 ARqFyct6Z68KWovX1XT14JH2SFldf6z9XI3FZ+ktQHOZJ+7LRQIzFvxWReFe1DObHL
	 itVO/tn/6uPcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937EAE668A6
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176618603358.17344.9590656181180407557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a0f3f04ee69dac7577bc42ceb23490262f2e8e5c185fbcb91658d96b161b096
Date: Fri, 19 Dec 2025 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766186033
