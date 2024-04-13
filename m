Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443087E9
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 00:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712968763; cv=none; b=en6VhFwOJSda04uesa++Iq7X7U77Aaezu0pubYjHNvVo6mxl32aRzNszllka8m8HuSgPF0NV3jkXpZ5Hu/1XgCMdqcYKIL2d471Urbvc1GRHAK8Z5cFpL/0ibV0vbe7VfsbKRtfNRnKBauo343lceXT81On1HX9Rw9flHXWilo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712968763; c=relaxed/simple;
	bh=2ijTTGHOdnYRySeRDllPrnqaizdo4g2HyLRLZoCnInQ=;
	h=To:Subject:From:Message-Id:Date; b=s9qgwB8KfXsmXdQ0jrC/Kdnk5QVbK5j55+ZrSF9Bm8JdvJEYxF7RkYDjUaLXxowfJxegMkr8sQ3chdQf7MGI845ZDKwNNwuzJUN5qhLsKDcDSRsEVFVtT+n/kNgu+vUdgcbK6WPrvQAZAmIiQ0hCL8rffwKOaMZWD64Pdb+tj9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fwdxUwfK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fwdxUwfK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDD73C113CC
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 00:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712968762;
	bh=2ijTTGHOdnYRySeRDllPrnqaizdo4g2HyLRLZoCnInQ=;
	h=To:Subject:From:Date:From;
	b=fwdxUwfKwwZU2K0CbCVIVFpFW/0NDtMm7OYkoqDWrifRsM28nHwubeI0SLAjWA9Xc
	 NPIHde0WNM1Dct41ACYmtL64QauQNVup2qdT1dGwnonOFVQ8xVvanidB8akn+YHIIk
	 SC0MhlBY82jJsWyggUfRNjin+Xc61CJv8nY2YNkgfkg7wqyLtQbABvwTZPw/yX5L6E
	 m2BivMFaKDOyf8KPSZLeTE68QLbW0FNgsY6awBhmvP0ZF7i9I3XeoKiYTEzR6BV3eJ
	 izTxppUfFmOmSI2NC2khrdJdeZKTEZ6igAdgwc/wtJ5vxkq3cE1X0GD5hNhfYNgGCd
	 dMTxPc+c5UYQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD1C8C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 00:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171296876280.32589.8748190694125063901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b95c3242a0e9ae03789ba9bd290fa1bffde5ca1108283c09d038317f674bbacb
Date: Sat, 13 Apr 2024 00:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712968762
