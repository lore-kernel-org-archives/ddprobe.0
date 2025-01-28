Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57F18D2FF
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738023354; cv=none; b=HpdF5Ip4yJUW3rWjm1v3bwAJtXGZPWVU+XI/yD8xZjG488hQvt5lTJ81YgIS0loFGcRTlTWt/Mnrp0m8YsS+kaM8Kf1dGHIcxJlqzQ/6eiJRIqexNZw4m4oFx0rRT0jbbPQoqRnjKM9Ko1m/dPhCy+Dz6dfc/UC4nC10nPzD3Y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738023354; c=relaxed/simple;
	bh=2tgvat2fvaQdHlt1MglFVdDRaUMXpF1Yi0FP2OGftcg=;
	h=To:Subject:From:Message-Id:Date; b=rRjlKTc9UdpwXgacRuCrQgO/F/0YhvM/IuN3+k/ligeRBKSn7UaMNSZtCLJ8C+nnJzpCXyrw2CZOnetdAz4pjtwDOPZi7pIKPER/V8C9YbuaBScV1FprknqokAVHNPD5JEWU8POj7uZUxN0pEoBtHM9kXjd6tSy7XN/HSc62hjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bv12BswO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bv12BswO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9DFDC4CED2
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738023353;
	bh=2tgvat2fvaQdHlt1MglFVdDRaUMXpF1Yi0FP2OGftcg=;
	h=To:Subject:From:Date:From;
	b=bv12BswO5NlSQOrqaXi031A+gmM0jKvQ7dquhVVj9p8upcCu7GZnxfIglcdfUGks4
	 HTqnD8vIz2i/Gua7MmUAR0pZw6ZDywe25W3ixUL4Ukl0+9cX0gu9letz/CqkreQFmq
	 fmcbkJPla3/6uivqhYrfJEpIm2C9LcMADhN3VmVhh+muf1POEcASrgWsAEVfQRHQ2c
	 3n76J8HmmUvaml83etD5YUIG7Q47ICGPtyRgAyboDoK/UVRFVVVEQD8ETYz0vTroG2
	 oXWExzLrJXX8JgVXiZG933MM17s7kvSHpXPqhbN4zJgMvfcL7i4w+1zKeiB+pSMXem
	 giUrroU92G2Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2080C02188
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173802335365.11766.12152598010546285889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6e04d9a3f8daf5f434b9fe0445d84d4bcfc13047828a361b7667d8062e6df6f
Date: Tue, 28 Jan 2025 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738023353
