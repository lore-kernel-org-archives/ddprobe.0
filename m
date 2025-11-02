Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E5B6DDAB
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762044594; cv=none; b=YyVPzztfipmIBY0hpou5qHHyr13f/uHif7Z1VV0Q3n64VF3HGAjNPagAGNh247flIXyqz2lFF7Zq20+k9Ot3vGzw+0Yh+QbXtNi4/wFpxqAOtRScaas0ExdYjs/GhcN/YPq8HIzw25L2WEtfOEG4hwuFW2tFqz6jK5diKsPj+Wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762044594; c=relaxed/simple;
	bh=34Z/1dFCG3mhaDDA5y3B7lXLkJhk7PQsoTAUJCKyRyY=;
	h=To:Subject:From:Message-Id:Date; b=DdArsr7fqPfmDmUqrZCcj5IQNYL9rNHeQB1ZeqSNH8BnGkRrPyNpucFy2JoA8LRjYF5QHEeTbiiPIsHBXSy3Tz9m4CdQxuTsX/nJWmPJ0+luqYpRKntzaSK5FAac4QKemfBqW+R14YvAVb12yWy2nLIETnhEuar8KqFQsZNTsy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LKCtZ5ak; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LKCtZ5ak"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7DD2C4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762044593;
	bh=34Z/1dFCG3mhaDDA5y3B7lXLkJhk7PQsoTAUJCKyRyY=;
	h=To:Subject:From:Date:From;
	b=LKCtZ5akWLPBlJ55MFvnCdDLdaU8VgK4W1hFua8EPdXsBlCsuwxoKSBbwEAD6Bn6s
	 gVyPtNLDzbncTT74WYHtJMNvu0LxYEixdGemVWGRzT/M4l+fUuD8cOFHOTc0YFSlCr
	 J3y3cZD+ROpOFsYYN6nMMnkWVIPbzWECNp52RyX70kHMskaOyz4G+04RUGFSd9oPwi
	 sCzBUB8KoTe+8LvNVbxVVd6+eI6kDaXgquhwuuc5diBebTwpILVFoIinCz1vzU6uSF
	 WnKzkGDvQEMr3kKyXliY1RYWRD3+dnb+6+q1zWgmKQq7KDAGHr1j5QX4Q1OmSjHcLM
	 /osW6AvHzi9mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF54CCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176204459362.26366.12440262467506870302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b2641ed8ea6f5bac8a106bee64f4ef6af3dd1b1024cc27b333156e91f705433
Date: Sun, 02 Nov 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762044593
