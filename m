Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB1430FF1D
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 21:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783459714; cv=none; b=T3T/IgGWnCabQALVYTzUIS7PqhJjXFq5r0C+PJ2EI1iz4VkGipJB24Q3GeNlCiuIMFtdArYyyaY3/UG/kBWdVYM1vGwlOImpX1rdB0oCt3M58db+tTvXWBHwkd1Py+ZOWl2leNzQ8QHXENMmJXZfw5L2MHA3c1hgkrcVHotjLyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783459714; c=relaxed/simple;
	bh=BSgZW9kmbM2vj8Fd0Qrt/U6Nz/2ovJZb7XKMRy8SyWg=;
	h=To:Subject:From:Message-Id:Date; b=Zghfh99h+pjTosz32gqWAlJsKLQa32rw8Abx1ARjjKie2MacWBEAGDRYqN5dqrUkDXeXJz+EBYWpo4NXzxhI6XeM4RjvOrbbm2HgmhnHLoKhJKOt84EwJcMqF+GpthoRV55LouEh791nCLs7Oqp9FTD+gRuKqM6K2mp0ov5TX2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PHXr0Nt9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PHXr0Nt9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF0D3C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 21:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783459713;
	bh=BSgZW9kmbM2vj8Fd0Qrt/U6Nz/2ovJZb7XKMRy8SyWg=;
	h=To:Subject:From:Date:From;
	b=PHXr0Nt9bDtxGfdR/huuPH6XtzDBmbgGo7y6Rlvuxq5xcbYhN8FPdfHP8dse3oZqK
	 tC5VbOizmcrlAH02c1kXw0SHW7XdHs6oFHwQmsY0SSkGeG4ktE17TpYIT8Sf8ro+ku
	 coti5GRTDv9jYampVAoUhW/ZzO/UgWogTIWrkK5vimMhv1OQ1mg4IRxml4ORzRci2S
	 sQ1u9YJrFYWjFRvTV41FNBUXXxsxU4ut7H6SeaGdz6behOu7aDJ4s3s3JyCr9AArPq
	 /ZOYekLLnVRdJgFbN6oIUUaD3HA1Wmpk+OQCskooW9c11LUoZY4vQBIXboceJMg7RG
	 2nfZjONyJYAlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA5AC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 21:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178345971368.28429.15705661925108909194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36642c8f3acf73c40a81c7ff2ac6527bf23f1fe6f6afdba32d218b0a15f3e9e2
Date: Tue, 07 Jul 2026 21:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783459713
