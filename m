Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB4D2741C3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748422794; cv=none; b=EwrdKOIBNHgiyriEWA5ob6FupX73ZlR+1lS7YY8mAMBoh9xxjTdz0KRp5d7W3Zv5shtY+Uos5bpj6a2dowmj4WXbJKSh8jWfm3to6xG2UFqPLAKxHSZyWX59tuthnbxyutLF18La8YT64N+Q2a2DzuQWc6Zq2BiewN9ZyoR9yDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748422794; c=relaxed/simple;
	bh=8h+1tv/RerC9hpcbsmu+J+nYQgvFxLKZqJM/dClzcEQ=;
	h=To:Subject:From:Message-Id:Date; b=at8KlrsrPl380Y6rBS23VpTuAyd8+CEMlkoEheFOQ9nzN3R1gilL24Ln67JIaAWrhsn/UwFJkMO+qeKCU+eqU2D5/CR+uPzt4qDTO2b5i7OqxoVPSsgcLNle7izAIck7omF/RAmwUfeON3Q3ydIa/EAxQ0q++ZUqDYBYC6JvZ8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jm4XtS3+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jm4XtS3+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1253C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748422793;
	bh=8h+1tv/RerC9hpcbsmu+J+nYQgvFxLKZqJM/dClzcEQ=;
	h=To:Subject:From:Date:From;
	b=jm4XtS3+rU4KOa8+CMAv5tCJVOj3h7KUgucwq6Vby8cVfa0JXLazjoX3y6pg9Hzd3
	 0ztuXRThvCLvoI/ozgCXgXSuXYxaGX+LfJl2a76v1dYrksuxS3wIeC2IpRNJVhyuhM
	 oob1fAxaWwlqPSZf4uriCk3OtM5lSIW+y1fPjp+5hHXM+Lvl10MUSPgr9vEx6j1XwI
	 gj+767UJ+9XuDIDKla6t9xpZc43ZTuwfaip+zPunKZS78GqxBu6UMQ9DQSuToS1L+c
	 MWPtFzm23lzSLEkClpddR9xgr+KF1I2OlaCaGCJqr4rJwCKV+ZIDWUrBFIHcj08JzA
	 VsLspbhjgu80Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF4BC3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174842279357.822.6874322039284502224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ede5e403cd35eb66313630aad528cd1b2513aa74f201fed10bb823303dc0e0a
Date: Wed, 28 May 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748422793
