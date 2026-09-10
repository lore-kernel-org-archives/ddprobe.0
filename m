Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6A931F9B4
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789077634; cv=none; b=YJGGSp2+shnfh1mKGoy10/JRBjZm+vPlxTn19v4oA6mh/KWhpvzSI2M4dFA0Hh1Uo3pVXghhKpdoAfovkQJ1w1AgqQjvDVHlenirSKbrLM49gNTrPVVNPcZ8EnPfz0qjV6TKFLcJClWYthI2VKQFCzSPHOM5hk6BHTaG5S9xSsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789077634; c=relaxed/simple;
	bh=TmtJiZdSHMA41fPmjqknhH4lATzNVbCc7nPcdLGDBQM=;
	h=To:Subject:From:Message-Id:Date; b=Hw2macRYQrAzIlp3Uvwh8HYEt4VemMDF0hPmPuGwDbgMbLlSGLS8oqkYJjFmyRFjIeGmbt9VF+hgXHjla3x64bhBJQictktlL5LHT/6c9JabM0hUCWKa9SNkfR45fUwfWs28ryxNyf2ZhhsgTuXUCgwDXlfHl9z1LKIrUaYzMJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oOByAgoA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oOByAgoA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C89ADC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789077633;
	bh=TmtJiZdSHMA41fPmjqknhH4lATzNVbCc7nPcdLGDBQM=;
	h=To:Subject:From:Date:From;
	b=oOByAgoAxLYo1+fDSyizlU5S2QvyyjZ3CUtYC+7em9ncmFY1lak45zwOv1pLILIBW
	 0pUV9coWzw83y3EcNthQIvD2p9wlSMswOPrR2U4aCb+bOJbNJgpB2+iTKf1QMtDNjg
	 9OW5cytVQGTCQnUl9yszkaxzr5lz1PbO3nluxFUzw881oxXtj/l7metNp4vIywWHz6
	 Ppy0kNnlEvmr0B7dx7hAGVHo1Oj4E9KYQjnWYoqQp5muFc4/OOXtkMiPALcvS297kc
	 BnrvaGJl0uAp/z+iQHmK6ipk8Os75jyIfwNmiMwxPoc7XgkA+IKn+L1p8H7ru+Qh1J
	 GUawQPk6zKBDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE576C79FBB
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178907763370.25508.8174382180541452582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb4b0c3cbf9d7bca2575bc887fbe0ef6e868b84c82c7fb0d6c46b467363e37dd
Date: Thu, 10 Sep 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789077633
