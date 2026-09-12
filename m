Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A06D420496
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789225234; cv=none; b=hUggciI03LGoUkhoEABsstxywUNjklqwYa9lHqp5IQl9FfsIntOYMKjNGmBqbBTpRCPRNKvoMvKeOlYM9GKGaZqoeR3Y05fHhcm96yff7okg3avimbrsZs/0Ta4fVphuaCYnRk4NNaf1Nfp4dqLk0y8sogrCkk7Ys0ljNfstJVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789225234; c=relaxed/simple;
	bh=6+yDUUcHiKaBoqf7f0TUxh7UWEkrc2q3V1LLU8dibPg=;
	h=To:Subject:From:Message-Id:Date; b=N+rZTgUmce0c0aHCh9CFmY66EuHV26eVlWNF1TXLVjdhqFJHNv7QbWM8jKL2fRD2QV83ht7b7ikQmwRsEy4AVHo604Fa9sg8X5C1oJ5ECmKcvHTfPE3BxkKbgvoLMt7MyBMFCMTwNXVpxlZJOyYZvSb48Nvleq8IC3RTbffJuaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jTiD0g1p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jTiD0g1p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB5BC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789225233;
	bh=6+yDUUcHiKaBoqf7f0TUxh7UWEkrc2q3V1LLU8dibPg=;
	h=To:Subject:From:Date:From;
	b=jTiD0g1psisWkinfWAFPE+/zuJqlfb+TJWjFuML8sBPi/cFUp7HD9ZHuXPzZ6X4x5
	 42pc18DBgSKy2CtcM3nYNcHYVTqCD477Npgof+Xyjk8gFSsn1AzIibdCTlBqaKu98T
	 6i8x4CDsUZjbUyW9/F2Nj6h2btdH9E66PFsYp8ZJGbvDXB8QgZTbRcaXBSNql+NSLX
	 hlGHy7I+jTYhoynE9dtthNS6Ob1aRb/va86THqWCq1wqKr4pwEY/3WjVVCIk/mtI7f
	 jcOzWGtaGQtXLXpbWAopTawF3lBRt8Df6yPXfqyWvdpuAwruhBurIsvj2HqJVI/Jz7
	 iOrPIcAZOa0Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98F9C88E59
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178922523368.28840.3632962681948778862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40ed0a289283398d4960c95a2e04ecc62b1a0694946872b58681eeb6a592d984
Date: Sat, 12 Sep 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789225233
