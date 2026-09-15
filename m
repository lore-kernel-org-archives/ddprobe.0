Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60F5C4A4413
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789493434; cv=none; b=s/p1nzHqc3hnQ3IXruefV6tk/OkoGg0PEgxfsXyTmsTp0h7J1/OyTq7KAMQTKLE/Phgb/tQ+RiJ/7dXnofWPUT1DbHARvByYRklL+LLvhXToPjEdHGcHaI28nQAq322nehPj8Xm98zV0RIfbb8GUXDyZi5VEXmIKHNt7TlOxqi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789493434; c=relaxed/simple;
	bh=SopQNppFeNmwTN00OP5uEK8NVgBizKLDyXJPJ3okzHM=;
	h=To:Subject:From:Message-Id:Date; b=DMq3k2XXgLnZlN+seONuuYmmMCzJ0EjnHL1tQ1n+oRdSqeiu8KdBWbEksGLeVjjmSwYNDC0QaH5SMFg4Fv1Owuiyiv5ZbMyXYrURfhW7xh9lEU0WIsi/St/Zsy+p7//bDGX/Q2hNNRRd5fZNjQumNMFy8oIJtBPF29oHznEwI7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IEQi6KEb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IEQi6KEb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD6CC2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789493433;
	bh=SopQNppFeNmwTN00OP5uEK8NVgBizKLDyXJPJ3okzHM=;
	h=To:Subject:From:Date:From;
	b=IEQi6KEb9527Zmkk+UXtPPC6FYbggnzHQJB9WJHAvLDgUP8tQxMAWJJvMje7zLDmW
	 1PnPgziTQXHQDPeVQkBOy9F46VSVetKRzxiku56WJhRPa+du2YNbYisQbSF4st1PbU
	 SZHtrHejOBh2l2fd82BEhzxMy6cfA7Y1YulsC1ytKe9qtpUr4tBqVMh64p9kKF/6AA
	 ZECAhdsvnDJNjTsa+tnD2Jv62fTpWqZ39Gz393pIPtWocbqCrp8DI0QiiNI9f5DkmO
	 gg1leVAxO4iGUWR0fTZoegYEavYCHIKOte24kWAXf//7puhY9XgW8Ro7NKpXHXzonD
	 rGf6/fKKxdLQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB322C88E77
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178949343369.3541.12490433598166603598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c46521a1a34554c904ebe3ae998ea227e3fe7dd261a511e410e54503e6eabab
Date: Tue, 15 Sep 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789493433
