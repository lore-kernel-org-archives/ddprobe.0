Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346ABAD51
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748839195; cv=none; b=lnCGkvhrstW5ko+ZD7Pwzfnqu1SbfA72LAVckpKv/lo0grOorOtJ+4cBaySd/2jFgBSoGIHSNA/pYQ95jXsW755RLrrFW0DwggwUmCFNL8BIq3lw3adDwUAIiTjem5/R23WmbYveKJlag6eYlH0LGRS1p8PY1W3JMnOW90fNJL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748839195; c=relaxed/simple;
	bh=Jd7j4bNhgWUzd4+vhAVoRiNzwWzUNnJVYZCMGDtjirs=;
	h=To:Subject:From:Message-Id:Date; b=RF+bFDbX1fLMZEzbKvZOQ696cLNKV8Fx2PT8siCJbeAX6mKQcpug5H/KDFlSuXOX4gXg0DcXCm1NasuLdW9tfkf/xUg/5QXa7JG6FAVgPphznaWOEfMEhga+hLolpTX0KiLlcp88jEmlAHEQqGoaWmo0ikYpvH7i6vrngBbIAb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i9FvQ63R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i9FvQ63R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F16C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748839193;
	bh=Jd7j4bNhgWUzd4+vhAVoRiNzwWzUNnJVYZCMGDtjirs=;
	h=To:Subject:From:Date:From;
	b=i9FvQ63RxcV7t0YJ5CpRQAKF9tTmfvyoWbDVSLkm2mm4xHQ3lekwwMxvbM+AYWv5G
	 +Zkr6Y8PEKs/8YTSzdYnelnRkmIoDtOUszqtLXLDMjMfmteNG18nYyp5MqjTUp7FdW
	 LIdt+VezYhXhq6JRMvYR5/6q5L71jRUWZ+caZlNu2GqjD68BvcGBpp3lYNZkb+ZLxl
	 Vb4JkDI3Am7sguCpzlT68+LQjzjx3RTmd5YKyCMiSD/ega8hLGgABUno+FmqA4ZyZ5
	 H5isSLQuursdevx1qWxE8SH/EwXIB/zHVvpgz9vZ5X1Tocmk+nZ0w1U0oyQ4dtKsKD
	 ZQDewG7ZWxI6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F748C54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174883919357.22638.6046811831289274646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1664c7713ac26b9e69cb395c0f55bf443f28eef1cef38890b82bdfaf19f8921c
Date: Mon, 02 Jun 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748839193
