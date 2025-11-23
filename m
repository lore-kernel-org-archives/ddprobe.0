Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2415F36D4F0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 21:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763932314; cv=none; b=QTof9QOzTVq+fb758ScL64nJwgIAYz/Lw5R9Zku5cAUHnkAKhrvddoweJk1uM+Qa+m1J5Klg8TrNJI9zKAD+ugEiMWCzmmZtHjpYayeXvjLhL7H205Atoo/hu0RK4dWBFQZmio8ouBR9SKKt2pPxnjJfPUYk+30bTVQEh56X0Ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763932314; c=relaxed/simple;
	bh=46HE5a/Jv7/NGWb44GXl6GPtiJcd02leh1uyI4nSTHY=;
	h=To:Subject:From:Message-Id:Date; b=qjwQNm96pf2BQyPycCqNF9Kt2cH+qLV91/fDePkUZf+GeCqV5qBZHigMXXjc8IRaiFZen7Dzm5xIuffvbS0P+8Livx7ZRIXyUEw4ZvMHaq+Y+Y8T3aD9lUJ21d96w5DKx0JUuLYO6g84Q9MbIRlPHsVI6akQ+YFmzvSNW5ZAk/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HO+/rDaX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HO+/rDaX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF3AC113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 21:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763932313;
	bh=46HE5a/Jv7/NGWb44GXl6GPtiJcd02leh1uyI4nSTHY=;
	h=To:Subject:From:Date:From;
	b=HO+/rDaXWauurlB1YvrKhAfYSrxFp6ourBXmtOtKgXX81KyIvwx2ghOhLDKLj4KNG
	 aJjkyqNp72/QA5U8o6J9NYR5oXUiv8uPifE7LVp0mAQCByETKs4i1z6rwoLjPHxi+s
	 pxFtIg/51JajrLPmtVsh5N0cRzKPtGt2OI167f1gBCjstSCuUT1rYMlVPf/yCjtwfs
	 IntKPvDAXAoRFWzKrwEeZ2i8YAxkb6q23XiDk2/gyXdU+s4Fu6JRE+Hj3llyZM2FOG
	 OpBXMCZApOP/TdIQbMxO8efPyzwPW0bx506cPzYIWPDtItWJ+BjNsJiExejn5zrw8v
	 zHu/eteWpHwCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97308CFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 21:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176393231359.8064.2169735249609185382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90a03869f1ff43ec7ceddb55371d78b45e197f2f30e49d8629e46430dabff979
Date: Sun, 23 Nov 2025 21:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763932313
