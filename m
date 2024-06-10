Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6668D200C7
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 06:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718002043; cv=none; b=idhuVGPePmU/tQK2NT+sX+iVah3J5H/OIJ8ZjOeXtEhG5aLv6EMKHHkXxO8VYsCFKGw6XgvF/IRmB71EGsBmlPCXmxwIEWrUkZA0kOc4NMLI2XSNuRniuyUMWqtBRY9x7tXgJ2RtFYblJQL7oZfaOZ+5y41RmST40bgHF/aoDE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718002043; c=relaxed/simple;
	bh=5DBbAi2kcVfAPX84yhA/RJwLiwniDL8LGhZ5aOYtaMM=;
	h=To:Subject:From:Message-Id:Date; b=U/CP8IybmMRhN6kmT0bVxBifZHIeNbjxEL3Eh+FGJ3/xUyzsLxuZWQHLebYhc2w+jKzcS5+umqQcZ3yPMdY0S3JrMgc/xghxZgMvspNdi8dVgKSiuInt63Z3V9XuJhLo7lsvU9wn/GuTURVBpGut6sDHhfy41UR4cxt6a3U0GS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XKAskJZ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XKAskJZ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8CB8C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 06:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718002042;
	bh=5DBbAi2kcVfAPX84yhA/RJwLiwniDL8LGhZ5aOYtaMM=;
	h=To:Subject:From:Date:From;
	b=XKAskJZ9LETGUybxIy9gKECgPs5+WgHXcWC0HpXC0QLFMly6FUj9G6y8qzMeBx1Sr
	 fZ7bMUS0u4K1g+S8qYpz0Mu0oLYONC9pW7UAgWssJIYjGIevh5XTd0q2hGx5B3SREM
	 hYmSy2HYUDewy/1ldssyq+Nw6sFzzZYFysW8IFjLlGM6gEI3tM/zIpAiwCzEyFfHNL
	 2udH5BG2FRputCc5Tcqrrb6uSoR2GRpIraFSm1ZmcKwTvI9oHjFKYC6PNdMWDiy9ZZ
	 /h6OcG2ZjBTBw/WGtlGlcrwcroZahgifah47CaRn4tY/EXLY92c3N33KEM+M9K5TWd
	 GrsmDmGe18nog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C39C3C27C5E
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 06:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171800204279.16208.12020953865988153643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78d48f2456bd8165e6518410f82b3bb25639da1f01388f4b7e85f769773087df
Date: Mon, 10 Jun 2024 06:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718002042
