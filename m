Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2495A19C542
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732101954; cv=none; b=Z5D31RYM4v+x/jhVPWEhMgHMN6FQ08vr9gBGm4Td9MtH7COfsssx/v2eS2jPi7kVknyvK9wQMTgTdJMGR+JMoTfAMO5npe0RTHLW55+5Br+LvRSxiWNFLmQMpWwkUjbkpW016rL2yhoPgqno4kxTYL4qgTdWdRnfCO0gT8ZPdYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732101954; c=relaxed/simple;
	bh=xlwXo0QmZwfCwPxWuUD1O0aQi9+1KcRKMruZ8K1h/HY=;
	h=To:Subject:From:Message-Id:Date; b=Lg8ZR2WlDzYXFYvOy7/q1JZfgK2f5YoXdVKPCMueXaUTMrl2TS9987SPj46vd8DDFWT79gfvzddKlWA2wD0tk3Wj/nQn7EAYcMqRx0pNg/IKnrqX1Tr1c1aKA7BFyq4DORc4uZA/Mte+OzvCnLwfz1MGw/Zbz52FpBaO22NH5+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+C7zCCu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+C7zCCu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADCCEC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732101953;
	bh=xlwXo0QmZwfCwPxWuUD1O0aQi9+1KcRKMruZ8K1h/HY=;
	h=To:Subject:From:Date:From;
	b=s+C7zCCub0wGF7n5f/GxmjyeGVRTZEYauMH8yx3fM59/K37C8dLMhJ2eAdOaXs+E3
	 ytSwU92zAPnXDFUSbcc7ETt8MBbBAQ7wSamL+Bi2FuzaOTHNaYPTb52JIHgJe77Vty
	 IXYGAn76zeBQNlbhcrDZMJT47fHo9aD1r5Hl6Mka02Pvi+QarSiS9/lyVfXyHZP/Sc
	 ffJdoxm5p6ABNUSgsW9aBCe5dxGQhr42DGkhB0ozFSHM3E00oNPMt167+lHG5SYm1B
	 ZvasPWnJMPNUOx1IjMMMurXF0RTG6aLWYIht+blQVESGizPnMjIS4QGqs0M/i1aW8P
	 yYr1U6Xpz00ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFF5D6392D
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173210195362.7051.15818352432106494386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9cb13f0667ac1205f768ff4cbbcceec3f6d36f0c21335f2225ac700664297df
Date: Wed, 20 Nov 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732101953
