Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13A21293B5F
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 16:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776443854; cv=none; b=ltOyNAryW1MMn2OCtI7f5koa63Qj6kAOuOQvSi3SoVJHJ6Jd0pqZ/NdqjOqsHSXZd1up+aX5EbN325KAKpi1JiTwAQAaS73f144YSAsQkAc9nB1Du9ucRBSmqbkVB70vcVLwqd1MdyLN5G76yjFEUx12yZXeh606hZKgZcNhHqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776443854; c=relaxed/simple;
	bh=pCx52eVBJUJvgoY0mZ21tgDt8HqwQeAKKxgkMHqafaE=;
	h=To:Subject:From:Message-Id:Date; b=MpDbVjHDofQ2oZUFJOxTUQXMzoAI9nIqVbxpZJ/1k+81ptAyNeGNU8UhYrl86exXxBJEuvTV24xB5Pf3vYeOLQnjrzqFUVI3xC012vXCM8MR0F9AqwNGNmpaVTmVtVe4MrVrFDNKf+gIaw5E0PFJuZzE9P2HmQKPmSBrw7MJKkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XXqWvVWv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XXqWvVWv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9BE6C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 16:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776443853;
	bh=pCx52eVBJUJvgoY0mZ21tgDt8HqwQeAKKxgkMHqafaE=;
	h=To:Subject:From:Date:From;
	b=XXqWvVWvO0rmRQq49DD3U3aeNqGCBORWpOZ7Fd3J2OVp0llgC40Z8fEI5Kj1HyiFK
	 meVwgSTBlzfeQbOEbEPcDAXV+cHeX0JO11OkIudc1M8ANs6gZk+743Wm/sxKJFCHnR
	 VsKEI1RG2wKvnvOqnkqL8bP6XtnQnR0gItAm/vq8PVLKQI6JoKukCiKZQXM9GDbr9A
	 Vz5ghy5LRw+RVBoZC4l2w0KTCawDpVm5C5wfcvskOUBr+a9smGyH+Jv9Hw+C8Ldff7
	 nOno44ix6DyA8uUkCRG18mC66iBN9gd6u2LigZbfLk3ohFEfEP9J4402uRg/N8PvdZ
	 dRY6/TW0Ruz5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC2EF436BB
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 16:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177644385368.21122.10944064957553126158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78da949c9b90eff036bdb2cd31e57a2f41edd0e8b8fce3df9c54d6b56832c9c2
Date: Fri, 17 Apr 2026 16:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776443853
