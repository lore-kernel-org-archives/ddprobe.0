Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3583A27472
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756055394; cv=none; b=HwP2lWxBye4RsbgiySdJV9q+gomryTJdGhykpsX2c9YFmJKEXQk0ImqBz3sJWYNfGd2GD6+Yg44WCogNCAYPn5e7uY84/RftHm7XsyQlSiqnEYIThT7PJc8X1xdRr1WBNqlHkZ0pAmkQnQAQ+d0snGrCMba82By4RVkvUYHnT7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756055394; c=relaxed/simple;
	bh=f0Uk6hUK/MLu2t/WTJfMmR3hot7QDw006g1qwIu8MJA=;
	h=To:Subject:From:Message-Id:Date; b=NGAePTDEzfMDL0EkT2M/FowT0eCI78s8xxl+fU+l+oKOVSuzHgQ5eKADTzHmadpmYkE4sWc0V3oxp94GkgUrOmcq/rF7E8qPURl0mLUQdfiNN/b5Z1cvunZCRR8z7C9A5wdcP3hG1W0mommUHLBAaydU4Tb1nrMiqoZlNKIb6Ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=guVb0VWU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="guVb0VWU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A5DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756055393;
	bh=f0Uk6hUK/MLu2t/WTJfMmR3hot7QDw006g1qwIu8MJA=;
	h=To:Subject:From:Date:From;
	b=guVb0VWU2pjd5+kyJES8Nk2qbzsrMA4uoWzDjHoCVRUhQoL+F6/OJuQqOZTiJxYMc
	 d/oZShV31BhRp9CLYU6iNiNc7O5q/OUv2LVW6aAUrU4SbmlNH+OPubdKF/1elbCYDl
	 KVjafG8uy60oZfkkd7Yt28s0Q7TZhFJ6UTTyYedgXYg4Sl0qmHOwfAJUDrH0m29QLn
	 87HoZWXRekWHUM4NjyaG33HuA09p2ftNm8jTkDO03ET3nbeMCNLU07iwjDc8TMIOs/
	 PkSrRY8hud5uakvMzUxnrdRipwVoMoJ4Fx6eYoA/UnUzwUWlFmwwYYhQ5a4qUIMu6S
	 Rrm+L+jQLHaYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C60CA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175605539357.21943.5913109529579987115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57af4361b534d91eaf035f6d6db09af86db12a6e1f6a4ebd76caf8fa878e1925
Date: Sun, 24 Aug 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756055393
