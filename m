Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B090368950
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 06:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785306634; cv=none; b=CiBMQDvDGHrjgiYWa6eWQj/KYiAb3aDQi59lL0lEtKMwKTga4O+4eAMqlO+/KUuJupUKaoAyEn7JYyCedGl0/4NyBuYIXj1ETFtNfqGxLaC1uwvyoYtCToW+nx+lvo1rjQckLSTps5inGwmuTe8WTgMw9i3SJxLbGiF5TRi2AoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785306634; c=relaxed/simple;
	bh=fW5j5bhrk6uTeAh89j4o26BNxFPmLyHiEdRoA3HHQOQ=;
	h=To:Subject:From:Message-Id:Date; b=gKKnFf8vjf8o/N5AVbycLn7suGu+/lsWRNykNnrRtVOREumR8oR1lyVyHkzpKNtMV8PyZcaUKzUFr/kOiQ4b3vDuUezOyIcUTIQaLOyCDlVS27UkFFZVKEImnNePbumtLTPB6Wlc6CgtiDzrsRDcnD2Bi3nafGNV8fLCAP0yCq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=msjp7Nu+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="msjp7Nu+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF0CC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785306633;
	bh=fW5j5bhrk6uTeAh89j4o26BNxFPmLyHiEdRoA3HHQOQ=;
	h=To:Subject:From:Date:From;
	b=msjp7Nu+6bRsfMQMdew2UM8U6uKzgGkwFZEwSDcIFE+9B3TOVJXLuxKE2k3gfqNwR
	 O7QfXGCKKBwM6Isgwc71orMWsXi0oFcQ0y9zNtZfH0AEulh8JS4E6m6x1Rrwdv72CW
	 zOi7PuY+cGMGD0FHXecWu3bKf+bTpW6tHZWysi+myAItXIREeRr3QD5WOvjXEyUVa6
	 aHu3tNe2LotMmZ/toN1wVhxWBzFQNHQy8DS/Fbc7GYYUMO2osv3c8IeCLujdOLWsxr
	 uDw+uVFiOJzcz7xJHsLmiBPhjAxJDXjdaAqVrueFNOGyarZhTQkVDpwKsJe7hYyxsj
	 0WsMO96I2EQ6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8590C53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178530663368.2426.15877985143271743861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e23191f4d9f15f01b09a3a7d19f92ac241f69c0fef721432ef0ca642a8dc4ccc
Date: Wed, 29 Jul 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785306633
