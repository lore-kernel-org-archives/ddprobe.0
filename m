Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2583C4CDA28
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789498834; cv=none; b=IPZ2SmI+0FEOr1Blj8xPdRhphJWAByKpuHfVm6JZ8hPDopQ3YOzuEWyijidxT8pnzlxnrSq+Apa/v+ZgGt434pKT/KeHB3FiGDls9r0zMu6vyGBTh5trCzmbfqRCsDkneK7V6zlp3lZjOJrIKpAX8PlhK1D/2s5q7RZVTmkpLfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789498834; c=relaxed/simple;
	bh=FZ04LMFvdziIDqtPhZMW2hr9k1q07GHaDCWxsEuNqUE=;
	h=To:Subject:From:Message-Id:Date; b=Yfad3FwTpo0THlD0NVQhsm2sFvg2BqH4MsN89QDeI5mJkqUQjbyXrs8qGJzRdT5MYfGZCSTQTBZhEbGfaaQqTU3qiscmQ6xnKCYhMJBgTBFVaaMVE6G4BZPfw+K2Ols//L4jIJbqIEbxm/AOXa2Es/B0UHd1adpbhwTyFM5Kp38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eaGlhmHM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eaGlhmHM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC3DC2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789498833;
	bh=FZ04LMFvdziIDqtPhZMW2hr9k1q07GHaDCWxsEuNqUE=;
	h=To:Subject:From:Date:From;
	b=eaGlhmHMT9XP2fZk+HikLzIzXFOZi/oF5EGK3kkG0e0dnuVuPUupdHVi64XxcVE3X
	 3lFVKcVZETTZg1BNVMAj0ISv2BIuD5VFr8npxdPHUOItbBhAJpyIem+MSXDzQmF8Jl
	 A7lraWGqAFcMXxVRm9wrCm8EVOjk7x6nIvqfwYgKljys2DA5wChprT1uRJdH1M545C
	 OG7y6yhX1kUKenBm1kK4ARz+do/w8oExDqenXxE+X+MKVUA7B9zaovX+OPYIkfnFqw
	 VcQl7JkfvY6HrHwMZYwTDl9Z5keBLnJz1h/W3u285A27s2y9WjOWBeqyfKP7J9wtDd
	 HcMY97HeYdU1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E6FC88E77
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178949883368.1505.7688818618389157906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b39252b196d2d1ecaa605888cb2a95793c036fdb230e7dc37044f95c5dcc9aa4
Date: Tue, 15 Sep 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789498833
