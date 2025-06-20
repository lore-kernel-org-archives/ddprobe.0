Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A88E78F39
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750396794; cv=none; b=D8ULDECfVAMZmz9zfpaJtj5K0cQ/7REdF3cvgFwRcZBvXVebU22evRn7YHZxM1eV+TowaPJ/7WQzSqnW9rk58c43lzzRoJOzdoqaXumxGIqOrS2cJEh+gqruc6xzOaM2qK64IlZXOAfAeJRbC0ARU2QAYT15B9Pr8TwELXBguUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750396794; c=relaxed/simple;
	bh=1xX+ZnxFk4HiMJQ4DHbNQpfkWXrrB5lbluuw5DnzoU8=;
	h=To:Subject:From:Message-Id:Date; b=CFGvcqx5gUmVt/ZoIfiIr7n8Pu4w/Myf6Db9GyduXcAm0CvTM03XaKeeQhfE9JKcU+S05vbeCxlDlm5UUx7YpfeYtL00Km5rSnGlsjZGFTYjZpy7jmD9P6GERVDjWuu9bkrUm4JePdZScqJrfCdbc66GLFpdaIa0rZ2psBOEr1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rFAg/qsl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rFAg/qsl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18E4C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750396793;
	bh=1xX+ZnxFk4HiMJQ4DHbNQpfkWXrrB5lbluuw5DnzoU8=;
	h=To:Subject:From:Date:From;
	b=rFAg/qslNy1I8p1d0r9/WDPmrkNnMAb/xVLQsWe8ujxg+gjxzv0o58suHb2mc7mRs
	 UKQKtgTpq5jTog+gWJXFyviskB594Vdd91C3+cJa3G3XRl5zHCxTFXU8Lkky9K9iYm
	 Qjg28QNvI3LiJuZGhD6m2X8c06cBxE+7MHQK8qpxbaCbBMXoi3c6t7QIwFPEjLExEL
	 T9bUW41O/yxOU5YBbZPsLipcQWcmqwnhC8D0Kgpos0Y60E2FiT0eImHJqWOFY1FfJq
	 RKOBfzWlKBCo6F7D44DCXS5bJMY0W7WqKlVtA2Ji6IPZL09rgeUabfEyx9ppOJRz6W
	 4VHlXk6Rquhfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91012C71155
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175039679357.18348.5279746038509719825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a7e2c9b5703c5a230f4b30f282b19258e49d2756a92cedccf1397daa39cdafe
Date: Fri, 20 Jun 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750396793
