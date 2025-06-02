Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE57C2C3240
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748852394; cv=none; b=ASsiFSR75V5OiHUPXB2QO7bPZ7ZevfpxPULp+ouH0060JNHmSiqNjJ2oDPC+YL5kN452OvmTzzCLmz7vMvzAt6VFKtVkiOF7ZrX5pEeResjh4z6wN+V89CLIxFhdKtOtX9vf2UwgU5FIcnqKFoFGXlmkX+oEwXWST8OqGwN8Juc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748852394; c=relaxed/simple;
	bh=SB9/AoZ8APUgXK2ze+2JmXC45f1AC8WMt790Lu1fm9U=;
	h=To:Subject:From:Message-Id:Date; b=KyKwePtg+EwnaMBEdxqFTAvGSeaA9yf4ZrFCSLkDX4Qr36OYIB5feOV/fBq0NCuZhr/O4+pmrN8KkIaOQ2fp1ABvGNJIsEBuOqvgKK8TyDD5aIHIrzQkaa/zN1X2tXVf7cneokzJYVOfQnYXUTE0tva99yLxXirPfIK0M/4aHRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y/qLt0I+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y/qLt0I+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC094C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748852393;
	bh=SB9/AoZ8APUgXK2ze+2JmXC45f1AC8WMt790Lu1fm9U=;
	h=To:Subject:From:Date:From;
	b=Y/qLt0I+cKXK1uEPoZH3ktrjYsumL4kPjBPm0Oz/JS8GQxGnhSP8QeWmh2WhTyWiO
	 VwePXM8ApjkhUzT70xV0s7XVdh7J3+U5/0pXogfUWJmw+OWCNfs/et7+E9gsYYCBef
	 sqe3YhzoWzmfRIGKMET3R8UTG6JS2ORe3qBT3F6FLVLU1XMb56es+PyZJkZtVxu1dZ
	 SG23A+oOr7JkLvakqYD7aVxhU6OoJt3PIy8g8DH2SJL6W7KEdBOBn5W99HAgpCI4DP
	 ej3EFd+goZV8l2/OpYhd0RgbXAL+jvWihT+fPC+zfMIenH+X1YbDV15ga2yjGGuTT2
	 APs0qq0Wztu3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95006C5B549
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174885239359.13689.12419485201874093247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a02744d4c61581e8425d989a36022f036261d0f343250aa8c790128cff99ad66
Date: Mon, 02 Jun 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748852393
