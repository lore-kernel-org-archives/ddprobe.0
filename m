Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD9B2EF67A
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 16:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781971594; cv=none; b=SodCchMuDJW1Ge2cvk4mYLAPL3jIfJWPBJ0nNIHnBJSeowD1Y2XT0GM9vKchEgd+3wUFV0/lrsWHBjQe9D9zJMkBDJS98WvtgWP9AoZBIVuxnpMUwjFWmqZ5+TizRqHwpe8TTjatwdIIFB+o3f27bI/304jODsmY9UywfdCGwTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781971594; c=relaxed/simple;
	bh=o73qrXEmxkIBR7/YsAwHD95TTamwKCSoxHDQC4y6Ggg=;
	h=To:Subject:From:Message-Id:Date; b=DfMJ8mnDQZUaMfLKVFh2toT44J4aReJDQJ1SbVzdXAgOJDwwRHOSQfmYp/gn01LTzi7+FgWGONy1pLcrUfwgJNXk7LcGQ/hqrXJSOGX4A4es8zoEJ2Ll/sm8UPjNPJkoAuazY/nlJ0A3tmI87gTrcK7y4IweFqnHmUn5hJbz/IQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GC+bPbBW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GC+bPbBW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F4CC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 16:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781971593;
	bh=o73qrXEmxkIBR7/YsAwHD95TTamwKCSoxHDQC4y6Ggg=;
	h=To:Subject:From:Date:From;
	b=GC+bPbBWP2aP3iHf2zmlqLiYjjU2noXQroLzF80+o+F0kmcnp/IcFPWTYtcMLty5e
	 nbN3cXxdhso+Q0Ccub0Hadq9a+hyn+i+tVvtSQNOYVylVmxg3j4VfnA2H9NP4JvS8r
	 KqOTFGOwxcluWFzJfEY/6weC2epGDC37AA4d/PMaHMqJXp1rmqm5ssjaTnnu6viUVT
	 HJwDq3+H37IiezX8z/Tg+1OXCYmGasyF35D9pzehrlOfVMDuYHmVKtDhC08fr3Ejw8
	 28wqPDD8U/QQl/rVUfVI8XkwSkOwK7usO8VodTVvrhlxiSeg9yR/YD8eChjZTdSfw1
	 6FmPxVmeQg1DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB18ECDB46B
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 16:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178197159369.11732.12652539965809388687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e96e091db25b3aa66309b544bd87c5f68bfa24ca09f65cfffca6ea6a5a0c5c9
Date: Sat, 20 Jun 2026 16:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781971593
