Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341D21400C
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 17:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763919714; cv=none; b=sHiX2n2lMaYMoeBj0Jh5n+sEXQSeJwD93kXtAEo7halyDRaqRbkoHC2a4P2kiKzW/u7jQVN2KPiGfKE3yPukRmntadGuIPM3E+1tVZIJRZ9wd8sgdc+bAtHuh7qE/C3sxpAg+YD+PLfvlmb1GxJTccSef4IEo7cRq8slyz82yos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763919714; c=relaxed/simple;
	bh=okkYtH05wTZkq9pZ1ep9zWNzHdvtXUfcAAJaSmqgd44=;
	h=To:Subject:From:Message-Id:Date; b=kKAgbrcV5qfH+JcPVCobZPde/zPi5179pDaUw/A1IB29ALTQeZPGjKeaX/tNfFhzkhfBhbwsdg5oTfryPkc5N/WC1LwKq583hHFmGcXfLuNBiiij66nYRkcQZXWIKnXHeLWj6//N0FNggYFcDlAiqqQmXlt8rjD8UddwsfsMw/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OpxeucQ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OpxeucQ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32AFC113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 17:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763919713;
	bh=okkYtH05wTZkq9pZ1ep9zWNzHdvtXUfcAAJaSmqgd44=;
	h=To:Subject:From:Date:From;
	b=OpxeucQ8uwC1RHPv+aQyAM5Y8BhaJyaOE+frKcmHIAmeg/kw5vu5ydHCzpBL3qDzf
	 0F7cM4sFnDkgxn5a//YBL8e4AxaRmHwyJYc3JnF0LfdsYsY6JLlAnCEYY+dy8ZJizI
	 ozsiJP9EB6UGcSSdEBiSLiUs669LI+X6sh4tLRrWnIok6bw1tYNjcp0lx1U7ka92Tt
	 mBSfjV2XOD+qucg1bzgFBX8Xk3wEjgGIY2xLva8x00ns6azUhsOWx0cJUBjRPuSltp
	 V+rRVa0xdNJtiDu/u2+6mWPiBz5LQkk8fCXpoTzs1RP96OrWH+ofBVKrNxZd9P77Zq
	 ThV8yl7nV8neA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DA4CFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 17:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176391971358.13328.6307245842092447460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2118a1be40fe037902af276050b702efd0844203b0af6c3eca26ec68d4a3bd29
Date: Sun, 23 Nov 2025 17:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763919713
