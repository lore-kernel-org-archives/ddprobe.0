Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA091E52D
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726663554; cv=none; b=P+Hn5oLQBGa7rrLPH4fh1BOf+Otk0wQ3r+3MmSkfNY+I0NItwH8E1e1KiIXUkJgAkMjxV4POBzNzg/+R7AB8ii3DX0OV40mTi36QJeNO4xsSv4oldN7L+rBgRWVcF+gvx4z2zdUbTVbGdiRa3kir+y+NHTIWgxHXYHGdaFib+us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726663554; c=relaxed/simple;
	bh=6Jq0gge66/eO96QTzwEu9tLzSolkZhaE5d5SQ2CHmuE=;
	h=To:Subject:From:Message-Id:Date; b=UGsORUTDCYTdNuuwbzavq1CUnijJXerbE88Urak4wbeBQ94XshZydImwtgfpoyD4TYKoqiEr8VgQlMwsAa6jCxix2qDyZNs/rc18wxfm9U2ZY1m7d4zoPEUI8pbh7L6lt4rOXp1PYE9G4YJFpT6UskMxaVl+p2e2HBo2bT9a78o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nYGtqjJI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nYGtqjJI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3099C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726663553;
	bh=6Jq0gge66/eO96QTzwEu9tLzSolkZhaE5d5SQ2CHmuE=;
	h=To:Subject:From:Date:From;
	b=nYGtqjJIy8lflKPsUFg5EGSgYBtOEFv+POde23Qonnexr1s7+peR6QNnf2XGgR71m
	 E0eQ/XVhAbNYAWuzIll5uuOhFecaX2KEwsG0VwnyRcmGhCpE3vnhe/dE849lBTZ2Mf
	 tPUNofwJA9CdUGOFfFcXAgYfrVePLwIMS6OolGn5XZm7MGkFe7aCXfN6wQIwB7wYop
	 jigS+MTFvrJn7Khai1XvWbg1YF72xjWcrKiuG6xN+1bv0rojV3PP1hgYnj8wawhO8O
	 UP5RJBCtjuLrXluOjtpf+MUFIzS+heL0a6cVKGr0zwE6mDUKZ/kKfyTnriDetb3LRW
	 TT9XUzBeAr2Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E379CCD1A0
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172666355360.25408.9599546528654850454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c48cf2d4950dc802ecf451de3f9d00dc9040235deaa966c5fbd0501734e654f3
Date: Wed, 18 Sep 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726663553
