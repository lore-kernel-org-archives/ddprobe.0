Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515BA33E355
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 23:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782172594; cv=none; b=c0ZDTk0RbCa8bDI2E9XaN6+E8klf25bDQjztHVwxpSqX5hBTp0+tVtJqn6hXmD7NxCJbmSzjYUeroakJfeReB7U27vzWJ0wGikhMbqBQfrhBvTA+TNC44ye4NyiqSsEUh3P2ZY9sUiKElrrgWnTsXa3NcXvGt+qV7pP3x1e9+CQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782172594; c=relaxed/simple;
	bh=ASNJ+mW0s9KCrHWEE7e+vyUO1fZ1qzJvfNwSxr2HjtY=;
	h=To:Subject:From:Message-Id:Date; b=GSba619G+6H6+0FVDvkuhjPLRxZ+0gWV7WSB1MCO0rBJgr7R595To4o2HkhTecceMcWBUyJSo0tTHWH1sum9FwFiuTN9WX65OzBKJ4F+VjFfk6fHUfpNKk2ExUtD9D/mvvWj1EZfnZGIVZhIQgEdm51ywqO31XhXEmhI8NPmCJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=psU2RzGP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="psU2RzGP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DACA3C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 23:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782172593;
	bh=ASNJ+mW0s9KCrHWEE7e+vyUO1fZ1qzJvfNwSxr2HjtY=;
	h=To:Subject:From:Date:From;
	b=psU2RzGPsy+YcOCFcMmyZpJc9eXPAexVVg9LkcVE9RL2He0nnTG7bBi6tXi6bzGhw
	 rXFPxYO/LoEM9V26Xw5N9Ux9+oKQ6Hkzcbj7JYirjCBovz+Mm/u1IF8UiBbHtXQAeQ
	 6sFKbHzpvjuhnB2S4GBUgZPVLi6cFlEv+SbsTXCvOvWk3TdmKJPx9kOJ1g8ST/gdx/
	 RsWiRt9EpBJ1KH8BKuEXAyyJ98d44DD09KkMgBBjgBuXAUxK7CRr5bvNIeXaP/e4r7
	 h1/3Ad94bQuY2OF6aw6+PKy6eF1vfSQqDRpW5BDDGTLpesqlOEuMXj6e3sENdPlk2D
	 YEJjab6wJgG3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7694CDB466
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 23:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178217259372.28166.4537551517529086355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60b1803884b8ff4a4ef319d2ea5ea0fc4771ad79c90138cc1aa410aabe37ca12
Date: Mon, 22 Jun 2026 23:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782172593
