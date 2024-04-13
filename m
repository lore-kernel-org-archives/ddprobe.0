Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AACE4A24
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 01:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712971163; cv=none; b=FNrPm5Wz77z6zLVQKZDZfNpxoRRLNf91OWSLDEQxKNB+iZcw6h7TnHKGpZuZApzSiBZmniL5XtDzM8ssQN0fITdju2pa0i4S5cpgGsXSzeBwf9SWUKDwUf+63O0PnbvrpH0jIwAuJuuDweiInwdsMR/L4a56ig+I+1HzByDfypE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712971163; c=relaxed/simple;
	bh=6BeHspUhINZiBlgaH3o3xz7J+Kmu20dxYcPBbfWTzJQ=;
	h=To:Subject:From:Message-Id:Date; b=oc2Fcc39Vw3yDx7oXltJA5ZyS6ZruIAOLzT50VKf9bYRHkkcrtQWr41+kuJjGikNpUXfGT2E1rNqvzoePWYa8lPask/fhN2Yc3i8wdLnC3r4e0WQXLHtCcVEOjoXgH+0WCYJPX0TFsJQejUxZ5zFZ2Gl0L6zd+2uyroZWYSp2Qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PcPx7awp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PcPx7awp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8B61C113CC
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 01:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712971162;
	bh=6BeHspUhINZiBlgaH3o3xz7J+Kmu20dxYcPBbfWTzJQ=;
	h=To:Subject:From:Date:From;
	b=PcPx7awprSoOgmIE7nL80bHywgTydM8C/9fm/wgffYyg/AafLpaQizL/P5qmqitsD
	 rx01L7PsZklA5wCqrOdblWivXXY9e0OChCXsC+ih4lzHDDrVQYbW+RzbAwlh97vzEr
	 rW/wdJD3NOPPfQQ2v7EErHSMYhMQtUtSCjgCvYVZ4ZuQ4XQyvxs80hFMrxPH9Pepmg
	 Z2vq3LKOwX4eZY2IMZFjDqn/HtqosGr67DVNXnCH/K6ir8a7LqvF+XA2/NOOYjA2Sr
	 sLgIzEuVC4FLbHBcXAih2vQQm00M4GsYrJ9DI/iSJzz+7+YZAlibcbNXsslGUsvsiS
	 dndsIzHINMyNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE21DC4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 01:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171297116280.8042.16072176681207407950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c00e68bfacbdc055d787f9c1ba1d267a6c0c7e1b3c3b8d1fbf2f8c6cbcd27948
Date: Sat, 13 Apr 2024 01:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712971162
