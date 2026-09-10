Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512C72FD69E
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789032034; cv=none; b=nB2DA6QRvAi5YIl9xrzufbZ1x7Pp6o6V4GSXS90ZN4cSv/Hm6p0fU9OfDJuOkrlx+3pFd/Nybb49M04hs+yZ42DBhfDUk5oQ2uUf0OtPAHULtzEBeN7C7yA3c7HF3SoYk2MY8L8Uz7hPAZh54qnHzflk/4i1zIMCojOwE+76hKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789032034; c=relaxed/simple;
	bh=ZihubiZHPN4IZpvXm0o3tfeSiMJ4JjWn/p0E6K9SmWY=;
	h=To:Subject:From:Message-Id:Date; b=UiU/1sPPnpvvXSVpPwGAm7ORyLk14NzGrnVSLwaLI9+duVD3qtXBY5qrjCfnPD/LCjLntTg8Kjq6aen2iSJvHG/aoXf4HnPKgMm+zz28Ybc2lKhY5JdqIT4gwO9qbhRgJgWTyHeFiLIiCZX8kTnbgVAKcZm6tJW6PMJ3cnsMAow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t2gV+HW5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t2gV+HW5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAEAC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789032033;
	bh=ZihubiZHPN4IZpvXm0o3tfeSiMJ4JjWn/p0E6K9SmWY=;
	h=To:Subject:From:Date:From;
	b=t2gV+HW5Gk07ARbcc9ghvR/eOvyCubq3G6w6izFWyagfVWXz5316Q+UxErYKVOWz3
	 qcVOhDxavTLfTKZl7la3cj9O9UBzGQ7/B6SGSQhw3ap896TfOXfpeMkbAfAzkotC03
	 t0bZINNjxWyGJxBi7q1J+UDe1UrNRSLudGbKO/zT+qpqtC6IQ5EZ5zBdRjBH0+7yEZ
	 sqh+xMd/3J86MyGd72CH2m3tQlkPoyNrMyI2pClrYsgM/J4aw9CrCwMNYUFOgBZlo7
	 hyCq0U3xlWVGtBGW63dhYy6KvqT8Sk42+CHkp7uqmPwxEDFK70aVs1EiqV6rFNmD+o
	 /HopyOlRc9ABQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0C2C79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178903203370.28680.12938123069037278710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a793fc7b97c6b58b419e2cbc915e8875012b6fcd5b88318fdae6faf242333744
Date: Thu, 10 Sep 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789032033
