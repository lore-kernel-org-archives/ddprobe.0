Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EDB93314A0
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 12:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763383914; cv=none; b=WAsPIWk1Dz/eT+k8IiCUA0qFinxKbg1wKVDCAjiEFo65rEl+9oyB9Qjp9FpHqctbM6mJiWn4jiAmzBy0pPB6CsqXqhCH9c+Q0zbuSxy1leRbG4AByo67O5XaTLKC2l9mzRSZkmXJXiJUiLLMVj6IkcosXnO9faHvHRRZkRyqM70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763383914; c=relaxed/simple;
	bh=6ond3aySJ5I1uYa0W6jg/CgHHk+VDgy3sNM9ZUZST6M=;
	h=To:Subject:From:Message-Id:Date; b=g4KRx2tbCU7rQixrFKk8EN3FSmi4evRhR3OVWrjq0IGOzvph+doxS3m1ldks1nCyds7p9WBvtHa6DI0EoM5aq64RW04N+YWJeJfcpRwaSGu0zO/pQqLu05HOXpmvSfg4ymGRXwQW/F4GLl5M15KMwWRnkewcQ97s+/nzFcdfJUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YqAC0hal; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YqAC0hal"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB42C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 12:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763383913;
	bh=6ond3aySJ5I1uYa0W6jg/CgHHk+VDgy3sNM9ZUZST6M=;
	h=To:Subject:From:Date:From;
	b=YqAC0halCB5auoMwWAbmbQ7QA6tRuLVSc5BLkF4INmTN2+aKuE8qL9EOyiOsTmTH7
	 bDteNwsAnVEzv45gBFuSSWhlvR/vSu9xcievGlTLbGjEp2zeIF4GiyGRXRZewJC3SY
	 8+aQFdro4qEdFWsP4f+/xpr8HyJDmgL0mj7Dil8cHbaxqHU60heqFklpz8sX4H0yBP
	 HBfHYkguRyA/FoGPrAlwXj/HtCX8y2aSJ7Rkuc4ABSL+n5vPu9ELOlH0cuIvFI5gkQ
	 wDHDLhwx73ESnwZbt/b3npljLUuv1U/aQ2z7/S4RmQv0fj7sY87RpYumoZpyJZ9IdY
	 J7TYEf4JZcWPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963D1CEBF61
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 12:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176338391360.17525.10544097649109890564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30244da859caac579c95f9d1f4c25655856a26f36e212e1a33f2affd6cee8743
Date: Mon, 17 Nov 2025 12:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763383913
