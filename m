Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DFFA204C22
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 08:00:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739347254; cv=none; b=r6fCuYlJKVckl62VMdcYFaTyjas+Luw6VTBfhDTQtZbvF+7xcU7tC1wh97tMxcaX5mBokHVqdwDs9p1OTfuDn2WADOgjF/3ijIrGcQf5Py6xqSBKWl9jKRzTjhvdzTijhf8GxcsHmIw4IYjxnpZtUjZuEY/SHeGmDWTDG1WEJVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739347254; c=relaxed/simple;
	bh=5gGXq1zMycKPdrHqepUM+bcu9weq65rsXOYLGlIIwQc=;
	h=To:Subject:From:Message-Id:Date; b=nrPMUz2StmoPifrz1Eqv4gYajZIm0Xgy0+Xw5r3k+1tdTb1vy6og1uHV3l5Z3SPgaaZf1TPvigF9UUwVDOZqQ0CWYafD6eua5DUOPRBYP4x6S98PKMtTfbTGPVEymgSn1z+R8sddxAgKLhiSG/E/hYGTCGaDMFa2/24/LhO8xU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iwNDAEbE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iwNDAEbE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAE0BC4CEE8
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739347253;
	bh=5gGXq1zMycKPdrHqepUM+bcu9weq65rsXOYLGlIIwQc=;
	h=To:Subject:From:Date:From;
	b=iwNDAEbENqHH8gJgNXZZY8sgAYxFOuUB9dWpZ24t0kpwvPyYnNzmeOZAq5mcUhG/j
	 zpzeilRamXAndlntleqUReve8cUMJgjjIHN8geZb/VKFt0No3BYHDM6rjgkhw/H8Cy
	 KYuTO0WNFzSRdhe+mc7SV26Q3Lz9cuFSUsMTVyo1U93B1+dCkmBAXaMlxRjNY/DLRR
	 pX4C+o+DnKOI5R3BlroeaDeOxfn6OjutnXKqze9aznLlyHE5lOZs4uVt3GWROjjZzx
	 YagfGtcRwGOlaW0tNezDwtNs4FqjZUMg6EyErsFLwNn28bhkoS/sW3WKMxJNehVqbg
	 QoegGLpKf76Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9626C02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 08:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173934725366.7402.10392018576497424466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f4e8583bef9ac264f5440ab469046571c9e24d43906f18ae0a8ae23b060329b
Date: Wed, 12 Feb 2025 08:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739347253
