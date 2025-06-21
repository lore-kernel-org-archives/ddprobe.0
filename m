Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2582F24
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750477794; cv=none; b=YHk4zpFUohzX6/PDn8PxqlHRvQyBvBX9hvoSvr81k8kk9rgvanWdf6IK4zJ3sTwnMYh2kFC0w5kUJ7Ougun01pDguYbfPMsHw8119RIv4/C3z+S/pjNA1NbWzezH7d401nQETwMukmKkO8G5XublHTH7d3IV5Qj2OLK1mPvjZrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750477794; c=relaxed/simple;
	bh=tEHX8K49kEo0LzceEYOtUYrsn9LOHMbuqR8DaICRgY8=;
	h=To:Subject:From:Message-Id:Date; b=SopAEUAK+aGENY9ThcE8VXqz59x2YD0Mgxckcwsmos8esf10MKO7l3u7DJITG8CMmLmZGtl0CwaccIolclC81i606eM9KT2WA/mNW87EJbf6RnhZUUc7gSCXJgmJ2vluPpedKqscvsSYShfztAVsIVnblukLcXMQRwwFIl2mXqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DRHGMLIv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DRHGMLIv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8790C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750477793;
	bh=tEHX8K49kEo0LzceEYOtUYrsn9LOHMbuqR8DaICRgY8=;
	h=To:Subject:From:Date:From;
	b=DRHGMLIv3RkgnWHLvbtawuwpNkPlIfG5yw7lFtjoz/wFldv5GE4VgI0QzJkWsRxOl
	 nekePiXhQOx+nKDfmTyuZnAMBlJm6X7eJm0d6aZ0fdsFKnZU8jY4rI45UwVVZ7v1FA
	 xa7OzRdH1BuF21T4mJHew1N8YcVEC6SgYojeWOkpX6So/TNywlIngy+BpT0v22JmMt
	 Z60zyg9F9cPFoSr4PGoTEbDJz9QJGl2u3hjFnCW5PcQpG+DmBazDsmcexK1uq8u1Os
	 1LxYA7JO6P+5yTBZp6rqSrymJCf4H4n0IeI43ZbVT/4UwayPbbB77L01TsJvuVd/lE
	 +IJwkxol6gvnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9559EC7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175047779358.32053.2970995096497254740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9839a51d6ff930147e4ac5c015ab49d710106bba33ed574420c03294db3515a
Date: Sat, 21 Jun 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750477793
