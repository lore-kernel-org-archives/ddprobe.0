Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 945D33009CA
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 08:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763454114; cv=none; b=LMSOpZI3V9okWtsLNR7hEWw36lrWvFSAnUM9qLm1Jy/vyRuXKgexZbLe4rTMbvLluRg73QAHpA2bzeq4NS2RGng2RY3CFTuuOXq1xodc1HHGcwrmpR4u9Od9caBb4fpOtKtChdPl094gsT1PxudgtVhzU+n7i7y7kHhejxIHTU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763454114; c=relaxed/simple;
	bh=C37m9FTG+n5MOf3Ku9pR6QRUXlBH7tkI7p65Ejov1pA=;
	h=To:Subject:From:Message-Id:Date; b=u7RlqNzbuEH/tr9qt9faxQL5cv45Sct0st3sRmgmKBMVjZMulRgNZnkUtLELbGgBuwvGkgC2uSn0yFAbFXjG8Ke5yGOyLrEpiAhvXNzOHBxbsBlVuIyFJrXl904Ih5wiCn9mSzVWFHB83TifRWkOEUkgyNhQx62xQIEaiTb/x0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KU04YG4H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KU04YG4H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D81D2C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 08:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763454113;
	bh=C37m9FTG+n5MOf3Ku9pR6QRUXlBH7tkI7p65Ejov1pA=;
	h=To:Subject:From:Date:From;
	b=KU04YG4HebfXyWcm7m+cfIvZ8Rv0GzNsSfupk1e/40HMLNPp6vDHrupts23C2vgLY
	 oMZbjahOaVmnNF5pCnkMqxI98jQrQmP/Dkh7zxv7g34C1QN7cTE5JKvoZsyGLS+1rV
	 eBSS9CeGSDdZ8KRxH54BXrUPApR2PrygIlJOyKytI/ZA4fMp3rGAQEpmwdytor5CDD
	 3DgPZ/B/0SHZDEUyKyoMDArSQ6+Uyb1SaWpEhl8gFHVkqJ+lWjOAOMkvwEA6H8j+NU
	 t5n66dhjSh76Q502qxOwGj03nsF9vkoSjJ94GPxdSm/KVww2t2Q8OvJOd9GuF7Rje1
	 91fIuhHanI5Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B05CEBF92
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 08:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176345411358.10897.13987938878263016314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 204d6959f01c22636339be21e7ee67b612f19230d85824a6c52416d5ad8c57b5
Date: Tue, 18 Nov 2025 08:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763454113
