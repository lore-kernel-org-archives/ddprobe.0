Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 580A22BCF6
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 17:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716053543; cv=none; b=a5s6hx6WQ1VmledvNEJP3Ywob0UrfKsehVsZhtmsKa/Jfthc4KrtUIwfXY1A8ZLZpUKLCi5ZViRKSZGSnC1KP/7T04rZigBoJmJ/vu/bND2YsgffKAGGuXdTvKHBmNW7jLPxTzACLzmLmwgq1V+ZgGQdZB2HlHIeKQRq5EoAwk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716053543; c=relaxed/simple;
	bh=+b5QbI5NJsOEdAefbAJqDYT6lkH7I4kJ76qgqtax0Ek=;
	h=To:Subject:From:Message-Id:Date; b=IixDhUJdX6c9RGtyD3DSwUcN5WmBRYUJxxT60ptdSsV3lXp0b+xDWHvbZ6cvxWAHmuUOgNkSUxRxVhqsvjRuXBh8GQ8zdUc2t+zPHXkT1RRcyROM88qI9OOdPjQJ0dLThIzJypFdZHmEFFvoz8gVH9NGbDHPL0VB0g3bT0YHfHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iWYr1nZ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iWYr1nZ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1E5EC113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 17:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716053542;
	bh=+b5QbI5NJsOEdAefbAJqDYT6lkH7I4kJ76qgqtax0Ek=;
	h=To:Subject:From:Date:From;
	b=iWYr1nZ2LuJCd22rUsLJJIMOgaPtylhrg4dxKk0EExEKSSYKdMSnYhIKNhrDxIB7/
	 cMPOLNQflsfsXr3LvE4xC001udhlmoMUoi5cc20jtBmNr5dBkbhe28b0S/S3oV8d/0
	 xWlNgBuY9T3TEeyWBGj9XUN+vCUVVlrxg+Ek/mM0rky3iBSBhrkoHzpz9xnj3Ezt/9
	 WTjf30dZ0HZlc1p2C8fi8z8JuLRQCCSQD8Hi7gZh+A7RIh4I9jzWxkiuff27SKJ9lF
	 RfTE3x/G91Zrm/GdFA7hBUmOx7eesIpjzNlziqdmJciBrrROLq68PEXOGT/TZZ+I3M
	 CmvSjE3hmdnaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC1B9C25B75
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 17:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171605354282.22751.925128803214679429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e1e1e86b74aa034c23dd2fe22adb82e09f7b8e35d0de9f5e6ee1496a1cd570f
Date: Sat, 18 May 2024 17:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716053542
