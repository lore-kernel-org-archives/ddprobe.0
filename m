Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3E647081F
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 00:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739926133; cv=none; b=NtfVmS/x0TUI/wcXN2Hfius8AHA7CV9U/8agUIQ+whc4cC3NPl4zYG1ShuPsPY0vZcN72zvgvB/V7cm9uPxlOiR6nUZR7VjlAu6JCnujF4k2lphPYylZXPBnrlQW9R4N+YqE1QI22YCt2078ICfejaIbsKXnOSJD3bktC1LRy9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739926133; c=relaxed/simple;
	bh=ELbu+n7XqvVgrpi2dtMC8CYK+k0bXa3k/AC5kI7wFSM=;
	h=To:Subject:From:Message-Id:Date; b=AmFxFkVojkKG6ncIoAdY+FTvR4wnA8Nk1cUmcGXsXN6szRqOb/MOjZeGcNUuBRpdJLyaEy5oUfFAFKUup9+RufjYUUo0fq+EO/jsSdTmrSWfSkpTKHU0xh4xbhqa+F9LmawJo9lubMzvA29lgiKpuePPV/ZeV8XnhTOB66O9e/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DhqFmBFW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DhqFmBFW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B54D2C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 00:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739926133;
	bh=ELbu+n7XqvVgrpi2dtMC8CYK+k0bXa3k/AC5kI7wFSM=;
	h=To:Subject:From:Date:From;
	b=DhqFmBFWoLaIgodJs5UQdk4SoDBgnBA6fdT88euj8MPq2hO6XImgf7s28l0PUg07p
	 YIMMRo7T+4jQyp3iTnWvUjjNpP4+RqAn62uyCJHRLOoWVpqD4WCGVMpRWs9xBhAB7A
	 q4CiC833oTX3jUbqlmZw1h/2o+SnRI/d/q9+NdF9sGdIB6jIlcWXk33xv3eLrn7tJF
	 /A6BScRNA84C83x7FXAohn6dtgK2zMqDFH/NemHc2NDd7GmoSAoApiOS/w1ifK52Bh
	 LE3dXmzjvzcZJBjQC2zFqJpqH/SediJAgIpialalqJtQ5mYcgEKzRM4b12R+D3Sn20
	 ng0qPrfSNz9Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5331C021AD
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 00:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173992613366.27920.2457221244124785019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcc34b61e0094b90498d0ea214d1988318ae91c3acec53cf95834e7c01c42d80
Date: Wed, 19 Feb 2025 00:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739926133
