Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1127B358D37
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 15:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763652114; cv=none; b=U3A9KiB+GbCCuqNLiGdXaIwfORK/h/3edxB30ZcHaV5gZanLaZLJyxcPW1XwQHir4LQZcZJVoMJfC9CzcobF9ukrOt2iyiIe6P36SJZ7tmdQF+WeoLV5i/j66GMEyAyEg0vzZjJw8jRTBRco2vv9fNzha+OMaaOEhem0950WV4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763652114; c=relaxed/simple;
	bh=sk2eT/MJoPIHt31SQ7xK+AFlFik/jUZnVMapPas9Eqk=;
	h=To:Subject:From:Message-Id:Date; b=cssC7K2XM6aeEaO79x4nyAmBWr0JMCepnAFGd4yN2rm18tMXze8lwLdK6RQFr7ka6rvgFXe5GRZzsNokWEt7F74jGkoFhnOr8FYQkoRQxC67jP0ibAp66G9kxh/yEeUnNJZ2inoELiX8cs8oCK7T5K6ulXPJfvCzvtzbIWDAyhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oaJ1w+hj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oaJ1w+hj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A431DC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 15:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763652113;
	bh=sk2eT/MJoPIHt31SQ7xK+AFlFik/jUZnVMapPas9Eqk=;
	h=To:Subject:From:Date:From;
	b=oaJ1w+hjE2SH4LpKtiwqqr7adQuQ7/cHv2rz19N9oo6ZEGJczZpF0XSsJNALhnmQN
	 vY+5u1cwHHPm8PiCLPG12E7BSrUB20H611TtYG6HQG3HvbY9ANr38n+w+kQ1dYmPRo
	 RP9nTfxTrriL9PeREsQv5UJyrYjyYvgYRYXEEaOfs3QV40WeyLB70CPD2cKo3nPAhR
	 zUDB0RVkSZ+uv2OKwiOMgxirlzkG/28y4ZkPROF+kwuDbnPHKV1dfxq91oy74E7nEQ
	 YguCqizFDgRi+nM9xQMcXLSm5B8i1Xt092FQB6WB4FqT7OGLmfJ7+/g5jdIinwYKC9
	 pKh5awLR0yz3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94767CF8861
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 15:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176365211359.5822.459422620499840951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0122027ec955dc6bab079cb56d8ac8220e8eb239353a014df7df54a638609745
Date: Thu, 20 Nov 2025 15:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763652113
