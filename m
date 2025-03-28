Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC9F218AA5
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743156594; cv=none; b=h11Twb839ZLx9tLW3SBXn8hlM6mxuGBsl/ekNhMvnZa0L7f3KBAdxmZhrZzYn3Cx7EIL2T3L/EKbSdXa0EfFN9VwM3elPDt19s6vrVh01NozqW2f2m5Mgiuj/u7MTNOC8G9mwg6Q6CiBIRZG8HHgWefNWeQU6xi2stTKT/OBj6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743156594; c=relaxed/simple;
	bh=+9rC7tad6HN7AoXIevTTUuwVlKySWrdhZhU4NSKfqiA=;
	h=To:Subject:From:Message-Id:Date; b=WRJDXrSasFtObtOhgJHXG3VfaWg1rmvYDEldKnYfa4Ntf/9nOln7hpCgVXBYM/6lAHFEUiky2ck98sBP92GtUmwZP/lX/HMsOD3GCCXcBe3rFSdCB/cyYU0P/PkG5xJFLCTVQxjM5Dgfpwt27wgC4k1ogAX8t4PHV8pk1gXXf+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uX3YWLPj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uX3YWLPj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E7DC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743156593;
	bh=+9rC7tad6HN7AoXIevTTUuwVlKySWrdhZhU4NSKfqiA=;
	h=To:Subject:From:Date:From;
	b=uX3YWLPjoJILcYtYPgLMl+2b1LrNsD4GRryQ7FnWgiMazJNHswRv7YMRtXKS1fh3Z
	 GsBmY6glCuBamgfikL1Si/S0Pmc1swNyr3vnGenWDMIOv8Y0w1fCST0C82oophJhIz
	 00wrMLGQmBnUxYz5Pq0kWIAbgCVQ7fYPFAMBaJdnrLIZ2jJek502n0glWc4xYWSGG4
	 h5AYbM6P4l8QMP8t2X9Cb6jiDvcH7lXuHeDm6/lV7I8YUcgdc8jGSRFn7Kn2BFovm6
	 YtnrYVm2KhC8Qs+2w+zIhVzvQyttGC4507ZSrRK5x2kR0Twm8Gnil23zHomB2tQlJK
	 7aEJLwQ/ylURw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93135C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174315659359.21426.6392324338819664686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccfdf71176e6949e6bb75b7da17d2e11ccaaf87c8343f67e3eb1e04ba9eda8ba
Date: Fri, 28 Mar 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743156593
