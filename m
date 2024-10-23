Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE187482
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729662954; cv=none; b=kiWsaP0HfKSWe4oohc7BoIOE+yGiNPyxXPopbZxz2VvDBBDd5ZkWabf0+DVNjIQBHzxWtvBPHe3sxu6hZnHqMZuEHZV7ExgAuwQBVeBA95VdamIGcs33brBTb7VoFER2D3xWoTC5mksaupzYwF1K1YOy5jr12IXHE4CmARMD9oU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729662954; c=relaxed/simple;
	bh=H6waWMfQbxn2bnoBUQ+BkKzQGp2SVb31Yr80Kn1dWIE=;
	h=To:Subject:From:Message-Id:Date; b=XQHREMbCx/kC/YhA7luu1g0VIDoWAHNihEwO+Qgv7heqeiEG92wuDwtG/fhqE/1qGCgdtlJ5f0nWc4RHaP6GyChBW1MAF550jxYCE80xGU8mK3ietNO8Zlqsst6hXJWbdrKx019B64fdeEVSgXeIUtzSTXhF+YMcnmwpzA0Z9X4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p0SaR+N2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p0SaR+N2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB888C4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729662953;
	bh=H6waWMfQbxn2bnoBUQ+BkKzQGp2SVb31Yr80Kn1dWIE=;
	h=To:Subject:From:Date:From;
	b=p0SaR+N2U5jvEEH2pyPUbDmaM/kglxFHz6sZ9e/XKZcjWTyiFKQcbugwLCgGKGw9N
	 5QctyWJJQJ7/f+dlUpRV+TsTRiuTrYUURifqPjBovNB2PPrfG5MJFTPHHvTZDtitjr
	 GONyP3pl0PQfz8BBUgUQwlhij4tRqxnehwQDuXPZ4ZcZHclZJ1Fpnsqs2A1o1KE8Kd
	 n9kqH2Dz+nv9Ht94cpf5wcKNN41rv8SjmZ7fppLUieK29wuR6Tcb+/U1btnmFjymSb
	 j1BgK0znVQX8zI8SI8xmozpCOSjd3+ZyYNkqySr7Sltc7Mk1tSSJNhmD2zRHaQMEfw
	 bFEri9dgz+L1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A823D2E015
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172966295361.9370.16920504868721703274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 304435226567afa13f90663015854891afc9dfde079b1cd9ef553a89f9044080
Date: Wed, 23 Oct 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729662953
