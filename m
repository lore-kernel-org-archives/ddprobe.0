Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 949043769F8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 21:10:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790111437; cv=none; b=XEmIoMpYZ9dBhvRae8dp5qWnrD8GEy9WF08DWyEt9nYZ/3hQQPN7xbUQzkTmH8PzA9e4V9sDN36AijueZBE/A2zWMHqD8qZljhtl3XTEuolesipI11crzQ7xypd3T+Jb1F3lsJsoSPdvJygyEbCphc61UpO9eHxhZpQFaB/JDbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790111437; c=relaxed/simple;
	bh=xzsY+a1Miq4eFu4tRobyPLhzwKrAndtlVsEsoPSLJUk=;
	h=To:Subject:From:Message-Id:Date; b=KlfHozjsW2KrpkFJ57hh5neyIACuwF7zyeJ+VhURUIP7A43XVyPGLOXdcMeIs6/xrAMrlRrWrJmWAw6oFfHTBzPYokr6yDQIRegZ4CdkV/MkL80nGf7nvNnLLzcEy7JW+t3Z4A23ZPCP/DQhf8TxeNAUWDiU8VFxNFO2RC2KdKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b78/5FKV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b78/5FKV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1C42C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790111433;
	bh=xzsY+a1Miq4eFu4tRobyPLhzwKrAndtlVsEsoPSLJUk=;
	h=To:Subject:From:Date:From;
	b=b78/5FKV9Q5f9QkO2i5tK7oCfiCdg2YiA/kwqJXtcF8mG+6zeckvFl6FQQ/gEz9/2
	 K30aepOCJyUVxwf6X2pwb6Tx/6QMp0a3Vio9dqH1kvPJPPvkJe6XUZodZEfCMSkkkF
	 q73NLrkmvPzRPMWmGHU1+PmJEmgn+0S5VkvOEijnYmw4BuOHuuj06C3NMcssTr7DvT
	 SRUPoNF51ZdnMSv0SCYUsotf8vwUrqP3vVtNTd5evjnBEwW6EFMurAQLg9rAtP90XH
	 8i2Tm7NvBu5KGgpz6ldz+GMuo5T+qiGneU7rKClzILROHRKirDV8WWTzUK24LTkfVX
	 6mJCJAiSeZaaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAC05C98302
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179011143375.8971.13186916160695257959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 328af06d19116295aee3f2675f73367b64c867b5cf7617ba4cae60539a5ac406
Date: Tue, 22 Sep 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790111433
