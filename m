Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66E9738B12A
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790404834; cv=none; b=j4v+MLLysSzf5B8jv+HD0yu7K+u8NLL3rQMtE5Fln8pPZJL7jLT2XvQ1Ikcij6QAWAn2MNvyfIkGpyPNpzyvOSSt7t7t/Ziz0vERrfTPeGrzQWCrX5l2QAbFc0Vvm4UQVqLv+EBcVBnWRoQ/8V09ga8VfbXPXIY4r9ZXpJMi9P0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790404834; c=relaxed/simple;
	bh=o3UdibEjhppVjw5JBv/TxDxzqgIYmXWEKxabjsf2GJc=;
	h=To:Subject:From:Message-Id:Date; b=f6GqX6YMAPoGFsQaFQhtpM7YGoryMgI2lKeO1fIBniX1DLmMi4RvsywEUKPw3zFgNDaF3gmQ0tcpVyaSG7zsRzV2uBcfkIbM6jFtd1YoNz0H3e7Ow81L+unb7drx8tPqPFCWzgrVZYfrlcWsHFGvPjiRYVymwxipUqxcD9fwXgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f92/STqr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f92/STqr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7810C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790404833;
	bh=o3UdibEjhppVjw5JBv/TxDxzqgIYmXWEKxabjsf2GJc=;
	h=To:Subject:From:Date:From;
	b=f92/STqr5xbhtZBePUoYjYm8RWW6ly7q8aqAqhqT2M7tv1T50vIo46/t045nVH2p2
	 ZCk+/AKBisFhTmbF16ZBgZVCByAMaMjqT1djYI8GiPCnyfSvfRYEuzXiE3SFAvqmqu
	 3s9yGi5/fNf3Fd1p1PiOOqy9miLhHIYAd8mSHA+Dmdr6mCxsU77qJJjP3VsR5Ie0Dc
	 xNlD9HMAfbHCdqbWvNrbtsTe2d+yoegKgipqHhZmm6pxHyHCDpKYfhGXzkvxtb33/+
	 S0xuYD4DmhGHMlZVMK2LfsiaSOE9sL5sQBZE+/MRfPgvFVwdcvRjHhMn0NAx4RlKSn
	 wnl2c38/IFO3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B27B0C9831E
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179040483369.12325.13483341743171455090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e7ab242c5ef45c710fac6ecc4963ef1d9e60692a34db0a34216d1f1556751e5
Date: Sat, 26 Sep 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790404833
