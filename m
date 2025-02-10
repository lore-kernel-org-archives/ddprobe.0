Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D990252904
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 14:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739198754; cv=none; b=TmB5hgII0znE55yctGCPx8WzSehhSQax4MBaQZLRgDgKC9EpKhTWgVfZO6VVfqOL3v8QE18aJAEmfZ1wfxxB7/mVqZrIDg9pgvkRLDxbXQGPmxcsLAuvRKBoZKmRhZ+04hY5oWgM5qVdS16AKWofKF/G+iKjsa1+TrFWu+jDKJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739198754; c=relaxed/simple;
	bh=lww7vz9aeciWYoBZw/Baz/Ne73z6FV5IePPAjUUvsuc=;
	h=To:Subject:From:Message-Id:Date; b=qh2c/tERx1Y0H6OpkZUJUyxctJQH3Z5TkJRMlfHxmMA2/4fTR0Iw3/eqUy0zqof1ab+49ImTAjUSNHswYou4gUtbKbaWNi8MVmMDA89yfdRY+aF9X0mAPObn/H/YUYIuaBP+9eSzmZ+8llIhISsuu6JGPSaeb/nAFNLYLjWYHYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sqVZgabO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sqVZgabO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEE1EC4CED1
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739198754;
	bh=lww7vz9aeciWYoBZw/Baz/Ne73z6FV5IePPAjUUvsuc=;
	h=To:Subject:From:Date:From;
	b=sqVZgabOEJ6PJkp+kWYDyIAmnX334hVV4hI1ai0q6aOL/0mZYUDzEiM6pQYOdX2/v
	 xn2hj54KqD6ZcwuR2pMzz1bXKWynRb12skReZPuZMQgANat551FnZFJX9C+25u7mCi
	 UCdvHuCQJzeberLJ5QvcXfMGzJWZF4QGxauP3MGfMZjXDIFjfBKNmh0WDC/9KFdQDm
	 eNO5zEOE/j5iteRJMVZgoiiq+Ui0UsnN6lGqrdhJmOKpqNXP+rHPnrL9mLGh/qk2Rk
	 uppJI4I2Te/+T7CX27PoKxziNWpPhBgYZz/xBpu8ms+0lqJwsmY5TWYdiQ0C99Z6lZ
	 mIxQnaysG2cWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0AC7C02198
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173919875370.6531.10099748825331734698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d26cfb5e0212d091bb5bce8bfa063652b49178b102295739b3290f61c4f7ddcb
Date: Mon, 10 Feb 2025 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739198753
