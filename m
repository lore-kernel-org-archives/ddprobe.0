Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A99B640
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 01:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781918194; cv=none; b=sSGzkSoD74mj72/tbu6AiWnpW/wigassnSncsyazARdkfrPjczJ3fdIgr00MZaS1jhrFniN+nmv+6cTzYtRiDHphdDPXEz1GNy5ciqCQeAbevYxJLiuxm8c+dWcjOgwk1j0EL9/Y24z6GJ2sGoIhi5nv2dXjpPvsj/mGLJiU3As=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781918194; c=relaxed/simple;
	bh=qfQYtnCxBuO0jdYFXuuQBs/WblFnwNKTUz9kzOT0qII=;
	h=To:Subject:From:Message-Id:Date; b=oKv7R5Ncekeb9SPFfe7chlQiPJfZJCzeL15SSK5QDVTeCFOZ//npa+IbTKC13Yx+AX2+uk6HB7WSTEjSadGERdXB7DfgJWI3NRNPH+F401UytPZBAhkQMBASoqz5lSQJXYTJ0IqE5AarZ1t0jZ8O0DHlwNkaG2nfi4IwQKNeB/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5PmQmKV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5PmQmKV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE052C2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 01:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781918193;
	bh=qfQYtnCxBuO0jdYFXuuQBs/WblFnwNKTUz9kzOT0qII=;
	h=To:Subject:From:Date:From;
	b=C5PmQmKVrHpYuYG/DA/trd+EGss2CRajUOdlaafAs7QYRElTUTwCAQh7X1EQSMK88
	 Ye26u5LuI8CSIgRz5QmG99gzuWk54SksfU8RtkuGdMZOtpKNuA3kgjekA8o/Ww6dGh
	 Nf+R7ADr+nvhVZDKVOMA30Ju2KCBVLPjyVltkNFMSfFa5aAhFOXNuKqw7f1d21ysmY
	 5BLL5tOz73oeueq2XVCAcx0sDIU53Hxi3jMmtcaND8/U3RAxtgqZ4Wr7u4NeX1l3xN
	 MncdyIZwgBy5Rw6pM4Ci5zLCCCDBykEOSvucRTbau6q02cgZEhyBvmprR0KWAnIvKZ
	 WtkuhKD1Rm78A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD777CD98F2
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 01:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178191819370.5462.17995843366439847954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 803773cf75e211dbb2827681ef97b1e91be99f7b1bc14bdbea38af67ede71501
Date: Sat, 20 Jun 2026 01:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781918193
