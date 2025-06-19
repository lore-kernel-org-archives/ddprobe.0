Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3743221FF3D
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750375194; cv=none; b=jSiSNyJ+8pmfrRf1wtqqc7HbGFjRTemAXfbpF8JMo3kEzAI4In+maSajH50Yw7hoTGvBgl7Wu3E7SvuYx6KockY3QrRrNRKc6wnG9FQbzrULxCW/JoiQa0LXWEsghGY2qBJe6KLoQIFnF3sh11to2bJqthuY7+Jb1PIupI4V/OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750375194; c=relaxed/simple;
	bh=urAdgqz6+rl19fmAbRKQGf56MYa0AUucqRx/de7MC7U=;
	h=To:Subject:From:Message-Id:Date; b=TAb7LDBXvW6LKvee8+aQ+aSTqaxR6LsSaDa8K7V/aAhDni8A/2hesZzb/FKv92eszoCyAUBvdV1Y3nJVGhQniIEQxaJmNKL9/o8vZ/xbRqTcA99C6k+rkSJPaxfuPV81flT95vbT6YWU7UtzohXMFt5RuMxiyCv/Bfown4IjKz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k7apSL71; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k7apSL71"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD4CC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750375193;
	bh=urAdgqz6+rl19fmAbRKQGf56MYa0AUucqRx/de7MC7U=;
	h=To:Subject:From:Date:From;
	b=k7apSL717eT6TP009Xxe80YPxrQsF8FO1cOInm62q2JfsVzllm1eAiUQe40RKggH3
	 18rqsbIX9ikGlSiIIK8xsD2O/Bic42SP71kwRQFB41v2t85zm/kt5sMCFSO1ndGhPE
	 CyNh1E6pT+qCK6bzoULSC/kupMLqWnhGAGv6eEfDjJtEUAauLVOt9tbxlXCxbIQKFN
	 hR1N4tgq44JtWlh9E+FcOEuLbeQXZfaeWlE6BzHEdMhpUJikp1OzZdB6sKQLHVTCw9
	 MHwjUDR07NoUT2vVlHFarFejbREt9x9n5mCHVCviyoUeaaM1iOvDSqSSwIV0uSUynV
	 5OEvm+oJqLENA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3B0C7115A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175037519357.9220.17646735715125177886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b8e6f21fe59e56e491063236af60d31f5cebdaab3ee7a677d251926ea1797ff
Date: Thu, 19 Jun 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750375193
