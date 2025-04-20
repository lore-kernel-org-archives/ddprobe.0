Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D84D1A3173
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745137194; cv=none; b=jN8KfU17kKIvZ1MUd1ADV8GoZEtdbx0LLWxU4375yaNvXXFnBHdJ0wfP3sF6NHzQx7y0B3m07zx3BSBVJP0htp4w/4XceK7+3pYPaoK7sKuZdrE4OR7KeKWBPZUejKki5sM5evVsiaLjRuZbp1x0gulEVY8IK0tiEC9oOJrA/d4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745137194; c=relaxed/simple;
	bh=aeQLHLX7oGSiUQW4qdAvV+ralHeBBk6b7jw6TwQjMcI=;
	h=To:Subject:From:Message-Id:Date; b=UZZgoWjxRI1IBF8Mom6aC12u71oeTva8zaJPfoLz3zHXsFDDBtT6cjUaTISs7wkPXt8oyZe2kLOMH2Rr0Xr0VTi++14AmG5JRY9AKfxlCo2Rqc0eWRozmGRq22GdDt6G8/+GR7iN85Par53GK6jTpVlr9yDk/7DUUPUUmyEIKn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J1SoekFK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J1SoekFK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B31B3C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745137193;
	bh=aeQLHLX7oGSiUQW4qdAvV+ralHeBBk6b7jw6TwQjMcI=;
	h=To:Subject:From:Date:From;
	b=J1SoekFKcaszsepiPGw5CGiYfX1mU0BlEC1YMybBS64LGakkN9gvjgVObM2tfiR9D
	 sw6M5v9gLOwb4qVeQVTxi5ufueCiUfVpw3eW078L5bLcP1CvtN/ge/wCyUJLEr4jmL
	 FAzT3yDjNZCwHCY4Indj5Z/Oi0rio8UnHDoHiBk3c62HMQDHFayyq9c+4E/QwxdEnz
	 IIJvLEKCNw7VWdwcgxRKwDQLChZvc2UhGqF3gu6pHGhHlQIxD0l2+q/0pRhxvEwHQt
	 RvcRKSwBENgv34sdjugX+uqNje9j923LC6isYnGsgQKZSTYjOS6GQRIeEmZO5YwUjG
	 E1GhRPKoYN4SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D139C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174513719363.27833.18111396892143153321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89b4516762adc3e38833def749f67d40eda5d9df74600691ca0db4c0c81a9875
Date: Sun, 20 Apr 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745137193
