Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41AA62D29AA
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 05:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771221294; cv=none; b=Q6hugzM/iqdz/7HfkVBYIVynEGjXc275QNErvaOyFkni+ELLReEjmj6Bqm7xB/k8wKayqnXqgVea2/7NAIcDnPiO86e0LdGzjbHsaCh4gBzlPF0fvRNVhvMACTpsNaukRpTru9pCVHqhz+nliBAf1tdxg4snKgf2zzZNbowm40c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771221294; c=relaxed/simple;
	bh=5Uc6y2E7bOVoW9K2xaStIpWDrVg0l1z0xSuEw/hX53c=;
	h=To:Subject:From:Message-Id:Date; b=DCN2i+bxM4JODkVIoMLYAtYqfiuciljnGeT+1DhdYtJ9JtR3asxnS22KMtnY/Okh3Bh2QJcuKy1wyNNNEGAr36gWWV/rxNLXEZ0o66VV7Yr6xXwRIeeIg4g5XJ7BnOrrhNbV48WcyDXzWy/b3idgA5KoWaeZQv/GZFXbHFvxK5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gSt9bw37; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gSt9bw37"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E5CC116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771221293;
	bh=5Uc6y2E7bOVoW9K2xaStIpWDrVg0l1z0xSuEw/hX53c=;
	h=To:Subject:From:Date:From;
	b=gSt9bw37ZouHKld8sYhd49c2dv5oIsVyAJFAECjt21909XxN9Fvy5NZ6ciepm3yj4
	 S4g1g+nJ4aoTqp8rH7v9pgvHpqMYibBQOL671SIJ/gOOC2avuV+K7jwboPhUtAkTeu
	 ClJhExaBP67L0h+NPKRz9gpyriilrCUFQArGbhMbT+fd9aUGRl58vWGyzXv4LXctam
	 4AiG7DBJtnbC9jO4o8+L442qfLS9r2BjfWxUnS6AwJsqNP3yd1u5dmYsOwCvRPr9bP
	 JUh+6NhxoyZGw7lJGhAFkydlPLGaLpWLWQbAhQ1knYwjplGLuXjz+Xk6jp4vfgrQ/O
	 ZhGvhUaAJjGYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B82B0E63F25
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177122129371.17257.7848778860456576643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fc41ebf9c3d41a24368d678c36f47345598990894fe0e18f018277b51f9a486
Date: Mon, 16 Feb 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771221293
