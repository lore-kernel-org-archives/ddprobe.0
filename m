Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB64231825
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749640794; cv=none; b=qhD8RDslPJb/F3BUKCw6dDm5Czjmf0fqQRWz0gGbLzIfVvcTgBqfnHh2p+56VVNIu4NSC8ZDM/5n0wxwiCGjqIkd0lDc4QwZ1yJ7tI1H24vZimvSmrS9QQrZXo7hbbUZ/IhkiWxWVkh5szwACOjZD8lP5F7zQGZIBH2FxU08lys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749640794; c=relaxed/simple;
	bh=qk8pcYGGSTetvGrQMKH/sb8xxWvUs74H3P9SnqJ4EMc=;
	h=To:Subject:From:Message-Id:Date; b=CNqdf1hZksHjpPoPjnTGoa+HB833Hhb+DrF2GOOvA15NayGPfBAUNRe3wtXr0T2mUerxQKdhDrwTYbNNcM+BjLaBzGAlT/O9qNyV2ZxsyB95FD6s7LmMn12zzcWySzITufdshg0TMBo/OCIy89HCnE6ncwqMfK2yGtb7MYQXhoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOsh2iRo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOsh2iRo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6E39C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749640793;
	bh=qk8pcYGGSTetvGrQMKH/sb8xxWvUs74H3P9SnqJ4EMc=;
	h=To:Subject:From:Date:From;
	b=lOsh2iRozUjU0B4cMt5pshkwxnMF4FuDo6ny08HkdnZKfHwFM2l4Kx17VST+c5GTm
	 9egVRaNFen9lOlHEqL9l6rGycPDHM5/ga7sp7lknyAogczN0i4WR7DBvl0hXgvGCTE
	 cxjxL/f8/Gl/iPJvjBsPUo0/0WQo/k+7xb5kkPzJvVd7Y4+GDFpOSTn9fePXyMGpzv
	 Ai4zR++irHggG99qtK4p5Ql0DkHcR/m0pSIBDSpJHbTwT+to8rOR3Nd3528D2qiOqO
	 kwUJFWPABugC7KR5hFJQVXGIiK9pA6potOWHEYiEE2Wsc6H4nzF20dMuZkovCM46BK
	 xAbEfkYfr66GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E46FC61CE7
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174964079359.21167.10294894369627668765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af0ebe20191ae2ad6c52b65ae82ba90ed411bcb390d3f00429edb42247d07bba
Date: Wed, 11 Jun 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749640793
