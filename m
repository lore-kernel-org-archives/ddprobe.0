Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF8E15E8B
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 13:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782652714; cv=none; b=jquHlGl80wqewmoHpi3uJT9DLHGhWHjgiGCdyEf9JaKTUl3RZzwvnRZITe238IXH4jKjK0PERHLUcKRb2W3thsUBko5fwHVurXd5FYOKB9//oJbcSlFDYwLiKPDqgkYtvEuEvqDQzZkRCkAVvdS4jiosDA3en290TBweCzDhcRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782652714; c=relaxed/simple;
	bh=RpSiJuRVYRAUhRKs3nMOVdHYGP6P75t+aaY1AuvrLzQ=;
	h=To:Subject:From:Message-Id:Date; b=YP8vd5G36UlRjhsgkLZxbbwxVGuHVAf6fSUeup/insqfp0UnFmmNA+fsaF9yDTRpgFpWwiBArGbrSyl5o+p+kCDbLEL4Uf299vTDEP2UNLs/cfaSg5aEeRAmCgTV4sTR/PW3sRpgUJMcibhUnJTCbNDOFGMexJKSEyHOFmV59nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TON1do6P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TON1do6P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C00C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 13:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782652713;
	bh=RpSiJuRVYRAUhRKs3nMOVdHYGP6P75t+aaY1AuvrLzQ=;
	h=To:Subject:From:Date:From;
	b=TON1do6PJScunzQd9FOBBZe1m7SnDs0/nXGSZN6IHywyNFpDtOWzF5dMqm5Zxxl2r
	 axRcVJXhq6dmFLiE2aIbLHN5FcDABuUKb43FCgd/FhxsVRzp42XS/Tug0uO5Cx670A
	 /kLihreqVkeyAQvOp0nqWZDtXHymH98r6COuUU5enbz3spWwfEen5BDhcbN30F/p62
	 bYEVzYFpty7Z4+uTB9PF8n8kJpSwgVGPsekwHJ6tHjEi1tUcy2GjjHEos57wydp0fw
	 N548a2HF3DttrT1MuL2fR6NLy+x4OB7mUrMOawqDLjdjsClZe2xkOiNEtInHpAZhQB
	 /v/UB464t44Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7232C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 13:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178265271370.6456.4930214054255493051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b6ff779c21187ca400f1445fb3af02f42c4fb6591103f2ceef0b178c568ec29
Date: Sun, 28 Jun 2026 13:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782652713
