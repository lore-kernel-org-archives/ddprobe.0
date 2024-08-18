Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39ECF14831F
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724009754; cv=none; b=J1P+rSgH0f70MgHle1unHiWTJ1EtYHeykhlQy6qNiAsAd6BWDM0fh3qCwV10/DpW/ni8m1QBq+2LKSsfw/0IsrWvhGI/Fo5/M1eCABhRd/R/YLNe5CKBcCcpCtml6yY7aqboppVmuT9EnfFtWhdv1d2MlugPjUBfmxoO/V/Wtnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724009754; c=relaxed/simple;
	bh=5HGiSFjvwFtg6C0ld10jBHT+MzuIxXhMC40MamtH5C8=;
	h=To:Subject:From:Message-Id:Date; b=M1cN9cdIhTikrJxGTGiwlk4cgkWS0lLLG8QEC/8WsoMh8dJXu6iCVSWH91FPivOKaV2Mq3Y/mWyUWlKDavq8EBhT/VZa4+QtmQ1CDlhzCZL3f2UAp6mFxKiNqK7RQkNtzqips21q+md9HUD/Q2r6lczOyKLWTLvjfUNKC4/SFfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cCdWJ+QE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cCdWJ+QE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4F35C32786
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724009753;
	bh=5HGiSFjvwFtg6C0ld10jBHT+MzuIxXhMC40MamtH5C8=;
	h=To:Subject:From:Date:From;
	b=cCdWJ+QEjDx6Xbicb6cgSk0Xea8Q188g2MPPMvrxZC6t52PzMJHm7OibXjZmKCUWL
	 EydvMOxuOUx+81cCJ4pQlMSCGxsKFb2CsTS0bMSOvsJEQP+IKpQDcBXjua55p1O73X
	 qATDW2ltqtQP61D+9f6JBTNb60JWF7gv4wXZUdAWwoNYl0LMULOphJgIXOzZyQAlpB
	 W2J9nnazUVfcZqSuASsCj1HMmhIwN2RjTtZzS2Ri1BqSGV3pjz1rtAaWrAddb6k0aN
	 wwWSJ4uUDtjJu3bzPyuET7lzzgr55iBHwY96J0cne99kQHn6aEVVRzYiP4TqGm3LJ6
	 66uUuyjxv7iMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97392C5320E
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172400975358.8391.3596574108908072845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 855d10ceeba04a9b9158ca66232e263cba129bd4954f7867a7b685c939f8406e
Date: Sun, 18 Aug 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724009753
