Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F5519F41C
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746996594; cv=none; b=X+Z/mk7BZruBROjowFGFWcjIaNy58iBBfvobq+t0AEO8WV5RdWJpch97IttcX58wd+xtGELw0G/JOxO5DZLJMk81OHzfhgULtO6Vzg3RHHoEijYEOsEdPXgGx4MZ4f9pa0OT9uR4P/civCqCNJsfmNo+pTm4rHPmmd7i28FFL3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746996594; c=relaxed/simple;
	bh=SUUOuAx1T/XKUwNk/su7fISFEMkssLsFBcG8Y4773QM=;
	h=To:Subject:From:Message-Id:Date; b=bbHjXn/7gBZTBSLI2Tv3Ri5LqDvMbB9FTZiD9GHf1A2OwdpCHxtqLVVt/7eryH446XXLf1whI39WrJLsSMUqZYGuXz35r2X19YNnCVWeOM4DVnkISX51frzjGAl1OWjj2PYsmgsaxUKapA8fLpt4LyD9beOFxMCWwM8/LOzYAhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qb343vRp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qb343vRp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9039C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746996593;
	bh=SUUOuAx1T/XKUwNk/su7fISFEMkssLsFBcG8Y4773QM=;
	h=To:Subject:From:Date:From;
	b=Qb343vRpmJq4pxx+Jx4ctFiJwG0MzTfsn55yCrW9taBA+nCJDLvI3rDHGBKwVLuwc
	 2FwFHv5T9RcMVhlDJdnefNrvghV+3cvzo3dZig8BsyeA3y1hC/GBCJu7XzYnF9UCmR
	 P01gdjfUvLUD22ptewudidWODkmCmU11/mHDfZ2qUXbgd0lQn2oE6Fd491E1yMK8zF
	 1L8yycqZriQKRwtAu38miRud2Er3tFVFPIiySacJpZGCsbFbFARe/blJ1mfD/BHktj
	 pjWSPhZuqDpCfptvievrvMNzYzla5tfn2xrw4geNCGsgZbgTjxcAiNo6hjXgvMBFcl
	 FyjpA697wfafg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FAAC3ABCB
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174699659357.24610.5186442775375129901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6060d8bdf3040818a09d58f10da17e1331ade12797fad226158d0a8ba2e06c2a
Date: Sun, 11 May 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746996593
