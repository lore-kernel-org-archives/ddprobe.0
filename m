Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1742848A7
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 21:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775424334; cv=none; b=KpWkdrCzyjcIX060sfhudZcUVwcIesu68Scg3vwPz1uoUgYtQGKZI7BtgEg4VSdU2G+PC8F+Opke3FviDJHZL/HQBicyjOsKJ5wkEc89UmMYVu9roRBH+JBJD5kEiqY0K5ChawGrFKXEba91Cnb0pGyhV9R/WUFewUPtb/sJyN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775424334; c=relaxed/simple;
	bh=TP6JbSR30q3WNnU83Cs5MBVFcAMLNICHzoDbv8i2TIg=;
	h=To:Subject:From:Message-Id:Date; b=hhjVI4I7xmQzx5Am30TUK6dcC7QWMEmdwjlwKiUZ+oX+z06iRhCkxjwzeUKCLhjVX9a192w8BoD30S8ImmqcyqTmuU/yBsY/HjjxSieMW5n7ObJfmTq92TspJnVNMaDydhLcTYJWxtrW/Ls11DGqbR4kkkY571IQV1uV5Qeuuhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mf6c7tet; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mf6c7tet"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1964C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 21:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775424333;
	bh=TP6JbSR30q3WNnU83Cs5MBVFcAMLNICHzoDbv8i2TIg=;
	h=To:Subject:From:Date:From;
	b=Mf6c7tetYiq2Khk6W44djVso5PTqgoL3MQ98Ft93/EGnTOhBURcbzyYJP0Y6OLlOY
	 W39cqowm2rZPEmeFExn2uSBRfM2JFda6M2pgRFyC3r1URuI6LCWlCgWi4gRTU18B+v
	 Ld3LGv44kfipSwb+sY4mGi7nsRR6wd43JEefSM3a5mHitydkzoxlG0ljV883cNHeoP
	 Gy+cSCNN94piiiqACvYJ0i/+KP9bCnN5psG9co+IRF64LtRggarWm1NrklekwVp/lA
	 /exeNejDQDr35gf1Cpc2yxXFfHzW5m1jpSYFdojo7PoiS2lLJnZGQlTwxMUzwq76Vw
	 9HgKC0ZnuUTsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1DBE9D820
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 21:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177542433369.32608.9428211282505003380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51ef257cff11a6d0f14e12e43749b2e061a9da953637f90d76c4b30c25968caf
Date: Sun, 05 Apr 2026 21:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775424333
