Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159C846B5
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 00:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777596454; cv=none; b=nLOaHubkSz5ZQDTRFV+aRWhOmls7qmHymQaCYQkmjGSaIraabXjnX5LHhdyiljlVs7L81LOl72XJuy/jKJZoSF8LDNX59loU2E2KoQtnKlAC3VlG4XA76atDJLgPvRu2dziAmzIbiLdS5FhcPfPuaTtd1h/40ove2aukkYfdWKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777596454; c=relaxed/simple;
	bh=6u1022tdshHI0lAxzmyDORPQNchS1WsM/lorePBI0pA=;
	h=To:Subject:From:Message-Id:Date; b=Iyy+eO++usxEaqj1cadPC1iTYaf4/HNYbDLJ1xJZkW8xba6eJwa0PiEdMZzu7CDT+fT3k/rUWlvzsjroTxbGFzNYsNyigt7+Kx+piKy1ARDDCAbJfrUrgc3kNZejeJQ4FsAwOM6FAFhnjfiR0y9T5pvE99Oc9bdqX/6I9K/Tqm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d6G9qk7L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d6G9qk7L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA6E4C2BCB3
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 00:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777596453;
	bh=6u1022tdshHI0lAxzmyDORPQNchS1WsM/lorePBI0pA=;
	h=To:Subject:From:Date:From;
	b=d6G9qk7LpPzRVKuOGjmPxfRXcA6KbLJiqYK6QkYEWjMLTubHar9nocUWXnYh/SY1O
	 ad+2hrKoCRTSgAm4QiF8dTDJOr4IUe79X0RNotB/uVeJanZjVl5fu0kFq7kLbVHPsr
	 RY8PkEt7jVlbFXuA9XsqkyyVjZa4S5AIdwfqtXkpC7335bLwqk+QcNeLVvQtjrXJyR
	 5RmqMhvRJCD1AhOmzM5NdBSFw6n9a1KLGqZtfPiUqhKeVjg57tFQ+u/y4v878UfVRU
	 e430vG96wZIiSufCxGgMQ/q2wu7ucn78dH3G9Rt09mtPnxWhhJVOrRHZ4IqO6b3waE
	 QBAwtFM/V8rUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE92FF886F
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 00:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177759645369.27490.3544501428365103935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 625f84acf84965626499ff32abda833bb5852fd281dd750d72c9f1b1eea53187
Date: Fri, 01 May 2026 00:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777596453
