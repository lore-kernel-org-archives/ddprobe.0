Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5310E223331
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738820754; cv=none; b=PlQdPR7Lmn70f7cshU9yDgxwVZrQlth46AiZFRvC1Hem+w+2TYJ7L4J6pYArkvG6eVNLZabxdkldcXxA88uZGypyTxRhGDu3Fk+v28TX43WKiVCyXTXdKvxkX1Jt6xhZmwpkF97e/fDbiN0tqTwCngphQkq2hcxDWZaVhpR5t1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738820754; c=relaxed/simple;
	bh=A+YJbwKBnYw+NQDEoFIL9yQHFM4tBfxjFIHOd4bXB2o=;
	h=To:Subject:From:Message-Id:Date; b=o0PKeC9tUQGcg+qqgEkgCPJM3OOjc3EqXvWE/Ej5rXErg5624Rt/XfpO3B8sszyfIm6afoT/BnG67V+OO2maOuGCR8EhJPzFGzOdppbHZy4U1NPGrWrY6EAKWMLIW33lGnVdjowLAhpP+NTPsjLUSZXDs2z4TV9zwX9X/ILX3Xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=arCyAQ43; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="arCyAQ43"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE5B0C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738820753;
	bh=A+YJbwKBnYw+NQDEoFIL9yQHFM4tBfxjFIHOd4bXB2o=;
	h=To:Subject:From:Date:From;
	b=arCyAQ435mJnXke7+rV5MgcPX93quDxcHA8xiIwdop2zZ1x28AI2u+ePQNeK0EjWR
	 KllEv2qYsim2fsqEXBxuUNJGo4/ffjLWdx+RoWUmLp/yeeRMcpvQX7U6v5FwTChrKN
	 qMS2KsyhfbeaQJ1Z6nBvTb+r5rvktiEVngJXGNxSTc1ts0Zl8Af3GE+5kca+Cy6BlS
	 efS0A1BrBcKJZk45gW3PYSfztqt8iEdeQjLcTYLeoU1Rb4aOOsWdMV21drSe0s6Gyj
	 9hKNBjdWr7LgdX46MIhN8W3Zef6cwkgtOBieyG9fFj20Rd3eYYWFvu90Yw/rj88G1R
	 vgQkQsZyQCy3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9962C02198
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173882075368.24938.4951491088369551666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 766fc620fb9270f7fb9b42da074dfedeec47e81dd41a99ff44997482f2f87e53
Date: Thu, 06 Feb 2025 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738820753
