Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C84B0246BAA
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752494393; cv=none; b=SEXSurc614Qzju1jeIPjMHYFeqrONIB1Ujx/BHLnleOcfUFj96zzC2EDYZGQaRexsam2netmbMLvZDh+ITlytWQg2qX9ErfnGQ4pjvxR7NpjTSba3CB2hIr4YgeYqDyxXXaUnT4gpOlPlsqAWJdL6nNam61qcOqDESMWCXofUYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752494393; c=relaxed/simple;
	bh=reWwgi8a2g6KLnyAz1nCeuXmEAK/c7iCsVoYshGMSnc=;
	h=To:Subject:From:Message-Id:Date; b=iky4G0rCteJrNcGoqsfCxM5KGmR/iBGVE6aV9xMr1d599Xx6QPLOa0FtEToNXITz4iECHgm6hwPNFN2KhqibeYtvx3pM8q4CgjoQe7JgSGf4ZOsCjdU8K+mzXTP3eK/jUsZtS2R4EIkxe2dtpyrMGPKan4xEMgNn09/ZTx7GG8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B2xCqryv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B2xCqryv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4338C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752494393;
	bh=reWwgi8a2g6KLnyAz1nCeuXmEAK/c7iCsVoYshGMSnc=;
	h=To:Subject:From:Date:From;
	b=B2xCqryvZ2/VmTBJhj9Dign1M/gWLHqVmuj15ImWkDgTiPkzqlkiK7R+51iA239NY
	 focqWHgL2Dm2FTrU11Qh9NKWBvRdiR4XD4I5iq8H+TbYlZ4FJyprz1Uo1BVAYsqQOU
	 w54dtU7zfs9MI/QLvhmwds2J+k2nTjZ7NMuW59NjBiVIniOEuVeUEVbDBrrg1SmuDZ
	 Wq9EvOVxTZsRQs7RaUzQxPSepzCwUsz4tPy+GpmFUMKBK0hmQSxbA2VG/pLPUq16/R
	 fWM8YZcZaZgotktHZsDlS19jV9megDZTMQEKDUnDlQz31bw2sSldzo07q3QMB8bOEW
	 MCNh04KbE34Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAEFC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175249439358.9198.6058053365530251450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2237b0032e49963575ac2ba24b944875e73f4e5245aabad2e10c5cb1f23013fe
Date: Mon, 14 Jul 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752494393
