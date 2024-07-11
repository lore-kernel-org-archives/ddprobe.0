Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A43915ADAB
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 11:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720696043; cv=none; b=GNRYNaadT5kszi4xQxz6G1lzTASdEspmgE6/lvs7HmlZ0WLapSJTety2X1EwTeGXDnQcXggejkHJyOeNplJmpxDaFrtMyrdVwMomkmyoCZ//MWMr/P7FyfYivchdvny6Dm6JaL6zAY+Pw8KBArEf0MxLpWYXyCflEBBY/SLEwMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720696043; c=relaxed/simple;
	bh=ZBxur9I9zQXZcUN+ndyxC0ILNpRwmfeyB3k0lYUChh8=;
	h=To:Subject:From:Message-Id:Date; b=b9yf4jzhLv59zfG6bmpfNKc2EcE1rBUXIoWw61RPVmwVx6o/yt7t5lk8ybYWukg0N7MsZlzhXK0u+je1fUfmpWPdLvHVPSGS6iosSBK++q+KSdWM3w50D83cOsQu0rsjZSaOvekOusY4mdgezAFlohIYjT+dQxX4e2uLcx6hlww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bbf91Ebl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bbf91Ebl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D097AC116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 11:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720696042;
	bh=ZBxur9I9zQXZcUN+ndyxC0ILNpRwmfeyB3k0lYUChh8=;
	h=To:Subject:From:Date:From;
	b=bbf91EblzV4APfQF+YKe9NO32vvWlqS1dMuC0y/UWcbF0oIyh85d4UHQFsBAnkkvt
	 9ZArujHYN3mWBc0BLrv0zaROTIRTPdGtZ/msJ6KCUBBd7sQqDpE9eVwUyH6a5wvv7n
	 vbF//Q6/HF5ly3C2atUk4X3heH3z3ZNN6jWa/eeCOqOXeRa2VJtwfei+359YIezIrN
	 gi8mUVIAhh/EKRn0OuJVow9magMXtzJpA92X6KMfSDTZamXGC8VEQvkudoVYBFW9nP
	 OE53i/n7uwuJubtXn3iJocodotShI1D+nG7RsMBE7/HYU9KRmMiuGqEt960iN348+e
	 KwU5E4A1BwjjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC8B2C3DA4A
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 11:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172069604276.26147.14098676946861885557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb2f9b1c3dffe39f5c570112f7c4c27775400267cc0ff3e603d5572a47246b77
Date: Thu, 11 Jul 2024 11:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720696042
