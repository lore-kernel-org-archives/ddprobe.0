Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455B73A1DB
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750210794; cv=none; b=ULud9X1QFDDtfh0xMYyr1SUDTWhm1Be0B7Hl0Uz1k9ssxZJRMtXASGd7YKqTSYuFOFNQaIKn2XKIAGYkNkUc8QiNdgkwPcTNDkWOYGAx8pnLqfYK1JqRGlo5TnStirojtCHTBY7+SOgpNXiyA9F3KxgTnqHAjEV/jwiIS+WxYqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750210794; c=relaxed/simple;
	bh=EBwkBH8DG7AkDWpBl+a20XocCaRyJ/L7Zt+mXAlZdaU=;
	h=To:Subject:From:Message-Id:Date; b=GQ98v3WrqdxhqVfTmVjz1rTndblJtu5x8LG2Q5cw6T7349LLLhs+TfKOUduIyzYCzyY2TycZL088Fw/R7m7yEHTTnl/hwQFDLP2Iq+nloL8nB+ueT/I9J5PxY3eeU7VqYOrnZq8m56kYMh6qeVRUoYaqlUizmMfgC6Pgpa3TI2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I9i80UZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I9i80UZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED99C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750210793;
	bh=EBwkBH8DG7AkDWpBl+a20XocCaRyJ/L7Zt+mXAlZdaU=;
	h=To:Subject:From:Date:From;
	b=I9i80UZJDw0jxDeRZg6jXPRBh5OUOYIFC9rn0mh3dB01tKTqE5eGbtI8wi0SOxWzc
	 9agBSbGcg18G66e5D099A7VuotNuhSkAQdIB8LmIxlI1yTjWm4WrqqBjRzhcGzX1QH
	 QK9OumSqkGrWyvTrm+jyBWJeymSQwV+MLiS38MMDl8Hy5AxBm9lU/0hRhNdsOgdmM0
	 JHFCvbLoMnuiT0NgF0hi0LqQlFw+Y5CiQIGqS4szzlVh4o8la9Afn4mX0rKqs5Ee0U
	 JRP3O6T1d6kiRV5Eg3k95AYLWmPODgpCq3m6gkQ6HJhpEA3mw+olZ0nR6MiGezPwjU
	 7aE7Z4+lWMgMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF33C71136
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175021079357.10675.17885848944118150676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f77e5d121ab2f6dd3bdb9c606f83c18bda3eb193b99075fad0af477f759de96
Date: Wed, 18 Jun 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750210793
