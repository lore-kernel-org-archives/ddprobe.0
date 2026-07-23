Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F40363909B3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 04:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784781575; cv=none; b=RDzw4Eu1C8L7jKeZTjGoVnEpaVRw0rhgS7Hwz6od/sMBbql5QXYTF7Xz5iz/lEr6Go1N8o4Hz3zWyaGK0ePvCm+MQJ7q+HKK7r66F60k/CLQppdYN7DDidhszAk6QqOC9+LVXORzDFH+Aa56DZ4vksh4rWm5O0ySqo57mD1BQnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784781575; c=relaxed/simple;
	bh=A+POixPRcyqXw8KNeZixZ2IdGKe184+wl1YXUKPH8xc=;
	h=To:Subject:From:Message-Id:Date; b=AB+kaI7E9B3fMTbQVMcIY+GYr4xl8i4Q1bB73jPcq9AfdJFoRXoTgJS/k6SwoU9KH9ebiE1UvR97iTY0GX86Cd+C/y265JXaWg3b5C2dnQJ+b2EWksd4WXE2h4V55JrkSEvjtwZiXZKnlBB5t34PnK4opJq/KlZ8liTKIdd/Xfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g7MW1+YU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g7MW1+YU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA55BC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 04:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784781573;
	bh=A+POixPRcyqXw8KNeZixZ2IdGKe184+wl1YXUKPH8xc=;
	h=To:Subject:From:Date:From;
	b=g7MW1+YU4q+Cjtsb7VyIjOM+wPv5Z7InFIhgIZAOnH1fzevpSVSnTxlZr7hCaj9WG
	 t1TnSBjHL/A6gGeUL8EfDXfCaf7ziPx3PQ6wLuByou2mHDmOIYmhwQkLgWKWZhDguI
	 /8wiWxpQnAKpLDFST7OoYdI95q1YGRkq5C6UXWMfh+ooyL7vBblnnPnaMqIP2lQK6B
	 S8vFquYVHKC/vbqMHbVzz244/CyzLgwZirklSKwS3lw2MPfjg/9sNGMkaUzivJPoNi
	 v/UQXhHZ73eOc3sTy3iXo7OOxjm8sUO0F8nFqDYMYObObTg/mTgJX59G/nXX5HUi6F
	 +1tFbZJ23LyBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2B70C44524
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 04:39:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178478157372.23189.14266775731153195210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f155855bc219ae440c3ffe14e44c6b66ae714577782949d296533e28325790a
Date: Thu, 23 Jul 2026 04:39:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784781573
