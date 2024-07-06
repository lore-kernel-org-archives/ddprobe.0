Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77D324689
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 19:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720293383; cv=none; b=u2+9GCBOS4FHEEbipxOoytWlPTJvHpAMvRaLCbwl9/YGNTHfHSzvVf9mRslLMr/laaetxyRJRJzrEM6gkkcg8hnjRfMxNJh9LcABd+xPylVO2Kz4V4vnUWcvfPco40nOPA3udE1+AhL0DCM+TvPv5zGPToZmgD8LZXM1joJm8eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720293383; c=relaxed/simple;
	bh=VXTdiZkm+TBLQdKetXOlHk+8B9Y2tyBH+RiLpGVx2+Q=;
	h=To:Subject:From:Message-Id:Date; b=jrXsgb8gJwALF/Ao+DosXHknmK4ASWjMz8QxL1xSAzwnWtjO7qCD1YroMSKco5ha9CR7cS7IAuGhyFPF0a9523lwGQ7xSW4D0qHg0PqI0kY3i0k3D8eXA2bU4g9W/jt2c0SmJaQy8cprXPdGrx/59YxAKXztOGwGOSBHeWo5D/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UN/PhSCU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UN/PhSCU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D668EC2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 19:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720293382;
	bh=VXTdiZkm+TBLQdKetXOlHk+8B9Y2tyBH+RiLpGVx2+Q=;
	h=To:Subject:From:Date:From;
	b=UN/PhSCUkwKPKAr71p5IeQRbaP9jLt5DUwqdxWERcz7UxRUUlXvlgeMhS6i8FgM7f
	 qupq70druGixyw6ATZOiHb/G9FVKNvRsANLC22fs08eNEszvwEUD1YA4tCGp7/42o+
	 e8a1vjoDPPPWcKGw4V36q5O9uM/82TqVxdvfnGh+pMCKC0oDjib6mR/XC1nmICeB/K
	 2qYlhZeO7VoL13q4ug1X+lJwVFK3CgST9NdZKdtmVUXVAcGeK48aMBj/j1jOyd0tzC
	 2yrQUmJxve6JEvByoWRRneyZn+EKbZTKUB1KstNXowKX9axiR99HP6OdL+Op/Ft/6d
	 o6s5Yd60cnwvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0532C3814E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 19:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172029338277.9597.4239960567629915303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aef418a79ee16edeb9797d0f4b79fe0039ac72fe68e86cf3fa40317c699fe65
Date: Sat, 06 Jul 2024 19:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720293382
