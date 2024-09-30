Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2D3174EF0
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727729754; cv=none; b=jHsKLpzGziR8e9wND6+y1WxRgas7MR24k/y+Px0kToup/DNPFXgztZSSkHrPYYzrVwh0fFqsWfrFY0FIySG6RRMLa1c3vEAft4/SDYfuhagnRwkRsKmRVxZ42t/JHjq+eRHpeYe8Sc00Qr/6wnBKTJ2xJMS+O/DHe5NuFFJFxaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727729754; c=relaxed/simple;
	bh=8Smm4WSVe/0xeyUQVR404Vc7J6jLzI7/of0OZs+3+e0=;
	h=To:Subject:From:Message-Id:Date; b=LC3hFHZIOp/mdNHPBr911/IBDYRKBRzmcsMIVNl/VJxDwzRJ7rFJ//DIpB3AcGLriM6V+Or3tU1ZAOxmZ6iG1eYhf/mPUjDGSYKT5kUTkKFo2P5C5bBlb+kvycyx8LBcM9WtJ7uMKkpVm8j7m1Ohdr9R4iM1h3uu01O7V6+ruc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lmhmetbb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lmhmetbb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5D1C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727729753;
	bh=8Smm4WSVe/0xeyUQVR404Vc7J6jLzI7/of0OZs+3+e0=;
	h=To:Subject:From:Date:From;
	b=lmhmetbbLeyYKfdJrWjVxY5hiaWMwl+AxYqqdqPEEaWkui4PabQLf0RPGldSuvra+
	 nKHUF+llHixmUmCoJV4ehMvscKNWkAM8EKa9kIRZeTT8q6kZdc5Av26kFGJiFfYQXy
	 ZpJBqd7jbQmv4tGsT2iK7h8UymK3udVFAKx3Yl5r2QtuiWC1wj8TeVh7fH4ieUPVW1
	 oT39I0O+rjr1cdvXFW4F7u8jmP2P/u1cbgMQO96eATIsagDqkp9gnM3dLihB4cAULb
	 nb3aqezF/dd29JaFh+HRZCVhMGGtWvQZZaYAah8Tg4YC/V90hT686FapMbZhiAw53F
	 Y/EYU60uADNEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D12CEB2C0
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172772975359.7879.15120625967195474907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 595c071a486751956837d67bc1140c91248b8790e5e526214922d8f33b69239e
Date: Mon, 30 Sep 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727729753
