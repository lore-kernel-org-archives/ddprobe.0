Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C872561D1
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747723194; cv=none; b=ESx8/vjTSwDJqU6kI6zdNYGtNzfoyQSjWlF3/uhUHViB4eAI70OfUXtmchQIQIGKScfuOzGj+3PS+Kow35vVeGo7MpgJNirVYh//uX8YB7hSL7VozGvr19/cj+NNG+Srpnmd0I9stLLRaa3SmYw6/XZq9Bp+9RC1T4rkcHtMCS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747723194; c=relaxed/simple;
	bh=W6uS5JAuBraF1MqKn/9cyl0PrS0p/wtgHKsOjkla6QY=;
	h=To:Subject:From:Message-Id:Date; b=nNuRfeCiLepQZO+um/PVHduVS6iPoyXTls96bT/dGKFA7z8W3JJL7VDi3JeXMI9ih9C40nd0x8SPUhFS6ZryTtBKBydrX02KaN9e9HQUD9yF/2guqo5wVKT8FX3+aBjcOA/SZkWYc1mkn3h60eRI0QAzyTf2zql9P19sj/4LKZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BYO1m396; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BYO1m396"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DC8C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747723193;
	bh=W6uS5JAuBraF1MqKn/9cyl0PrS0p/wtgHKsOjkla6QY=;
	h=To:Subject:From:Date:From;
	b=BYO1m396A2dILM+yjlacdBti1mbbZpB5OtHYV99rYf33iDY+EKoqtk5jiXo48dwA6
	 wdFpmVZiCxfU/rv1b7FztqzwX1ioT4VmQP0F5edOpbEj5xZJ9Bbfa99RkBGCO20Wa9
	 9gVHSClf4j1U5me75JlY64H6UBcgjQa6k8vHIH6tNuQjX4eHAutn1Lr7rvwbFOK1Tm
	 qccVnqprzK0a6Fvrg57+EcxsUS1KTplHnvRTChSViSz1Hb9kIH98KlO5zYlLELKhb5
	 r833cN70h3zPS76d+Q7zqS1KJK7kvCz96YpXJvnt8iBa03DG1RHjFetqzpKqWbMWTm
	 rEHrefRsaZWWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9C8C3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174772319357.7118.13242397128376761753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6cd4e831b70b6b8133a1d6fe02ac5f775f16a83f763b75c1eea7be6fa29258d
Date: Tue, 20 May 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747723193
