Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381545B216
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732786554; cv=none; b=P5UwpHy8AeMua8BDugsZnBsR1jQ/ivHKnSDKy8TeQroRJw2GDRiogrMvtHG8ybxIiLuux1LRfMi6znPvvzXx54icjYv3Pu5B8OTjaRUCkIpxtGfLRJOH3YcyH4OEWPPBA0SUWwG8QkW1qjZfKGLnWericOd9//2dTWIjgLKceIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732786554; c=relaxed/simple;
	bh=lVYXKF1puO/NTK6r7R6tRwVOSq9vJQrxQ8t4FNZTWAU=;
	h=To:Subject:From:Message-Id:Date; b=rq3vjTbkAgQVF+tpLXUGqZtP0yIuZtyYUbiH5p+FP/mFdojvfuLS6s/ADuEdPokmSsmGBE1Od+ESgWjZLpNyFxsR5KRweDiLP3g2QVQzWzwPMJ6edJspYnV8oonnKlKWu5UZ1uWA1rAKxmle2EdUQk3nd3Q1wAmsjn6hWx8/CWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e2SXXAz/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e2SXXAz/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB62C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732786553;
	bh=lVYXKF1puO/NTK6r7R6tRwVOSq9vJQrxQ8t4FNZTWAU=;
	h=To:Subject:From:Date:From;
	b=e2SXXAz/10HuOH6vt3garDcgtaUEn8Ydyn8hKE7UI80jwLVNOEBi6RLqSb9PKzo+D
	 oovATugnkYSEC5cLnD+aNneZRll241LwcbH238ltlR5xwMD6y7jDjCJa+vCgG5zLDI
	 YpkomzqrAtq/Bm/LulvLx+fQGDWe4FPlnFJ1l5NWhowa9HwuXAv3xlaaUJyP4gyTE7
	 63/ECeUdfRPZlDmzwm7EEX+Ml5+LPU63Ei1VQTckiT3/JGoMUhvttnLYaly0Dt7TSd
	 LF4SsHXUG2pfKgbXeL+Wjl082tHcDlpSSmijBtXQ97+CA9yi3By22gN0qRNVI+NqbV
	 3GOiM8v8mzIHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A77D2D690EE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173278655365.21436.1062130940821475853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0683159192fdc40d7115fb5e1dc6cfe7792838434caa340394aeba8fb6f41999
Date: Thu, 28 Nov 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732786553
