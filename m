Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05E2613790B
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 23:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763250654; cv=none; b=S8Td0DVY0P/WBeylokZFoXQ71QQU3NmgvEQedoBoQ880Nn7cxMiRvd6VV4qcrOzl3ZKTwmLJUq0Ccm7L9M/3Kl2nQ61vjshMNsyM8eU6Te/36o+5x+VO3++PwRStwn2S6c9A2eK86gTe835P730I9TDhcXz/k7nDYT3amj6tKjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763250654; c=relaxed/simple;
	bh=xPkx26HJZWb8XXifbEGgXCMJCqzkrMHpVCMX89XJE8U=;
	h=To:Subject:From:Message-Id:Date; b=Lw6gZK3oTUDSlcJHlixwdVOG6aTCnJH357KfaPDkeGEab4UvgPjBlVViPgY+qpAG7ds3nKR+uaoL+OriDsRDm5A6cT3uUumXkT4eiPBqPyb6/kAH1rUF3y72xn9XWxToqZWM4m7Bf9o+hr5sjYcyjdprnPmHUvEFSKu0Vc1SNJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kqAeogwV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kqAeogwV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74BCC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763250653;
	bh=xPkx26HJZWb8XXifbEGgXCMJCqzkrMHpVCMX89XJE8U=;
	h=To:Subject:From:Date:From;
	b=kqAeogwVFxPcD/IJxCuMqOABvUMfiYQIvMypn9n6o/hS4GJS3V5hC9rHkpSq51aPJ
	 Ht+bf4j+oI9yeSDMtHzdxDiyjRk08cw7a0bZmGEaOdHSWzmVvOiEWKwrJQDt+W2fCr
	 45/X3maiFCKLj/qujXtthmK7lImygdVrxwnjxz2i9on2N4MPI0VNLQw3Sk+HrMzsSU
	 gG500W7dcmTOUmnBFNwXUpFnIVtYVj6tcnUDSf2tAidafoFvtUvpMXjUFi1sqQ1XAa
	 r4iInErmnRDAWJkPQIZjb3gU104gE98K039y1A9sZPxgSp0wXVDnsA5Jbge1n6sYtK
	 UL9Q3E5KsMfJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D6CCEBF88
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 23:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176325065360.16217.10878161083326262104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b46e815f3748f7373ba41bbe804890c7c1e7538bb049a799e86753687059519
Date: Sat, 15 Nov 2025 23:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763250653
