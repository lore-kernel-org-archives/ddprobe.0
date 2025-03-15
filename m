Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447861DFDE
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 12:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742042335; cv=none; b=g6sZm4FOV1hmlOb9pm1iJC3Lf1JsSQiM8DMWiIl1gl/hGSAqFzJNPpetO5IlAF89fdXb/lQbfEUNUi5SFc0/OCaTiVDt2U1AZyEpczAcwmwDw2/kvQZOAYxmqE1+z60cfufZOwf0DRsB54eSoZ+05zyiSamOspQlCvlX2+IThTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742042335; c=relaxed/simple;
	bh=lG19NrMN8NrMb8o6FITrCOlelt+c7xKR8Op1AKN5O4A=;
	h=To:Subject:From:Message-Id:Date; b=C9Vy/PtxOzgF77YMsxhUhD/GuwJ+th3dpQCuO0CUIFs5AFzALn3D2GK2PjQ55Gfis2tGic93ZONF6BVzG/ziH7gIZ7Ato/SvnLp03WxUj1UedLrW0aFTuFWUJKx+ZtK3DVMKsoOtHpVdkgsAfpSq7zeqaMrCp/quuoKDxYsVm8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sP/67gLZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sP/67gLZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC22C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 12:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742042333;
	bh=lG19NrMN8NrMb8o6FITrCOlelt+c7xKR8Op1AKN5O4A=;
	h=To:Subject:From:Date:From;
	b=sP/67gLZhQRMlygERdGhpUgakQocIcrmeaeUZsUsim5qxTkn33mgyLhb4HsevWu/Z
	 SyKP6lK72eO1coGbqwV/23aMJzp1WGqpKY0ql4o02/Worh/3YT8IjrdwuqX0Q/gi2V
	 2wUrBgKXJpalyvyUmSs0RAUt9wm9fZGf4V4FMmpdF4qfBpwm8AE0eQ5jZHQQT3NHUi
	 vDx/5TURmrt+tiuum0gfPaRu4nmof/YBx9YfSybSOdpNlFXZXN8jAsjKAGxsekoosO
	 W5YPHDsJjn0Eq/xYQaX9x65Zja4XMkZb3uHcEUvfOeJyYwYgxfsbf1sgwrpc3QVsnV
	 osZs1uByo85pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CABCC28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 12:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174204233360.14087.4419573799995972246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 656a2588ed09ecb9456d08c5d0e5dcd6d0d70a24e6894eb6c3e386c5fee6f568
Date: Sat, 15 Mar 2025 12:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742042333
