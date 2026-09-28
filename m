Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 626C147141C
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790583636; cv=none; b=A+e16ltFycu2cThSmDtUTRulFByq8F+4d8gbGSsw5VzdqHPRK6fqn/CZbbD1x57iJ5ESxXiLfclPBiVxhiWXyxwMhSkwDCza7lKokeGUV917kUOZ0brHdKxEL+8PsAJ+ZNn2cqEm+/03FZdcxVn1FZZhZXjPBv6Ek16YKgGLu5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790583636; c=relaxed/simple;
	bh=2NT5aMBRyi6f/9p941p0l7luDBQ/nI1hWAw3Giw0Uvw=;
	h=To:Subject:From:Message-Id:Date; b=N7jIcgP/4BaomJo9rhywdmrcejwBbWXl5RCaG2DTaKBmF+0Y+IMMRqGYXmwdSpANQWJGMjmHpXGQoia6diyO7YB4z60bfo5oH/klR2UuRtLnXvWytXR9RRhGBvzp6nXgda8JjbbBzlpSDCHRCWQe1WRze28mDUU6Qm8uL563yto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V4ehH4nO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V4ehH4nO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDD53C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790583633;
	bh=2NT5aMBRyi6f/9p941p0l7luDBQ/nI1hWAw3Giw0Uvw=;
	h=To:Subject:From:Date:From;
	b=V4ehH4nOe++PRRggTurfIM5L07PrggH2u83yGgwFcvRwp7lquMzZSZmaI+lBPlv7Y
	 bceHuRcVhb01iIW0nGtFeztAUeIgkn3mqvpvQpMLWbCPeLSf67T1zd9obA3GWb80eR
	 kk3FRBbw0CSwtFVju9jnZk7xILBRXbjCL567Wgm9BlJNpDLUJWuranXYfqTFN9uDsx
	 hzyihvNy4L4DQy5NAkfj2+ZfirY1TWVQG1qM+ZLqe4ganj6I14qauawYHt2s9M067R
	 iDF+y+ZlQl6+/q0GjirL+TuTsssqUYVwzDPUCEUEiyMiI1yEGo8SzsjV8eoIgD6w6L
	 cTkqqSrvflPTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBFE4CA5FA3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179058363372.5367.11908084409478102264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eac84932f10444ee53efe1d166cfe86605b3fca5afea7956e0a85a32eb5bd172
Date: Mon, 28 Sep 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790583633
