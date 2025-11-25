Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CA8207A0B
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 17:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764091974; cv=none; b=q5UMyvIlBKjKWZ4ZpgHnP4X2Ff0Y8rUWLac9JvrHrIwigCtA+c9gC68wjuq4ykxy0K/lS79wdX+B4Ow64RfTOc9ybhjSYgfg0xFI+0HMz5ASrAf15JadVN35oz+XkLJqjylQldKhdMHwP6/iti1iQSUpPM8yN+BTKFhkvX0WSFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764091974; c=relaxed/simple;
	bh=W5jP97qHSdXC1bDKXjNgeCSP/7Vpciqa1MToxeNnwDQ=;
	h=To:Subject:From:Message-Id:Date; b=jFMFlOaag+SUt+D13ee/qH4Z0rrqrlHsorR1sEJxlyHVjfNjdrkL3UzUFGOEg+6vU5BYWuaEOz59JYN7AYxHGCwgC6NXgpYH8ao5lCKcXfjt1tGtLvQKNMcRFy8R34rXcxUIFYdMvwjh1KyTrjNGob/yVDIdOjDjbjrZ7vg0Sx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f7QHGCGU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f7QHGCGU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A190BC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 17:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764091973;
	bh=W5jP97qHSdXC1bDKXjNgeCSP/7Vpciqa1MToxeNnwDQ=;
	h=To:Subject:From:Date:From;
	b=f7QHGCGUDdCkIeIeN2mWN2bOoM5mGPlqww0EMwRbcGFornpXxpolCKD9tPiiOZ6PJ
	 d/1RJQlI5UKjio30yr6QWOQdusemhqsGlFl6gTnbMRYDebIO/lgrDcrnB3SbT2q91M
	 c61JX3fFeUeTz+o15Iu0uPeFiRbRZUcBuqtWJTdlykCAHqg9zrP87XNUpQi5DOmDWf
	 RPpdhZGSTBV49wExdqiI19zaFmvG6//GS9TI9gLW22u1IUz2CzJWbyXea49zAwjqK5
	 0i8b+h81PMajCdt6RzkA+XdGtVCj4HkYF4iUq1nRrSho1vV/aj2rWMrKFsjNsGPEpo
	 dgdWBPNxCchkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E95D0EE0D
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 17:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176409197359.26934.13165373683254291221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b382abaf2c571d244f77e119422373573cfbfab60493b49bdae8d50f90545f8b
Date: Tue, 25 Nov 2025 17:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764091973
